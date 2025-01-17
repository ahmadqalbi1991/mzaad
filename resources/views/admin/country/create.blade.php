@extends('admin.template.layout')

@section('content')
    <div class="card mb-5">
        <div class="card-body">
            
            <form method="post" id="admin-form" action="{{ url('admin/country') }}" enctype="multipart/form-data" data-parsley-validate="true">
                    <input type="hidden" name="id" value="{{ $id }}">
                    @csrf()
                    <div class="row">
                        <div class="col-md-6 mb-2">
                            <div class="form-group">
                                <label>Country Name<b class="text-danger">*</b></label>
                                <input type="text" name="name" class="form-control" required
                                    data-parsley-required-message="Enter Country Name" value="{{ $name }}">
                            </div>
                        </div>
                        <div class="col-md-6 mb-2">
                            <div class="form-group">
                                <label>Country Code<b class="text-danger">*</b></label>
                                <input type="text" name="prefix" class="form-control" required
                                    data-parsley-required-message="Enter Country Code" maxlength="5" value="{{ $prefix }}">
                            </div>
                        </div>
                        <div class="col-md-6 mb-2">
                            <div class="form-group">
                                <label>Dial Code<b class="text-danger">*</b></label>
                                <input type="text" name="dial_code" class="form-control" maxlength="4" required
                                    data-parsley-required-message="Enter Dial Code" data-parsley-type="digits"
                                    value="{{ $dial_code }}">
                            </div>
                        </div>
                        <div class="col-md-6 mb-2">
                            <div class="form-group">
                                <label>Status</label>
                                <select name="active" class="form-control">
                                    <option <?= $active == 1 ? 'selected' : '' ?> value="1">Active</option>
                                    <option <?= $active == 0 ? 'selected' : '' ?> value="0">Inactive</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 mb-2">
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </div>
                    
                    
                    

                    
                    
            </form>

            <div class="col-xs-12 col-sm-6">

            </div>
        </div>
    </div>
@stop

@section('script')
    <script>
        App.initFormView();
        $('body').off('submit', '#admin-form');
        $('body').on('submit', '#admin-form', function(e) {
            e.preventDefault();
            var $form = $(this);
            var formData = new FormData(this);

            App.loading(true);
            $form.find('button[type="submit"]')
                .text('Saving')
                .attr('disabled', true);

            $.ajax({
                type: "POST",
                enctype: 'multipart/form-data',
                url: $form.attr('action'),
                data: formData,
                processData: false,
                contentType: false,
                cache: false,
                dataType: 'json',
                timeout: 600000,
                success: function(res) {
                    App.loading(false);

                    if (res['status'] == 0) {
                        if (typeof res['errors'] !== 'undefined') {
                            var error_def = $.Deferred();
                            var error_index = 0;
                            jQuery.each(res['errors'], function(e_field, e_message) {
                                if (e_message != '') {
                                    $('[name="' + e_field + '"]').eq(0).addClass('is-invalid');
                                    $('<div class="invalid-feedback">' + e_message + '</div>')
                                        .insertAfter($('[name="' + e_field + '"]').eq(0));
                                    if (error_index == 0) {
                                        error_def.resolve();
                                    }
                                    error_index++;
                                }
                            });
                            error_def.done(function() {
                                var error = $form.find('.is-invalid').eq(0);
                                $('html, body').animate({
                                    scrollTop: (error.offset().top - 100),
                                }, 500);
                            });
                        } else {
                            var m = res['message'];
                            App.alert(m, 'Oops!');
                        }
                    } else {
                        App.alert(res['message']);
                        setTimeout(function() {
                            window.location.href = App.siteUrl('/admin/country');
                        }, 1500);
                    }

                    $form.find('button[type="submit"]')
                        .text('Save')
                        .attr('disabled', false);
                },
                error: function(e) {
                    App.loading(false);
                    $form.find('button[type="submit"]')
                        .text('Save')
                        .attr('disabled', false);
                    App.alert(e.responseText, 'Oops!');
                }
            });
        });
    </script>
@stop

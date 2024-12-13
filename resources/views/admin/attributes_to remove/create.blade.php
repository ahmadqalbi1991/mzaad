@extends('admin.template.layout')
@section('header')
   
@stop
@section('content')
    <div class="card mb-5">
        <div class="card-body">
            <div class="col-xs-12 col-sm-6">
                <form method="post" id="admin-form" action="{{ url('admin/save_attributes') }}" enctype="multipart/form-data"
                    data-parsley-validate="true">
                    <input type="hidden" name="id" id="cid" value="{{ $id }}">
                    @csrf()
                    <div class="form-group">
                        <label>Name<b class="text-danger">*</b></label>
                        <input type="text" name="name" class="form-control" required
                            data-parsley-required-message="Enter Name" value="{{ $attribute_name }}">
                    </div>

                    

                    <div class="form-group">
                        <label>Industry Type</label>
                        <select name="industry_type" class="form-control" required
                        data-parsley-required-message="Select Industry Type">
                            <option value="">Select</option>
                            @foreach ($industry_types as $it)
                                <option {{ $it->id == $industry_type ? 'selected' : '' }} value="{{ $it->id }}">
                                    {{ $it->name }}</option>
                            @endforeach;
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Attribute Type</label>
                        <select name="attribute_type" class="form-control" required
                        data-parsley-required-message="Select Attribute Type">
                            <option value="">Select</option>
                            @foreach ($attribute_types as $at)
                                <option {{ $at->id == $attribute_type ? 'selected' : '' }} value="{{ $at->id }}">
                                    {{ $at->attribute_type_name }}</option>
                            @endforeach;
                        </select>
                    </div>
                    

                    
                    <div class="form-group">
                        <label>Status</label>
                        <select name="active" class="form-control">
                            <option <?= $active == 1 ? 'selected' : '' ?> value="1">Active</option>
                            <option <?= $active == 0 ? 'selected' : '' ?> value="0">Inactive</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>
            <div class="col-xs-12 col-sm-6">
            </div>
        </div>
    </div>
@stop
@section('script')
    <script>
        App.initFormView();
        // $(document).ready(function() {
        //     if (!$("#cid").val()) {
        //         $(".b_img_div").removeClass("d-none");
        //     }
        // });
        // $(".parent_cat").change(function() {
        //     if (!$(this).val()) {
        //         $(".b_img_div").removeClass("d-none");
        //     } else {
        //         $(".b_img_div").addClass("d-none");
        //     }
        // });
        $('body').off('submit', '#admin-form');
        $('body').on('submit', '#admin-form', function(e) {
            e.preventDefault();
            var $form = $(this);
            var formData = new FormData(this);

            App.loading(true);
            $form.find('button[type="submit"]')
                .text('Saving')
                .attr('disabled', true);

            var parent_tree = $('option:selected', "#parent_id").attr('data-tree');
            formData.append("parent_tree", parent_tree);

            $.ajax({
                type: "POST",
                enctype: 'multipart/form-data',
                url: $form.attr('action'),
                data: formData,
                processData: false,
                contentType: false,
                cache: false,
                timeout: 600000,
                dataType: 'json',
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
                            var m = res['message'] ||
                            'Unable to save attributes. Please try again later.';
                            App.alert(m, 'Oops!');
                        }
                    } else {
                        App.alert(res['message'], 'Success!');
                                setTimeout(function(){
                                    window.location.href = App.siteUrl('/admin/attributes');
                                },1500);
                       
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

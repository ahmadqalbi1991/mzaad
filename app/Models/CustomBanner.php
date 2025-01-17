<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CustomBanner extends Model
{
    use HasFactory;
    public $appends = ['banner_image_url'];
    public function getBannerImageUrlAttribute(){
        return url(config('global.upload_path').config('global.banner_image_upload_dir').$this->banner_image);
    }
    public function getLogoAttribute($value)
    {
        if($value)
        {
            return asset($value);
        }
        else
        {
            return asset('uploads/company/17395e3aa87745c8b488cf2d722d824c.jpg');
        }
    }
    public static function get_banners_list($where=[],$params=[]){
        $banners = CustomBanner::where($where)->orderBy('created_at','desc');
            
        if( !empty($params) ){
            if(isset($params['search_key']) && $params['search_key'] != ''){
                $banners->Where('banner_title','ilike','%'.$params['search_key'].'%');
            }
            if(isset($params['banner_type']) && $params['banner_type'] != ''){
                $banners->Where('banner_type',$params['banner_type']);
            }
        }
        return $banners;
    } 
}

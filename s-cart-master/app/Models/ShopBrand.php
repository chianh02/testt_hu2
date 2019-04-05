<?php

namespace App\Models;

use Helper;
use Illuminate\Database\Eloquent\Model;

class ShopBrand extends Model
{
    public $timestamps = false;
    public $table      = 'shop_brand';

    public function products()
    {
        return $this->hasMany('App\Models\ShopProduct', 'brand_id', 'id');
    }
    public static function getBrands()
    {
        return self::where('status', 1)->orderBy('id', 'desc')->orderBy('sort', 'desc')->get();
    }

    /**
     * [getUrl description]
     * @return [type] [description]
     */
    public function getUrl()
    {
        return url('brand/' . Helper::strToUrl($this->name) . '_' . $this->id . '.html');
    }

    /**
     * [getImage description]
     * @return [type] [description]
     */
    public function getImage()
    {
        $path_file = config('filesystems.disks.path_file', '');
        return $path_file . '/' . $this->image;

    }
}

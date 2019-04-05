<?php
#app/Models/CmsContent.php
namespace App\Models;

use App\Models\CmsContentDescription;
use App\Models\Language;
use Illuminate\Database\Eloquent\Model;

class CmsContent extends Model
{
    public $table      = 'cms_conten';
    protected $appends = [
        'title',
        'keyword',
        'description',
        'content',
    ];
    public function local()
    {
        $lang = Language::pluck('id', 'code')->all();
        return CmsContentDescription::where('cms_content_id', $this->id)
            ->where('lang_id', $lang[app()->getLocale()])
            ->first();
    }

    public function category()
    {
        return $this->belongsTo('App\Models\CmsCategory', 'category_id', 'id');
    }

    public function images()
    {
        return $this->hasMany('App\Models\CmsImage', 'content_id', 'id');
    }

/**
 * [getThumb description]
 * @return [type] [description]
 */
    public function getThumb()
    {
        $path_file = config('filesystems.disks.path_file', '');
        if (!file_exists($path_file . '/thumb/' . $this->image)) {
            return $path_file . '/' . $this->image;
        } else {
            return $path_file . '/thumb/' . $this->image;
        }
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

/**
 * [getUrl description]
 * @return [type] [description]
 */
    public function getUrl()
    {
        return url('cms/' . \Helper::strToUrl($this->category->title) . '/' . \Helper::strToUrl($this->title) . '_' . $this->id . '.html');
    }

    //Fields language
    public function getTitle()
    {
        return empty($this->local()->title) ? '' : $this->local()->title;
    }
    public function getKeyword()
    {
        return empty($this->local()->keyword) ? '' : $this->local()->keyword;
    }
    public function getDescription()
    {
        return empty($this->local()->description) ? '' : $this->local()->description;
    }
    public function getContent()
    {
        return empty($this->local()->content) ? '' : $this->local()->content;
    }
//Attributes
    public function getTitleAttribute()
    {
        return $this->getTitle();
    }
    public function getKeywordAttribute()
    {
        return $this->getKeyword();

    }
    public function getDescriptionAttribute()
    {
        return $this->getDescription();

    }

    public function getContentAttribute()
    {
        return $this->getContent();

    }

}

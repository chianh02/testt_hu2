<?php
#app/Models/CmsPage.php
namespace App\Models;

use App\Models\CmsPageDescription;
use App\Models\Language;
use Illuminate\Database\Eloquent\Model;

class CmsPage extends Model
{
    public $timestamps = false;
    public $table      = 'cms_page';
    protected $appends = [
        'title',
        'keyword',
        'description',
        'content',
    ];
    public function local()
    {
        $lang = Language::pluck('id', 'code')->all();
        return CmsPageDescription::where('cms_page_id', $this->id)
            ->where('lang_id', $lang[app()->getLocale()])
            ->first();
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

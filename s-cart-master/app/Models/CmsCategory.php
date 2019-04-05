<?php
#app/Models/CmsCategory.php
namespace App\Models;

use App\Models\CmsCategoryDescription;
use App\Models\Language;
use Illuminate\Database\Eloquent\Model;

class CmsCategory extends Model
{
    public $timestamps = false;
    public $table      = 'cms_category';
    protected $appends = [
        'title',
        'keyword',
        'description',
    ];
    public function local()
    {
        $lang = Language::pluck('id', 'code')->all();
        return CmsCategoryDescription::where('cms_category_id', $this->id)
            ->where('lang_id', $lang[app()->getLocale()])
            ->first();
    }

    public function contents()
    {
        return $this->hasMany('App\Models\CmsContent', 'category_id', 'id');
    }

    public function getTreeCategory($root = 0)
    {
        $list   = [];
        $result = $this->select('id', 'parent')
            ->where('parent', $root)
            ->get();
        foreach ($result as $value) {
            $list[$value['id']] = $value->getTitle();
            if ($this->checkChild($value['id']) > 0) {
                $this->getTreeCategoryTmp($value['id'], $list);
            }
        }
        return $list;
    }

    public function getTreeCategoryTmp($id, &$list, $st = '--')
    {
        $result = $this->select('id', 'parent')
            ->where('parent', $id)
            ->get();
        foreach ($result as $value) {
            $list[$value['id']] = $st . ' ' . $value->getTitle();
            $this->getTreeCategoryTmp($value['id'], $list, $st . '--');
        }

    }

    public function checkChild($id)
    {
        return $this->where('parent', $id)->count();
    }

    public function arrChild($id)
    {
        return $this->where('parent', $id)->pluck('id')->all();
    }

/**
 * Get category parent
 * @return [type]     [description]
 */
    public function getParent()
    {
        return $this->find($this->parent);

    }
/**
 * Get category child
 * @param  [type] $id [description]
 * @return [type]     [description]
 */
    public function getCateChild($id)
    {
        return $this->with('contens')->where('parent', $id)->get();
    }
/**
 * Get all products in category, include child category
 * @param  [type] $id    [description]
 * @param  [type] $limit [description]
 * @return [type]        [description]
 */
    public function getContentsToCategory($id, $limit = null, $opt = null)
    {
        $arrChild   = $this->arrChild($id);
        $arrChild[] = $id;
        $query      = (new CmsContent)->where('status', 1)->whereIn('category_id', $arrChild)->orderBy('sort', 'desc')->orderBy('id', 'desc');
        if (!(int) $limit) {
            return $query->get();
        } else
        if ($opt == 'paginate') {
            return $query->paginate((int) $limit);
        } else {
            return $query->limit($limit)->get();
        }

    }
/**
 * [getCategories description]
 * @param  [type] $parent [description]
 * @return [type]         [description]
 */
    public static function getCategories($parent)
    {
        return self::where('status', 1)->where('parent', $parent)->orderBy('sort', 'desc')->orderBy('id', 'desc')->get();
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

    public function getUrl()
    {
        return url('cms/' . \Helper::strToUrl($this->title) . '_' . $this->id . '.html');
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

}

<?php
#app/Models/CmsPageDescription.php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CmsPageDescription extends Model
{
    protected $primaryKey = null;
    public $timestamps    = false;
    public $table         = 'cms_page_description';
    protected $fillable   = ['lang_id', 'title', 'description', 'keyword', 'cms_page_id', 'content'];
}

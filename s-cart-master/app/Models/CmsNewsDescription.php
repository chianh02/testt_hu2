<?php
#app/Models/CmsNewsDescription.php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CmsNewsDescription extends Model
{
    protected $primaryKey = null;
    public $timestamps    = false;
    public $table         = 'cms_news_description';
    protected $fillable   = ['lang_id', 'title', 'description', 'keyword', 'cms_news_id', 'content'];
}

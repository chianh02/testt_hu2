<?php
#app/Models/CmsContentDescription.php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CmsContentDescription extends Model
{
    protected $primaryKey = null;
    public $timestamps    = false;
    public $table         = 'cms_content_description';
    protected $fillable   = ['lang_id', 'title', 'description', 'keyword', 'cms_content_id', 'content'];
}

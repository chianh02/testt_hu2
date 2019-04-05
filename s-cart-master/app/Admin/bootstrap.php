<?php
/**
 * Laravel-admin - admin builder based on Laravel.
 * @author z-song <https://github.com/z-song>
 *
 * Bootstraper for Admin.
 *
 * Here you can remove builtin form field:
 * Encore\Admin\Form::forget(['map', 'editor']);
 *
 * Or extend custom form field:
 * Encore\Admin\Form::extend('php', PHPEditor::class);
 *
 * Or require js and css assets:
 * Admin::css('/packages/prettydocs/css/styles.css');
 * Admin::js('/packages/prettydocs/js/main.js');
 *
 */
Encore\Admin\Form::forget(['map', 'editor']);
//custome template admin
app('view')->prependNamespace('admin', resource_path('views/admin'));
use App\Admin\Extensions\Column\Expands;
use App\Admin\Extensions\Form\CKEditor;
use App\Models\ConfigGlobal;
use App\Models\Language;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid\Column;

Column::extend('expand', Expands::class);

Form::extend('ckeditor', CKEditor::class);
//end Ckeditor
Admin::navbar(function (\Encore\Admin\Widgets\Navbar $navbar) {
    $configs_global = ConfigGlobal::first();
    $languages      = Language::where('status', 1)->get()->keyBy('code');
    $path_file      = config('filesystems.disks.path_file');
    $htmlLang       = '';
    $formLang       = '';

    foreach ($languages as $key => $language) {
        $formLang .= '<form id="form-lang-' . $key . '" action="' . url(config('admin.route.prefix') . '/locale/' . $key) . '" method="POST" style="display: none;">' . csrf_field() . '
</form>';
        $htmlLang .= '<li onClick="$(\'#form-lang-' . $key . '\').submit();"><img alt="' . $language['name'] . '" src="/' . $path_file . '/' . $language['icon'] . '" style="height: 25px;"></li>';
    }
    if (count($languages) > 1) {
        $navbar->left($formLang . '<div class="btn-group" style="margin:10px 0 0 20px;cursor:pointer;">
                <span  class="dropdown-toggle usa" data-toggle="dropdown">
                <img alt="' . $languages[$configs_global->locale]['name'] . '" src="/' . $path_file . '/' . $languages[$configs_global->locale]['icon'] . '" style="height: 25px;">
                  <span class="caret"></span>
                </span>
                <ul class="dropdown-menu">
                  ' . $htmlLang . '
                </ul>
              </div>');
    }

    $navbar->left(view('admin.search-bar'));

    $navbar->right('
<!--      <li class="dropdown notifications-menu">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
      <i class="fa fa-bell-o"></i>
      <span class="label label-warning">10</span>
    </a>
    <ul class="dropdown-menu">
      <li class="header">You have 10 notifications</li>
      <li>
        <ul class="menu">
          <li>
            <a href="#">
              <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the
              page and may cause design problems
            </a>
          </li>
          <li>
            <a href="#">
              <i class="fa fa-users text-red"></i> 5 new members joined
            </a>
          </li>

      <li>
            <a href="#">
              <i class="fa fa-shopping-cart text-green"></i> 25 sales made
            </a>
          </li>
          <li>
            <a href="#">
              <i class="fa fa-user text-red"></i> You changed your username
            </a>
          </li>
        </ul>
      </li>
      <li class="footer"><a href="#">View all</a></li>
    </ul>
    </li>
-->

    ');

});

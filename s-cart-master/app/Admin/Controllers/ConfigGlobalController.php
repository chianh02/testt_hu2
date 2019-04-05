<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\ConfigGlobal;
use App\Models\Language;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;

class ConfigGlobalController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header(trans('language.admin.info_global'));
            $content->description(' ');

            $content->body($this->grid());
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header(trans('language.admin.info_global'));
            $content->description(' ');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    // public function create()
    // {
    //     return Admin::content(function (Content $content) {

    //         $content->header('header');
    //         $content->description('description');

    //         $content->body($this->form());
    //     });
    // }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $arrTemplates = [];
        foreach (glob("scart_templates/*") as $value) {
            if (is_dir($value)) {
                $template                = explode('scart_templates/', $value)[1];
                $arrTemplates[$template] = $template;
            }
        }
        return Admin::grid(ConfigGlobal::class, function (Grid $grid) use ($arrTemplates) {

            $grid->html('&nbsp;');

            $grid->logo('Logo')->image('', 50);
            $grid->watermark('watermark')->image('', 50);
            $grid->template('Template')->editable('select', $arrTemplates);
            $grid->title('Title')->display(function ($text) {
                return '<div style="max-width:150px; overflow:auto;">' . $text . '</div>';
            });
            $grid->description(trans('language.admin.description'))->display(function ($text) {
                return '<div style="max-width:150px; overflow:auto;">' . $text . '</div>';
            });
            $grid->keyword('Keywords')->display(function ($text) {
                return '<div style="max-width:150px; overflow:auto;">' . $text . '</div>';
            });
            $grid->phone('Phone');
            // $grid->long_phone('Long phone')->display(function ($text) {
            //     return '<div style="max-width:150px; overflow:auto;">' . $text . '</div>';
            // });
            $grid->address('Address')->display(function ($text) {
                return '<div style="max-width:150px; overflow:auto;">' . $text . '</div>';
            });
            $grid->email('Email')->display(function ($text) {
                return '<div style="max-width:150px; overflow:auto;">' . $text . '</div>';
            });

            $grid->disableCreation();
            $grid->disableExport();
            $grid->disableRowSelector();
            $grid->disableFilter();
            $grid->disablePagination();
            $grid->actions(function ($actions) {
                $actions->disableView();
                $actions->disableDelete();
            });
            $grid->tools(function ($tools) {
                $tools->disableRefreshButton();
            });
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $arrTemplates = [];
        foreach (glob("scart_templates/*") as $value) {
            if (is_dir($value)) {
                $template                = explode('scart_templates/', $value)[1];
                $arrTemplates[$template] = $template;
            }
        }
        return Admin::form(ConfigGlobal::class, function (Form $form) use ($arrTemplates) {
            $languages = Language::pluck('name', 'code')->all();
            $form->image('logo', 'Logo')->removable();
            $form->image('watermark', 'watermark')->removable();
            $form->select('template', 'Template')->options($arrTemplates)->rules('required', ['required' => 'Please choose template']);
            $form->text('title', 'Title');
            $form->textarea('description', trans('language.admin.description'));
            $form->text('keyword', 'Keywords');
            $form->text('phone', 'Phone');
            // $form->text('long_phone', 'Long phone');
            $form->text('address', 'Address');
            $form->text('email', 'Email');
            $form->disableViewCheck();
            $form->disableEditingCheck();
            $form->tools(function (Form\Tools $tools) {
                $tools->disableView();
                $tools->disableDelete();
            });

        });
    }

    public function show($id)
    {
        return Admin::content(function (Content $content) use ($id) {
            $content->header('');
            $content->description('');
            $content->body(Admin::show(ShopCategory::findOrFail($id), function (Show $show) {
                $show->id('ID');
            }));
        });
    }

}

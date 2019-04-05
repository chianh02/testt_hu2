<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Config;
use App\Models\ShopOrderStatus;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Widgets\Box;
use Illuminate\Http\Request;

class ConfigInfoController extends Controller
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

            $content->header(trans('language.admin.config_control'));
            $content->description(' ');
            $content->body($this->grid());
            $content->row(function (Row $row) {
                $row->column(1 / 3, new Box(trans('language.admin.config_email'), $this->viewSMTPConfig()));
                $row->column(1 / 3, new Box(trans('language.admin.config_display'), $this->viewDisplayConfig()));
                $row->column(1 / 3, new Box(trans('language.admin.config_paypal'), $this->viewPaypalConfig()));
            });

        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    // public function edit($id)
    // {
    //     return Admin::content(function (Content $content) use ($id) {

    //         $content->header('header');
    //         $content->description('description');

    //         $content->body($this->form()->edit($id));
    //     });
    // }

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
        $grid = new Grid(new Config);
        $grid->detail(trans('language.admin.field_config'))->display(function ($detail) {
            return trans(htmlentities($detail));
        });
        $states = [
            '1' => ['value' => 1, 'text' => 'YES', 'color' => 'primary'],
            '0' => ['value' => 0, 'text' => 'NO', 'color' => 'default'],
        ];
        $grid->value(trans('language.admin.use_mode'))->switch($states);
        $grid->model()->where('code', 'config')->orderBy('sort', 'desc');
        $grid->disableCreation();
        $grid->disableExport();
        $grid->disableRowSelector();
        $grid->disableFilter();
        $grid->disableActions();
        $grid->disablePagination();
        $grid->tools(function ($tools) {
            $tools->disableRefreshButton();
        });
        $grid->paginate(100);
        return $grid;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Config::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('code', 'Code');
            $form->text('key', 'Key');
            $states = [
                '1' => ['value' => 1, 'text' => 'YES', 'color' => 'primary'],
                '0' => ['value' => 0, 'text' => 'NO', 'color' => 'default'],
            ];
            $form->switch('value', 'Value')->states($states);
            $form->disableViewCheck();
            $form->disableEditingCheck();
            $form->tools(function (Form\Tools $tools) {
                $tools->disableView();
            });
        });
    }

    public function updateConfigField(Request $request)
    {
        $data  = $request->all();
        $key   = $data['pk'];
        $field = $data['name'];
        $value = $data['value'];
        Config::where('key', $key)->update(['value' => $value]);

    }

    public function viewPaypalConfig()
    {
        $paypal = Config::where('code', 'payment_paypal')->orderBy('sort', 'desc')->get();
        if ($paypal === null) {
            return trans('language.no_data');
        }
        $fields = [];
        foreach ($paypal as $key => $field) {
            $data['title']    = $field->detail;
            $data['field']    = $field->key;
            $data['key']      = $field->key;
            $data['value']    = $field->value;
            $data['disabled'] = 0;
            $data['required'] = 0;
            if ($field->key == 'paypal_mode') {
                $data['type']   = 'select';
                $data['source'] = json_encode(
                    array(
                        ['value' => 'sandbox', 'text' => 'sandbox'],
                        ['value' => 'live', 'text' => 'live'],
                    )
                );
            } elseif ($field->key == 'paypal_status' || $field->key == 'paypal_log') {
                $data['type']   = 'select';
                $data['source'] = json_encode(
                    array(
                        ['value' => '0', 'text' => 'OFF'],
                        ['value' => '1', 'text' => 'ON'],
                    )
                );
            } elseif ($field->key == 'paypal_order_status_success') {
                $data['type']   = 'select';
                $data['source'] = json_encode(
                    ShopOrderStatus::mapValue()
                );
            } elseif ($field->key == 'paypal_order_status_faild') {
                $data['type']   = 'select';
                $data['source'] = json_encode(
                    ShopOrderStatus::mapValue()
                );
            } else {
                $data['type']   = 'text';
                $data['source'] = '';
            }
            $data['url'] = route('updateConfigField');
            $fields[]    = $data;
        }
        return view('admin.CustomEdit')->with([
            "datas" => $fields,
        ])->render();
    }

    public function viewSMTPConfig()
    {
        $paypal = Config::where('code', 'smtp')->orderBy('sort', 'desc')->get();
        if ($paypal === null) {
            return trans('language.no_data');
        }
        $fields = [];
        foreach ($paypal as $key => $field) {
            $data['title']    = $field->detail;
            $data['field']    = $field->key;
            $data['key']      = $field->key;
            $data['value']    = $field->value;
            $data['disabled'] = 0;
            $data['required'] = 0;
            $data['type']     = 'text';
            $data['source']   = '';
            if ($field->key == 'smtp_mode') {
                $data['type']   = 'select';
                $data['source'] = json_encode(
                    array(
                        ['value' => '0', 'text' => 'Not use'],
                        ['value' => '1', 'text' => 'SMTP'],
                    )
                );
            } elseif ($field->key == 'smtp_port') {
                $data['type'] = 'number';
            } elseif ($field->key == 'smtp_security') {
                $data['type']   = 'select';
                $data['source'] = json_encode(
                    array(
                        ['value' => 'tls', 'text' => 'TLS'],
                        ['value' => 'ssl', 'text' => 'SSL'],
                    )
                );
            }
            $data['url'] = route('updateConfigField');
            $fields[]    = $data;
        }
        return view('admin.CustomEdit')->with([
            "datas" => $fields,
        ])->render();
    }

    public function viewDisplayConfig()
    {
        $paypal = Config::where('code', 'display')->orderBy('sort', 'desc')->get();
        if ($paypal === null) {
            return trans('language.no_data');
        }
        $fields = [];
        foreach ($paypal as $key => $field) {
            $data['title']    = $field->detail;
            $data['field']    = $field->key;
            $data['key']      = $field->key;
            $data['value']    = $field->value;
            $data['disabled'] = 0;
            $data['required'] = 0;
            $data['source']   = '';
            $data['type']     = 'number';
            $data['url']      = route('updateConfigField');
            $fields[]         = $data;
        }
        return view('admin.CustomEdit')->with([
            "datas" => $fields,
        ])->render();
    }

}

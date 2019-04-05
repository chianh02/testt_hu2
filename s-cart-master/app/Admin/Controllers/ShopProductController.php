<?php
#app/Admin/Controller/ShopProductController.php
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Config;
use App\Models\Language;
use App\Models\ShopBrand;
use App\Models\ShopCategory;
use App\Models\ShopProduct;
use App\Models\ShopProductDescription;
use App\Models\ShopVendor;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Illuminate\Http\Request;

class ShopProductController extends Controller
{
    use HasResourceActions;
    public $arrType = ['0' => 'Default', '1' => 'New'];

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {
            $content->header(trans('language.admin.product_manager'));
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

            $content->header(trans('language.admin.product_manager'));
            $content->description(' ');

            $content->body($this->form($id)->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header(trans('language.admin.product_manager'));
            $content->description(' ');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(ShopProduct::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->image(trans('language.admin.image'))->image('', 50);
            $grid->name(trans('language.product.product_name'))->sortable();
            $grid->category()->name(trans('language.category'));
            $grid->cost(trans('language.product.price_cost'))->display(function ($price) {
                return number_format($price);
            });
            $grid->price(trans('language.product.price'))->display(function ($price) {
                return number_format($price);
            });
            $arrType = $this->arrType;
            $grid->type(trans('language.product.product_type'))->display(function ($type) use ($arrType) {
                $style = ($type == 1) ? 'class="label label-success"' : (($type == 2) ? '  class="label label-danger"' : 'class="label label-default"');
                return '<span ' . $style . '>' . $arrType[$type] . '</span>';
            });
            $grid->status(trans('language.admin.status'))->switch();
            $grid->created_at(trans('language.admin.created_at'));
            $grid->model()->orderBy('id', 'desc');
            $grid->disableExport();
            $grid->actions(function ($actions) {
                $actions->disableView();
            });

            $grid->tools(function ($tools) {
                $tools->append('<div class="pull-right">
<div class="btn-group pull-right" style="margin-right: 10px">
    <a href="/' . config('admin.route.prefix') . '/process/productImport" class="btn btn-sm btn-success" title="New">
        <i class="fa fa-save"></i><span class="hidden-xs">&nbsp;&nbsp;&nbsp;' . trans('language.product.import_multi') . '</span>
    </a>
</div>
        </div>');
            });

        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form($id = null)
    {

        return Admin::form(ShopProduct::class, function (Form $form) use ($id) {
            $languages = Language::where('status', 1)->get();
            $form->tab(trans('language.product.product_info'), function ($form) use ($languages) {
//Language
                $arrParameters = request()->route()->parameters();
                $idCheck       = (int) end($arrParameters);

                $arrFields = array();
                foreach ($languages as $key => $language) {
                    if ($idCheck) {
                        $langDescriptions = ShopProductDescription::where('product_id', $idCheck)->where('lang_id', $language->id)->first();
                    }
                    $form->html('<b>' . $language->name . '</b> <img style="height:25px" src="/' . config('filesystems.disks.path_file') . '/' . $language->icon . '">');
                    $form->text($language->code . '__name', trans('language.product.product_name'))->rules('required', ['required' => trans('validation.required')])->default(!empty($langDescriptions->name) ? $langDescriptions->name : null);
                    $form->text($language->code . '__keyword', trans('language.admin.keyword'))->default(!empty($langDescriptions->keyword) ? $langDescriptions->keyword : null);
                    $form->textarea($language->code . '__description', trans('language.admin.description'))->rules('max:300', ['max' => trans('validation.max')])->default(!empty($langDescriptions->description) ? $langDescriptions->description : null);
                    $form->ckeditor($language->code . '__content', trans('language.admin.content'))->default(!empty($langDescriptions->content) ? $langDescriptions->content : null)->rules('required');
                    $arrFields[] = $language->code . '__name';
                    $arrFields[] = $language->code . '__keyword';
                    $arrFields[] = $language->code . '__description';
                    $arrFields[] = $language->code . '__content';

                    $form->divide();
                }
                $form->ignore($arrFields);
//end language

                $arrBrand  = ShopBrand::pluck('name', 'id')->all();
                $arrBrand  = ['0' => '-- ' . trans('language.brands') . ' --'] + $arrBrand;
                $arrVendor = ShopVendor::pluck('name', 'id')->all();
                $arrVendor = ['0' => '-- ' . trans('language.vendor') . ' --'] + $arrVendor;
                $arrCate   = (new ShopCategory)->getTreeCategory();
                $form->select('category_id', trans('language.admin.shop_category'))->options($arrCate)
                    ->rules('required');
                $form->image('image', trans('language.admin.image'))->uniqueName()->move('product');
                $form->currency('price', trans('language.product.price'))->symbol('VND')->options(['digits' => 0]);
                $form->currency('cost', trans('language.product.price_cost'))->symbol('VND')->options(['digits' => 0]);
                $form->number('stock', trans('language.product.stock'));
                $form->text('sku', trans('language.admin.sku'))
                    ->rules(function ($form) {
                        return 'required|regex:/(^([0-9A-Za-z\-]+)$)/|unique:shop_product,sku,' . $form->model()->id . ',id';
                    }, ['regex' => trans('language.product.sku_validate')])
                    ->placeholder('Ex: ABKOOT01,ABKOOT02,...');
                $form->select('brand_id', trans('language.brands'))->options($arrBrand)->default('0')
                    ->rules('required');
                $form->select('vendor_id', trans('language.vendor'))->options($arrVendor)->default('0')
                    ->rules('required');
                $form->switch('status', trans('language.admin.status'));
                $form->number('sort', trans('language.admin.sort'));
                $form->divide();
                $form->radio('type', trans('language.product.product_type'))->options($this->arrType)->default('0');
                $form->datetime('date_available', trans('language.date_available'))->help(trans('language.default_available'));

            })->tab(trans('language.admin.sub_image'), function ($form) {
                $form->hasMany('images', ' ', function (Form\NestedForm $form) {
                    $form->image('image', trans('language.admin.sub_image'))->uniqueName()->move('product_slide');
                });

            });

            $arrData = array();
            $form->saving(function (Form $form) use ($languages, &$arrData) {
                //Lang
                foreach ($languages as $key => $language) {
                    $arrData[$language->code]['name']        = request($language->code . '__name');
                    $arrData[$language->code]['keyword']     = request($language->code . '__keyword');
                    $arrData[$language->code]['description'] = request($language->code . '__description');
                    $arrData[$language->code]['content']     = request($language->code . '__content');

                }
                //end lang
            });

            //saved
            $form->saved(function (Form $form) use ($languages, &$arrData) {
                $id = $form->model()->id;
                //Lang
                foreach ($languages as $key => $language) {
                    if (array_filter($arrData[$language->code], function ($v, $k) {
                        return $v != null;
                    }, ARRAY_FILTER_USE_BOTH)) {
                        $arrData[$language->code]['product_id'] = $id;
                        $arrData[$language->code]['lang_id']    = $language->id;
                        ShopProductDescription::where('lang_id', $arrData[$language->code]['lang_id'])->where('product_id', $arrData[$language->code]['product_id'])->delete();
                        ShopProductDescription::insert($arrData[$language->code]);
                    }
                }
                //end lang
                $config          = \App\Models\Config::pluck('value', 'key')->all();
                $product         = ShopProduct::find($id);
                $file_path_admin = config('filesystems.path_file.admin.root');
                try {
                    if (!file_exists($file_path_admin . '/thumb/' . $product->image)) {
                        if (!empty($config['watermark'])) {
                            \Image::make($file_path_admin . '/' . $product->image)->insert(public_path('watermark.png'), 'bottom-right', 10, 10)->save($file_path_admin . '/' . $product->image);
                        }
                        //thumbnail
                        $image_thumb = \Image::make($file_path_admin . '/' . $product->image);
                        $image_thumb->resize(250, null, function ($constraint) {
                            $constraint->aspectRatio();
                        });
                        $image_thumb->save($file_path_admin . '/thumb/' . $product->image);
                        //end thumb
                    }
                    if (($product->images)) {
                        foreach ($product->images as $key => $image) {
                            if (!file_exists($file_path_admin . '/thumb/' . $image->image)) {
                                if (!empty($config['watermark'])) {
                                    \Image::make($file_path_admin . '/' . $image->image)->insert(public_path('watermark.png'), 'bottom-right', 10, 10)->save($file_path_admin . '/' . $image->image);
                                }
                                //thumbnail
                                $image_thumb = \Image::make($file_path_admin . '/' . $image->image);
                                $image_thumb->resize(250, null, function ($constraint) {
                                    $constraint->aspectRatio();
                                });
                                $image_thumb->save($file_path_admin . '/thumb/' . $image->image);
                                //end thumb
                            }
                        }
                    }

                    if (($product->options)) {
                        foreach ($product->options as $key => $image) {
                            if (!file_exists($file_path_admin . '/thumb/' . $image->opt_image)) {
                                if (!empty($config['watermark'])) {
                                    \Image::make($file_path_admin . '/' . $image->opt_image)->insert(public_path('watermark.png'), 'bottom-right', 10, 10)->save($file_path_admin . '/' . $image->opt_image);
                                }
                                //thumbnail
                                $image_thumb = \Image::make($file_path_admin . '/' . $image->opt_image);
                                $image_thumb->resize(250, null, function ($constraint) {
                                    $constraint->aspectRatio();
                                });
                                $image_thumb->save($file_path_admin . '/thumb/' . $image->opt_image);
                                //end thumb
                            }
                        }
                    }

                } catch (\Exception $e) {
                    echo $e->getMessage();
                }

            });
            $form->disableViewCheck();
            $form->disableEditingCheck();
            $form->tools(function (Form\Tools $tools) {
                $tools->disableView();
            });
        });

    }

    public function show($id)
    {
        return Admin::content(function (Content $content) use ($id) {
            $content->header('');
            $content->description('');
            $content->body(Admin::show(ShopProduct::findOrFail($id), function (Show $show) {
                $show->id('ID');
            }));
        });
    }
}

<?php
#app/Http/Controller/GeneralController.php
namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use App\Models\CmsNews;
use App\Models\CmsPage;
use App\Models\Config;
use App\Models\ConfigGlobal;
use App\Models\ConfigLayout;
use App\Models\Language;
use App\Models\ShopBrand;
use App\Models\ShopCategory;
use Illuminate\Http\Request;
use View;

class GeneralController extends Controller
{
    public $configs;
    public $configs_global;
    public $theme;
    public $theme_asset;
    public $path_file;
    public $logo;
    public $brands;
    public $categories;
    public $news;
    public $languages;

    public function __construct()
    {
        //=======Config====
        //Config for  SMTP
        $configs        = Config::pluck('value', 'key')->all();
        $configs_global = ConfigGlobal::first();
        // config(['app.locale' => empty($configs_global['locale']) ? config('app.locale') : $configs_global['locale']]);
        config(['app.name' => $configs_global['title']]);
        config(['mail.driver' => ($configs['smtp_mode']) ? 'smtp' : 'sendmail']);
        config(['mail.host' => empty($configs['smtp_host']) ? env('MAIL_HOST', '') : $configs['smtp_host']]);
        config(['mail.port' => empty($configs['smtp_port']) ? env('MAIL_PORT', '') : $configs['smtp_port']]);
        config(['mail.encryption' => empty($configs['smtp_security']) ? env('MAIL_ENCRYPTION', '') : $configs['smtp_security']]);
        config(['mail.username' => empty($configs['smtp_user']) ? env('MAIL_USERNAME', '') : $configs['smtp_user']]);
        config(['mail.password' => empty($configs['smtp_password']) ? env('MAIL_PASSWORD', '') : $configs['smtp_password']]);
        config(['mail.from' =>
            ['address' => $configs_global['email'], 'name' => $configs_global['title']]]
        );
        //SMTP

        config(['admin.operation_log.enable' => empty($configs['admin_log']) ? false : $configs['admin_log']]);

        //============end config====

        //Auto switch link to https
        if (!empty($configs['site_ssl'])) {
            \URL::forceScheme('https');
            $this->app['request']->server->set('HTTPS', true);
        }
        //end

        $host = request()->getHost();
        config(['app.url' => 'http://' . $host]);
        $this->path_file      = config('filesystems.disks.path_file', '');
        $this->configs_global = $configs_global;
        $this->configs        = $configs;
        $this->theme_asset    = 'scart_templates/' . $this->configs_global['template'];
        $this->theme          = 'scart_templates.' . $this->configs_global['template'];
        $this->banners        = Banner::where('status', 1)->orderBy('sort', 'desc')->orderBy('id', 'desc')->get();
        $this->logo           = url($this->path_file . '/' . $this->configs_global['logo']);
        $this->brands         = ShopBrand::getBrands();
        $this->categories     = ShopCategory::getCategories(0);
        $this->news           = (new CmsNews)->getItemsNews($limit = 6, $opt = 'paginate');
        $this->languages      = Language::where('status', 1)->get()->keyBy('code');
//Share variable
        View::share('path_file', $this->path_file);
        View::share('banners', $this->banners);
        View::share('layouts', ConfigLayout::first());
        View::share('configs', $this->configs);
        View::share('configs_global', $this->configs_global);
        View::share('theme_asset', $this->theme_asset);
        View::share('theme', $this->theme);
        View::share('logo', $this->logo);

        View::share('categories', $this->categories);
        View::share('brands', $this->brands);

        View::share('news', $this->news);
        View::share('languages', $this->languages);
//
        $this->middleware('localization');
    }

/**
 * [getContact description]
 * @return [type] [description]
 */
    public function getContact()
    {
        $page = $this->getPage('contact');
        return view($this->theme . '.shop_contact',
            array(
                'title'       => trans('language.contact'),
                'description' => '',
                'page'        => $page,
                'keyword'     => $this->configs_global['keyword'],
                'og_image'    => $this->logo,
            )
        );
    }

/**
 * [postContact description]
 * @param  Request $request [description]
 * @return [type]           [description]
 */
    public function postContact(Request $request)
    {
        $validator = $request->validate([
            'name'    => 'required',
            'title'   => 'required',
            'content' => 'required',
            'email'   => 'required|email',
            'phone'   => 'required|regex:/^0[^0][0-9\-]{7,13}$/',
        ], [
            'name.required'    => trans('validation.required'),
            'content.required' => trans('validation.required'),
            'title.required'   => trans('validation.required'),
            'email.required'   => trans('validation.required'),
            'email.email'      => trans('validation.email'),
            'phone.required'   => trans('validation.required'),
            'phone.regex'      => trans('validation.phone'),
        ]);
        //Send email
        try {
            $data            = $request->all();
            $data['content'] = str_replace("\n", "<br>", $data['content']);
            Mail::send('vendor.mail.contact', $data, function ($message) use ($data) {
                $message->to($this->configs_global['email'], $this->configs_global['title']);
                $message->replyTo($data['email'], $data['name']);
                $message->subject($data['title']);
            });
            return redirect('contact.html')->with('message', trans('language.thank_contact'));

        } catch (\Exception $e) {
            echo $e->getMessage();
        } //

    }

/**
 * [pages description]
 * @param  [type] $key [description]
 * @return [type]      [description]
 */
    public function pages($key = null)
    {
        $page = $this->getPage($key);
        if ($page) {
            return view($this->theme . '.cms_page',
                array(
                    'title'       => $page->title,
                    'description' => '',
                    'keyword'     => $this->configs_global['keyword'],
                    'page'        => $page,
                ));
        } else {
            return view($this->theme . '.notfound',
                array(
                    'title'       => trans('language.not_found'),
                    'description' => '',
                    'keyword'     => $this->configs_global['keyword'],

                )
            );
        }
    }

/**
 * [getPage description]
 * @param  [type] $key [description]
 * @return [type]      [description]
 */
    public function getPage($key = null)
    {
        return CmsPage::where('uniquekey', $key)->where('status', 1)->first();
    }

}

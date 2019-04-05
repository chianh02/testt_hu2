<?php

namespace App\Http\Middleware;

use App\Models\ConfigGlobal;
use App\Models\Language;
use Closure;
use Session;

class Localization
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $configs_global = ConfigGlobal::first();
        config(['app.locale' => empty($configs_global['locale']) ? config('app.locale') : $configs_global['locale']]);
        if (!Session::has('locale')) {
            session(['locale' => config('app.locale')]);
        }
        $currentLocale = in_array(session('locale'), Language::pluck('code')->all()) ? session('locale') : config('app.locale');
        app()->setLocale($currentLocale);
        return $next($request);
    }
}

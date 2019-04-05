<?php

namespace App\Http\Middleware;

use App\Models\ConfigGlobal;
use Closure;

class LocalizationAdmin
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
        app()->setLocale($configs_global['locale']);
        return $next($request);
    }
}

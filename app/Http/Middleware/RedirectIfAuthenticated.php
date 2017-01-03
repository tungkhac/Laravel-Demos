<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        if (Auth::guard($guard)->check()) {
            $authority = config('constants.authority');
            if(Auth::user()->authority == $authority['admin']){
                return redirect('home');
            } elseif(Auth::user()->authority == $authority['client']){
                return redirect('home');
            }
        }
        return $next($request);
    }
}

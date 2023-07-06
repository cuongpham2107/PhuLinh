<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Auth;

class Language
{
  public function handle(Request $request, Closure $next)
  {
    if ( $request->segment(1) != 'admin') {
      App::setLocale(Session::get('lang') ?? Config::get('app.locale'));
      // dd(Session::get('lang'));
    } 

    return $next($request);
  }
}

<?php

namespace App\Http\Middleware;

use App\Models\ResponseDefaultModel;
use Illuminate\Auth\Middleware\Authenticate as Middleware;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */
    protected function redirectTo($request)
    {
        if (!$request->expectsJson()) {
            return route('login');
        }
    }

    // protected function unauthenticated($request, array $exception)
    // {
    //     //abort(401, 'Unauthenticated');
    //     return response()->json(new ResponseDefaultModel(false, 401,"Kosong", null),401);
    //     // if ($request->expectsJson()) {
    //     // return 'JANCOK';
    //     //response()->json(['error' => 'Unauthenticated.'], 401);
    //     // }

    //     // return redirect()->guest(route('login'));
    // }
}

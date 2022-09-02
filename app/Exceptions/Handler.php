<?php

namespace App\Exceptions;

use App\Models\ResponseDefaultModel;
use Exception;
use Throwable;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Mockery\Exception\InvalidOrderException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class Handler extends ExceptionHandler
{
    /**
     * A list of exception types with their corresponding custom log levels.
     *
     * @var array<class-string<\Throwable>, \Psr\Log\LogLevel::*>
     */
    protected $levels = [
        //
    ];

    /**
     * A list of the exception types that are not reported.
     *
     * @var array<int, class-string<\Throwable>>
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed to the session on validation exceptions.
     *
     * @var array<int, string>
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */
    public function register()
    {
        $this->reportable(function (Exception $e) {
            //
            return response()->json(new ResponseDefaultModel(false, 500,$e->getMessage(), null),500);
        });
        $this->renderable(function (NotFoundHttpException $e, $request) {
            if ($request->is('api/*')) {
                return response()->json(new ResponseDefaultModel(false, 404,"Not Found", null),404);
            }
        });
    }

    protected function unauthenticated($request, AuthenticationException $e)
    {
        // return "OK";
        // if ($request->is('api/*')) {
        //     return response()->json(new ResponseDefaultModel(false, 404,"HAHAHHA", null),404);
        // }
        return $request->expectsJson()
                    ? response()->json(new ResponseDefaultModel(false, 401,$e->getMessage(), null),401)
                    : redirect()->guest(route('login'));
    }
}

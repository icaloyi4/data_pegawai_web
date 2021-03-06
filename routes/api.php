<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\DepartmentController;
use App\Http\Controllers\PositionController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RegisterCompanyController;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('api')->get('register', [RegisterCompanyController::class, "register"])->name('register');
Route::post('register', [RegisterCompanyController::class, "register"])->name('register');
Route::post('login', [AuthController::class, "login"])->name('login');
Route::post('resetPassword', [AuthController::class, "resetPassword"])->name('resetPassword');
// Route::post('logout', [AuthController::class, "logout"]);
// Route::post('logout',[AuthController::class,"logout"]);

Route::middleware('auth:api')->group(function () {
    Route::post('logout', [AuthController::class, "logout"]);
    Route::post('departments/registerDepartment', [DepartmentController::class, "departmentPosition"]);
    Route::get('departments/{idDepartment}/getPositionById', [DepartmentController::class, "getPositionById"]);
    Route::apiResource('departments', DepartmentController::class);
    Route::apiResource('companies', CompanyController::class);
    Route::apiResource('positions', PositionController::class);
    Route::apiResource('users', UserController::class);
});

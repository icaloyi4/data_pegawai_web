<?php

use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RegisterCompanyController;

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
Route::post('logout',[AuthController::class,"logout"]);
     
// Route::middleware('auth:api')->group( function () {
//     Route::post('logout',[AuthController::class,"logout"]);
// });
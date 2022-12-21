<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\API\RegisterController;
use App\Http\Controllers\API\CategoryController;
use App\Http\Controllers\API\ProductController;
use App\Http\Controllers\API\CartController;

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

Route::post('register', [RegisterController::class, 'register']);
Route::post('login', [RegisterController::class, 'login']);
Route::get('cart', [CartController::class, 'index']);
Route::post('cart', [CartController::class, 'store']);
Route::patch('cart/{id}', [CartController::class, 'update']);
Route::delete('cart/{id}', [CartController::class, 'destroy']);

Route::middleware('auth:api')->group( function () {
	Route::post('categories', [CategoryController::class, 'store']);
	Route::post('products', [ProductController::class, 'store']);
	Route::get('products/{id}', [ProductController::class, 'show']);
	Route::delete('products/{id}', [ProductController::class, 'destroy']);
});
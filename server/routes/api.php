<?php

use Illuminate\Http\Request;

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


/*Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
*/

/*
 * tasks
 */
Route::middleware('api')->post('/tasklist','TaskController@getTasks');
Route::middleware('api')->post('/ctask','TaskController@addTasks');
Route::middleware('api')->post('/deltask','TaskController@delTasks');

/**
 * suggestions
 */
Route::middleware('api')->post('/send','SuggestionController@sendEmail');

/**
 * register
 */
Route::middleware('api')->post('/onLogin','TokenController@getToken');
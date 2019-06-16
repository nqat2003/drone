<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@home');
Route::get('/map',function(){
	return view('test.map');
});
Route::get('/add','HomeController@addNewItem')->name('getadd');
Route::post('/add','HomeController@userAddItem')->name('add');
Route::get('/view/{id?}/{city?}','HomeController@getItems')->where('id', '[0-9]+')->name('view');
Route::post('/view','HomeController@getItemsFromSearch')->name('viewpost');
Route::get('view/{city}','HomeController@getItemsFromCity')->name('getcity');
Route::get('/discover','HomeController@getConfirmedItems')->name('discover');
Route::post('/viewpost','HomeController@getItemsFromPost')->name('viewpostfrompost');
//-------------------------------------------------------------------------

Route::get('/admin/home','AdminController@home')->name('adminhome');
Route::get('/admin/show/{type}','AdminController@show')->name('show');
Route::get('/admin/accept/{id}/{type}','AdminController@acceptItem')->name('accept');
Route::get('/admin/login','AdminController@login')->name('login');
Route::post('/admin/login','AdminController@doLogin')->name('dologin');
Route::get('/admin/adduser','AdminController@addAdminUser')->name('addadmin');
Route::post('/admin/adduser','AdminController@doAddAdminUser')->name('doaddadmin');
Route::get('/admin/showusers','AdminController@listUsers')->name('showusers');
Route::get('/admin/logout','AdminController@logout')->name('logout');


Route::get('get-state-list','DropdownController@getStateList');
Route::get('get-city-list','DropdownController@getCityList');

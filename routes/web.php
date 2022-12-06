<?php

// use Cloudinary\Cloudinary;
// use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;

use CloudinaryLabs\CloudinaryLaravel\CloudinaryEngine;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/upload', function () {
    return view('upload');
});

Route::post('/upload', function (Request $request) {
    //$uploadFile = cloudinary()->upload($request->file('file')->getRealPath(),['folder' => 'bakery/category_local']);

    $cloudinaryEngine = new CloudinaryEngine();
    $cloudinaryEngine->upload($request->file('file')->getRealPath(), ['folder' => 'bakery/category_local']);

    // $upload = new Cloudinary

    // $data =  Cloudinary::upload($request->file('file')->getRealPath(),['folder' => 'bakery/category_local']);

    //dd($cloudinaryEngine);

    dd([$cloudinaryEngine->getPublicId(), $cloudinaryEngine->getSecurePath()]);
});

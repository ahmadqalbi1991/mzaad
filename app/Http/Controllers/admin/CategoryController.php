<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Categories;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $page_heading = "Category";
        $categories = Categories::get();
        return view('admin.category.list', compact('page_heading', 'categories'));
    }

    public function create() {
        $page_heading = 'Create Category';

        return view("admin.category.create", compact('page_heading'));

    }
}

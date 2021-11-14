<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Models\Category;
use Validator;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;

class CategoryController extends Controller
{
    public function __construct()
    {
    	$this->middleware('auth');
    }

    public function index()
    {
    	$masterCategories = Category::get();
    	return view('category.index', compact('masterCategories'));
    }

    public function create()
    {
    	return view('category.create');
    }

    public function store(Request $request)
    {
    	$input = Input::all();
	    $rules = [
	    	'name' => 'required|unique:categories'
	    ];
	    $messages = [
            'name.required' => 'The Category field is required.',
            'name.unique' => 'The Category already exist.'
        ];
	    
    	$validator = Validator::make($input, $rules, $messages);
        if ($validator->fails()) {
        	flash()->error('Something Wrong!');
            return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
        }
        $masterCategory = new Category;
        $masterCategory->name = $request->name;
        $masterCategory->created_by = Auth::id();
        $masterCategory->save();
        flash()->success($masterCategory->name.' Category created successfully');
    	return redirect('category');
    }

    public function edit($id)
    {
    	$masterCategory = Category::find($id);
    	return view('category.edit', compact('masterCategory'));
    }
    
    public function update(Request $request, $id)
    {
    	$masterCategory = Category::find($id);
    	$input = Input::all();
	    $rules = [
	    	'name' => 'required|unique:categories,name,'.$masterCategory->id,
	    	'status' => 'required',
	    ];
	    $messages = [
            'name.required' => 'The Category field is required.',
            'name.unique' => 'The Category already exist.'
        ];
	    
    	$validator = Validator::make($input, $rules, $messages);
        if ($validator->fails()) {
        	flash()->error('Something Wrong!');
            return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
        }
        $masterCategory->name = $request->name;
        $masterCategory->status = $request->status;
        $masterCategory->updated_by = Auth::id();
        $masterCategory->save();
        flash()->success($masterCategory->name.' Category updated successfully');
    	return redirect('category');
    }
}

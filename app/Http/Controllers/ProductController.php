<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Models\Product;
use App\Models\Category;
use Validator;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;

class ProductController extends Controller
{
    public function __construct()
    {
    	$this->middleware('auth');
    }

    public function index()
    {
    	$products = Product::with('category')->get();
        // $products = Product::with('category')->orderBy('id', 'desc')->get();

    	return view('product.index', compact('products'));
    }

    public function create()
    {
        $categoryList = Category::pluck('name', 'id');

    	return view('product.create', compact('categoryList'));
    }

    public function store(Request $request)
    {
    	$input = Input::all();
	    $rules = [
	    	'name' => 'required|unique:products',
            'category_id' => 'required',
            'price' => 'required|numeric',
	    ];
	    $messages = [
            'name.required' => 'The Product field is required.',
            'name.unique' => 'The Product already exist.',
            'category_id.required' => 'The Category field is required.'
        ];
	    
    	$validator = Validator::make($input, $rules, $messages);
        if ($validator->fails()) {
        	flash()->error('Something Wrong!');
            return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
        }
        $product = new Product;
        $product->name = $request->name;
        $product->category_id = $request->category_id;
        $product->price = $request->price;
        $product->previous_price = $request->previous_price;
        $product->remarks = $request->remarks;
        $product->created_by = Auth::id();
        $product->save();
        flash()->success($product->name.' Product created successfully');
    	return redirect('product');
    }

    public function edit($id)
    {
    	$product = Product::find($id);
        $categoryList = Category::pluck('name', 'id');

    	return view('product.edit', compact('product', 'categoryList'));
    }
    
    public function update(Request $request, $id)
    {
    	$product = Product::find($id);
    	$input = Input::all();
	    $rules = [
	    	'name' => 'required|unique:products,name,'.$product->id,
            'category_id' => 'required',
            'price' => 'required|numeric',
	    	'status' => 'required',
	    ];
	    $messages = [
            'name.required' => 'The Product field is required.',
            'category_id.required' => 'The Category field is required.',
            'name.unique' => 'The Product already exist.'
        ];
	    
    	$validator = Validator::make($input, $rules, $messages);
        if ($validator->fails()) {
        	flash()->error('Something Wrong!');
            return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
        }
        $product->name = $request->name;
        $product->category_id = $request->category_id;
        $product->price = $request->price;
        $product->previous_price = $request->previous_price;
        $product->remarks = $request->remarks;
        $product->status = $request->status;
        $product->updated_by = Auth::id();
        $product->save();
        flash()->success($product->name.' Product updated successfully');
    	return redirect('product');
    }
}

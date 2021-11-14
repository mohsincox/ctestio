<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Models\Option;
use App\Models\Division;
use App\Models\District;
use App\Models\Crm;
use App\Models\Product;
use App\Models\Category;
use Cart;

class CrmController extends Controller
{
    protected $productCart = 'crmProductCart';

    public function create(Request $request)
    {
        $categoryList = Category::where('status', 'Active')->pluck('name', 'id');

        $productList = Product::where('status', 'Active')->pluck('name', 'id');

        $addedList = Cart::instance($this->productCart)->content();
        
        
        $paymentMethodList  = Option::where('select_id', 2)->where('status', 'Active')->pluck('name', 'name');
        $queryTypeList  = Option::where('select_id', 3)->where('status', 'Active')->pluck('name', 'name');
        $yesNoList  = Option::where('select_id', 4)->where('status', 'Active')->pluck('name', 'name');
        $callRemarksList  = Option::where('select_id', 5)->where('status', 'Active')->pluck('name', 'name');
        
        // $divisionList = Division::orderBy('name', 'asc')->pluck('name', 'id');
        $districtList = District::orderBy('name', 'asc')->pluck('name', 'id');
        $phone_number = substr($request->phone_number, -11);
        $phoneNumber = $phone_number;
        $agent = $request->agent;

        $crmLast = Crm::whereIn('phone_number', [substr($request->phone_number, -11), substr($request->phone_number, -10)])->orderBy('id', 'desc')->first();
        $crms = Crm::whereIn('phone_number', [substr($request->phone_number, -11), substr($request->phone_number, -10)])->orderBy('id', 'desc')->limit(10)->get();

        return view('crm.create', compact('paymentMethodList', 'queryTypeList', 'yesNoList', 'callRemarksList', 'districtList', 'phoneNumber', 'agent', 'crmLast', 'crms', 'productList', 'addedList', 'categoryList'));
    }

    public function getDistrict(Request $request)
    {   
        $districts = District::where('division_id', $request->division_id)->pluck('name', 'id');

        return response()->json($districts);
    }

    public function store(Request $request)
    {
        $cart = Cart::instance($this->productCart)->content();

        $totalPrice = 0;

        if (count($cart)) {
            
            $productArray = [];
            
            foreach ($cart as $item) {

                array_push($productArray, [
                    'Id' => $item->id,
                    'Name' => $item->name,
                    'Qty' => $item->qty,
                    'Price' => $item->price,
                    'Subtotal' => $item->subtotal,
                ]);

                $totalPrice = $totalPrice + $item->subtotal;
            }

            $productJSON = json_encode($productArray);

        } else{
            $productJSON = '[]';
        }

        $crm = new Crm;
        $crm->phone_number = $request->phone_number;
        $crm->agent = $request->agent;
        $crm->customer_name = $request->customer_name;
        $crm->district_id = $request->district_id;
        $crm->customer_address = $request->customer_address;
        $crm->customer_email = $request->customer_email;
        $crm->facebook_id = $request->facebook_id;
        $crm->customer_query = $request->customer_query_blank;
        $crm->query_type = $request->query_type_blank;
        $crm->product_detail = $productJSON;
        $crm->customer_order = $request->customer_order_blank;
        $crm->create_order = $request->create_order_blank;
        $crm->payment_method = $request->payment_method_blank;
        $crm->remarks = $request->remarks_blank;
        $crm->call_remarks = $request->call_remarks_blank;
        $crm->camp_in_or_out = $request->in_or_out;
        $crm->total_price = $totalPrice;
        
        $crm->save(); 

        Cart::instance($this->productCart)->destroy();

        flash()->success($request->phone_number.' information created successfully');
        
        return redirect()->back();
    }

    public function addToCart(Request $request)
    {
        $deliveryProduct = Product::find($request->product_id);

        Cart::instance($this->productCart)->add([
                      'id' => $deliveryProduct->id,
                      'name' => $deliveryProduct->name,
                      'qty' => $request->quantity,
                      'price' => $deliveryProduct->price,
                  ]);

      $addedList = Cart::instance($this->productCart)->content();
      
      return view('crm.cart_show', compact('addedList'));
    }

    public function removeOneItem($id)
    {
        Cart::instance($this->productCart)->remove($id);
        // flash()->warning('One Item is removed from List.');

        $addedList = Cart::instance($this->productCart)->content();

        return view('crm.cart_show', compact('addedList'));
    }

    public function getProduct(Request $request)
    {   
        $products = Product::where('category_id', $request->category_id)->pluck('name', 'id');

        return response()->json($products);
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Cart;

class CartController extends Controller
{
    public function cart()
    {
//     	Cart::add([
//   ['id' => '293ad', 'name' => 'Product 1', 'qty' => 1, 'price' => 10.00],
//   ['id' => '4832k', 'name' => 'Product 2', 'qty' => 2, 'price' => 15.00, 'options' => ['size' => 'large']]
// ]);
    	return view('select.cart');
    }


    public function updateCart(Request $request)
    {
    	// if ($request->isMethod('post')){
            $qty = intval($request->qty);
            $rowId = $request->rowId;
            if ($qty > 0){
                Cart::update($rowId, $qty);
            }
        // }
        return redirect()->back();
    }
}

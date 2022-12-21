<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\AddCartRequest;
use App\Models\Cart;
use App\Models\Cart_item;
use Session;
use Validator;

class CartController extends Controller
{	
	// cart Index
	public function index(Request $request)
    {
    	$request->validate([
            'session_id' => 'required|exists:carts,session_id'
        ]);
        $session_id = Session::getId();

		$list = Cart::where('session_id', $request->session_id)->get();
		if ($list->count() > 0) {
            return response()->json($list, 200);
        }
       	return response()->json(['status' => 'false','message'=> 'Cart  not found.']);
    }
    
    // store cart
    public function store(Request $request)
    {

        $session_id = Session::getId();
        $data=array(
                'product_id'=> $request->product_id,
                'user_id' => $request->user_id,
                'qty' => $request->qty,
                'session_id'=> Session::getId(),
        );
      
        if ($data['user_id'] == NULL) {
            $data['user_id'] = NULL;
        }
        
        $cart = new Cart;
        $cart->product_id = $data['product_id'];
        $cart->user_id = $data['user_id'];
        $cart->qty = $data['qty'];
        $cart->session_id = $data['session_id'];
        $cart->save();

        return response()->json(['status' => 'true','message'=> 'Product added successfully in cart.']);
    }

    // update cart
    public function update(Request $request,$id)
    {
    	$data=array(
                'qty' => $request->qty,
                );
        $cart = Cart::find($id);
		$cart->qty = $data['qty'];
        $cart->save();

        return response()->json(['status' => 'true','message'=> 'Product update successfully in cart.']);
    }

    // delete cart
    public function destroy($id)
    {
        try {
            Cart::findOrFail($id)->destroy($id);
            return response()->json(['status' => 'true', 'message' => 'Product deleted successfully in cart.']);    
          
        } catch (\Exception $exception) {
        	return response()->json(['status' => 'false', 'message' => 'Product not found.']);   
           
        }
    }
}

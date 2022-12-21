<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use Validator;

class ProductController extends Controller
{	
	// store product
    public function store(Request $request)
    {
        $input = $request->all();
   
        $validator = Validator::make($input, [
            'name' => 'required',
            'price' => 'required',
	        'category_id' => 'required',
	        'description' => 'required',
	        'avatar' => 'required',
        ]);
   			
        if($validator->fails()){
            return response()->json(['status' => 'false', 'message' => $validator->errors()]);    
        }

		if ($request->file('avatar')) {

   			$filename = time() . '.' . $request->avatar->extension();
			$request->avatar->move(public_path('uploads/avatar_image'), $filename);
            $input['avatar'] = $filename;
        }
        $products = Product::create($input);
   		return response()->json(['status' => 'true','message'=> 'Product add succussfully', 'data' => $products]);

   	}

   	// show product by id
   	public function show($id)
	{
		$product = Product::find($id);
		if (is_null($product)) {
			return response()->json(['status' => 'false', 'message' => 'Product not found.']);    
		}
		return response()->json([
			"success" => true,
			"message" => "Product retrieved successfully.",
			"data" => $product
		]);
	}
	
	// delete product
	public function destroy($id)
    {
        try {
            Product::findOrFail($id)->destroy($id);
            return response()->json(['status' => 'true', 'message' => 'Product deleted successfully.']);    
          
        } catch (\Exception $exception) {
        	return response()->json(['status' => 'false', 'message' => 'Product not found.']);   
           
        }
    }
}

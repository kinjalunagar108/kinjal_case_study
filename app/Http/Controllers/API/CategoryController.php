<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Controllers\API\BaseController as BaseController;
use Illuminate\Http\Request;
use App\Models\Category;
use Validator;

class CategoryController extends Controller
{	
	// store category
    public function store(Request $request)
    {
        $input = $request->all();
   
        $validator = Validator::make($input, [
            'name' => 'required',
        ]);
   
        if($validator->fails()){
            return response()->json(['status' => 'false', 'message' => $validator->errors()]);    
        }
   
        $category = Category::create($input);
   		return response()->json(['status' => 'true','message'=> 'Category add succussfully', 'data' => $category]);
    }
}

<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Validator;
use App\Http\Controllers\API\BaseController as BaseController;

class RegisterController extends Controller
{
    // register user
    public function register(Request $request)
    {
       	$data = $request->validate([
            'name' => 'required|max:255',
            'email' => 'required|email|unique:users',
            'password' => 'required|confirmed'
        ]);

        $data['password'] = bcrypt($request->password);

        $user = User::create($data);

        $token = $user->createToken('API Token')->accessToken;

        return response([ 'user' => $user, 'token' => $token]);
       
    }

    // login user
    public function login(Request $request)
    {
        $data = $request->validate([
            'email' => 'email|required',
            'password' => 'required'
        ]);

        if (!auth()->attempt($data)) {
            return response()->json(['error_message' => 'Incorrect Details. Please try again']);
        }

        $token = auth()->user()->createToken('API Token')->accessToken;

        return response()->json(['user' => auth()->user(), 'token' => $token]);
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Http\Requests\LoginRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends BaseController
{
// public function __construct()
// {
//     return auth()->shouldUse('api');   
// }
    public function login(LoginRequest $request)
    {
        try {
            $val = $request->only(['email', 'password']);
            if(Auth::attempt($val)){ 
                $user = User::find(Auth::id()); 
                $user->remember_token =  $user->createToken('dataPegawai')->accessToken;
                $user->save();
    
                return $this->succesResponse($user, 'Login success');
            } 
            else{ 
                return $this->errorResponse(null, 'Email or Password is wrong.', 401);
            } 
        }
        catch (\Exception $e) {
            return $this->errorResponse($e->getMessage());
        }
    }

    public function logout()
    {
        $user = Auth::user();
        return response()->json($user); 
    }
        
}

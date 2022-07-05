<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\ResetRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\BaseController;

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
                DB::table('oauth_access_tokens')->where('user_id',Auth::id())->update(
                    array(
                    'revoked'=>1,
                ));
                $user = User::find(Auth::id()); 
                $token = $user->createToken('dataPegawai')->accessToken;
                $user->remember_token = $token;
                $user->save();
    
                return $this->succesResponse(['token'=>$token,'user'=>$user], 'Login success');
            } 
            else{ 
                return $this->errorResponse(null, 'Email or Password is wrong.', 401);
            } 
        }
        catch (\Exception $e) {
            return $this->errorResponse($e->getMessage());
        }
    }

    public function resetPassword(ResetRequest $request)
    {
        try {
            $val = $request->only(['email', 'password']);
            if(Auth::attempt($val)){ 
                DB::table('oauth_access_tokens')->where('user_id',Auth::id())->update(
                    array(
                    'revoked'=>1,
                ));
                $user = User::find(Auth::id());
                $user->password = Hash::make($request->new_password);

                $user->save();
    
                return $this->succesResponse($user, 'Reset password success');
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
        try {
            if (Auth::check()) {
                DB::table('oauth_access_tokens')->where('user_id',Auth::id())->update(
                    array(
                    'revoked'=>1,
                ));
                $user = User::find(Auth::id());
                $user->remember_token = null;
                $user->save();
                return $this->succesResponse($user, 'Logout Success');
            }
            return $this->errorResponse(null, 'User already log out', 422);
        } catch (\Exception $e) {
            return $this->errorResponse($e->getMessage());
        }
        
    }
        
}

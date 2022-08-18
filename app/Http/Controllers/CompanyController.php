<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Company;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Resources\CompanyResource;

class CompanyController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $user = User::find(Auth::id());
        if ($user->role_id == 1) {
            $company = Company::where('isActive', '1')->get();
            return $this->succesResponse(CompanyResource::collection($company));
        } else {
            return $this->errorResponse(null, 'Roles not allowed', 403);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function show(Company $company)
    {
        //
        $user = User::find(Auth::id());
        if ($user->role_id == 1) {
            return $this->succesResponse($company);
        } else {
            return $this->errorResponse(null, 'Roles not allowed', 403);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Company $company)
    {

        $user = User::find(Auth::id());
        if ($user->role_id == 1) {
            $usernya = User::find(Auth::id());
            $company->updated_by = $usernya->name;
            $company->updated_at = now();
            $company->update($request->all());

            return $this->succesResponse(null, 'Company Updated');
        } else {
            return $this->errorResponse(null, 'Roles not allowed', 403);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function destroy(Company $company)
    {
        //
        $user = User::find(Auth::id());
        if ($user->role_id == 1) {
            return $this->errorResponse(null, 'Delete success', 204);
        } else {
            return $this->errorResponse(null, 'Roles not allowed', 403);
        }
    }

    public function deleteById(Request $req)
    {
        $user = User::find(Auth::id());
        if ($user->role_id == 1) {
            $company = Company::find($req->id);
            $company->isActive = 0;
            $company->save();

            return $this->errorResponse(null, 'Delete success', 204);
        } else {
            return $this->errorResponse(null, 'Roles not allowed', 403);
        }
    }
}

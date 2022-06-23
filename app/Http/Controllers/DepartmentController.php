<?php

namespace App\Http\Controllers;

use App\Http\Resources\DepartmentResource;
use App\Models\User;
use App\Models\Department;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class DepartmentController extends BaseController
{
    public function departmentPosition(Request $req)
    {
        //return $req;
        try {
            DB::beginTransaction();
            $user = User::find(Auth::id());
            $idDepartment = DB::table('departments')->insertGetId(
                array(
                    'name'=>$req->dept_name,
                    'company_id'=>$req->company_id,
                    'created_by'=>$user->name,
                    'updated_by'=>$user->name,
                )
            );

            // $position = json_decode($req->position); 
            if (is_array($req->position)) {
                // return $req->position;
                foreach ($req->position as $pos) {
                    // $positionModel = new Position($pos->name, $pos->deparment_id, $user->name, $user->name);

                    DB::table('positions')->insert([
                        'name'=>$pos['position_name'],
                        'department_id'=>$idDepartment,
                        'level'=>$pos['level'],
                        'created_by'=>$user->name,
                        'updated_by'=>$user->name,
                    ]);
                    // return $pos;
                }
            }
            DB::commit();
            
            return $this->succesResponse();
        } catch (\Exception $th) {
            //throw $th;
            DB::rollBack();
            return $this->errorResponse(null, $th->getMessage());
        }
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // return User::find(Auth::id());
        //
        $user = User::find(Auth::id());
        $department = Department::where('company_id',19)->get();
        return $this->succesResponse(DepartmentResource::collection($department));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
     * @param  \App\Models\Department  $department
     * @return \Illuminate\Http\Response
     */
    public function show(Department $department)
    {
        //
        return $this->succesResponse($department);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Department  $department
     * @return \Illuminate\Http\Response
     */
    public function edit(Department $department)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Department  $department
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Department $department)
    {
        //
        $department->update($request->all());
        
        return $this->succesResponse(new DepartmentResource($department));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Department  $department
     * @return \Illuminate\Http\Response
     */
    public function destroy(Department $department)
    {
        //
        $department->delete();
        return $this->errorResponse(null,'Delete success', 204);
    }
}

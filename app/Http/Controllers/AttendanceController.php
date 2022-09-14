<?php

namespace App\Http\Controllers;

use App\Models\Attendance;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\BaseController;

class AttendanceController extends BaseController
{
    public function checkout(Request $request, int $idAttendance)
    {
        # code...
        try {
            //code...
            // return $request;
            $user = auth()->user();
            $name = $request->file('image')->getClientOriginalName();
            $path = $request->file('image')->store('public/images/attendances/' . $user->company_id . '/' . $user->id);
            $image = $request->file('image');
            // this return some like 'storage/documents/file.ext'
            $publicPath = Storage::url($path);

            // this return some like '< APP_URL env variable >/storage/documents/file.ext'
            $url = asset($publicPath);
            //  return $name;
            // return $request;
            $attendance = Attendance::find($idAttendance);
            $attendance->updated_by = $user->name;
            $attendance->updated_at = now();
            $attendance->location_check_out = $request->location_check_out;
            $attendance->check_out = $request->check_out;
            $attendance->photo_names_check_out = basename($name);
            $attendance->image_path_check_out = $url;
            $attendance->save();
            // $attendance->update($request->all());
// 
            return $this->succesResponse($attendance);
        } catch (\Throwable $th) {
            //throw $th;
            return $this->errorResponse($th->getMessage());
        }
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //
        //
        try {
            //code...
            $user = auth()->user();
            // return $request->has('department_id');
            if ($request->company_id != null) {
                # code...
                // return "OKKK";
                $attendance = DB::table('attendances')
                    ->leftJoin('users', 'attendances.user_id', '=', 'users.id')
                    ->join('companies', 'companies.id', '=', 'users.company_id')
                    ->join('departments', 'departments.id', '=', 'users.department_id')
                    ->select('attendances.*', 'users.name as user_name', 'departments.name as departmen_name')
                    ->where('companies.id', '=', $request->company_id)
                    ->orderByDesc('attendances.check_in')
                    ->get();
                // $attendance = DB::raw('Select att.*, u.*, d.name, c.name from attendances att join users u on att.user_id = u.id join companies c on u.company_id = c.id join departments d on u.department_id = d.id where u.user_id = ' . $request->user_id . ' order by at.created_date desc')->get();
                return $this->succesResponse($attendance);
            } else if ($request->department_id != null) {
                // return "OKK";
                $attendance = DB::table('attendances')
                    ->leftJoin('users', 'attendances.user_id', '=', 'users.id')
                    ->join('companies', 'companies.id', '=', 'users.company_id')
                    ->join('departments', 'departments.id', '=', 'users.department_id')
                    ->select('attendances.*', 'users.name as user_name', 'departments.name as departmen_name')
                    ->where('departments.id', '=', $request->department_id)
                    ->orderByDesc('attendances.check_in')
                    ->get();
                // $attendance = DB::raw('Select att.*, u.*, d.name, c.name from attendances att join users u on att.user_id = u.id join companies c on u.company_id = c.id join departments d on u.department_id = d.id where u.department_id = ' . $request->department_id . ' order by at.created_date desc')->get();
                return $this->succesResponse($attendance);
            } else {
                // return $user;
                $attendance = DB::table('attendances')
                    ->leftJoin('users', 'attendances.user_id', '=', 'users.id')
                    ->join('companies', 'companies.id', '=', 'users.company_id')
                    ->join('departments', 'departments.id', '=', 'users.department_id')
                    ->select('attendances.*', 'users.name as user_name', 'departments.name as departmen_name')
                    ->where('users.id', '=', $user->id)
                    ->orderByDesc('attendances.check_in')
                    ->get();
                // $attendance = DB::raw('Select att.*, u.*, d.name, c.name from attendances att join users u on att.user_id = u.id join companies c on u.company_id = c.id join departments d on u.department_id = d.id where u.company_id = ' . $user->company_id . ' order by at.created_date desc')->get();
                // return $attendance;
                return $this->succesResponse($attendance);
            }
        } catch (\Throwable $th) {
            //throw $th;
            $this->errorResponse($th->getMessage());
        }
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
        try {
            //code...
            // $user = User::find(Auth::id());
            // return $request;
            $user = auth()->user();
            DB::beginTransaction();
            $name = $request->file('image')->getClientOriginalName();
            $path = $request->file('image')->store('public/images/attendances/' . $user->company_id . '/' . $user->id);
            $image = $request->file('image');
            // this return some like 'storage/documents/file.ext'
            $publicPath = Storage::url($path);

            // this return some like '< APP_URL env variable >/storage/documents/file.ext'
            $url = asset($publicPath);
            //  return $name;
            $uploadedImageResponse = array(
                "image_name" => basename($name),
                "image_url" => $url,
                "mime" => $image->getClientMimeType()
            );
            DB::table('attendances')->insertGetId(
                array(
                    'user_id' => $user->id,
                    'check_in' => $request->check_in,
                    'notes_check_in' => $request->notes_check_in,
                    'location_check_in' => $request->location_check_in,
                    'image_path_check_in' => $url,
                    'photo_names_check_in' => basename($name),
                    'created_by' => $user->name,
                    'updated_by' => $user->name,
                )
            );
            DB::commit();

            return $this->succesResponse($uploadedImageResponse);
        } catch (\Throwable $th) {
            //throw $th;
            DB::rollBack();
            return $this->errorResponse($th->getMessage(), 'Error insert new announcements', 500);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Attendance  $attendance
     * @return \Illuminate\Http\Response
     */
    public function show(Attendance $attendance)
    {
        //
        // return "JANCOK";
        return $this->succesResponse($attendance);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Attendance  $attendance
     * @return \Illuminate\Http\Response
     */
    public function edit(Attendance $attendance)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Attendance  $attendance
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Attendance $attendance)
    {
        //
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Attendance  $attendance
     * @return \Illuminate\Http\Response
     */
    public function destroy(Attendance $attendance)
    {
        //
    }
}

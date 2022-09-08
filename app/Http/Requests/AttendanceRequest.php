<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AttendanceRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'photo' => ['required', 'image', 'mimes:jpg,png,jpeg,gif,svg', 'max:2048'],
            'location' => ['required'],
            'check_in' => ['required'],
            'notes' => ['nullable']
            //
        ];
    }

    public function messages()
    {
        return [
            'photo.required' => 'Company cannot be blank',
            'photo.image' => 'Must be image files',
            'photo.mimes' => 'format only jpg,png,jpeg,gif,svg',
            'photo.max' => 'Max 2048Mb',
            'location.required' => 'Location required',
            'check_in.required' => 'Check in time required'
        ];
    }
}

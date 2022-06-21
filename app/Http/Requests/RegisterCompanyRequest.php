<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RegisterCompanyRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            //
            'user_name'=>['required','string'],
            'email'=>['required','email'],
            'phone'=>['required','numeric','min:8'],
            'company_name'=>['required','string'],
            'company_email'=>['required','email'],
            'company_phone'=>['required','numeric','min:8']
        ];
    }
}

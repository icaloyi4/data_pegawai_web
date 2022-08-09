<?php

namespace App\Http\Requests;

use App\Models\ResponseDefaultModel;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;

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
            'user_name' => ['required', 'string'],
            'user_email' => ['required', 'email'],
            'password' => [
                'required',
                'confirmed',
                'string',
                'min:8',             // must be at least 8 characters in length
            ],
            'user_phone' => ['required', 'numeric', 'min:8'],
            'user_birthday' => ['nullable'],
            'user_join_at' => ['nullable'],
            'user_nik' => ['nullable'],
            'company_name' => ['required', 'string'],
            'company_email' => ['required', 'email'],
            'company_phone' => ['required', 'numeric', 'min:8'],
            'company_address' => ['nullable'],
            'company_location' => ['nullable'],
            'company_city' => ['nullable'],
            'company_country' => ['nullable']
        ];
    }

    protected function failedValidation(Validator $var)
    {
        throw new HttpResponseException(response()->json((new ResponseDefaultModel(false, 422, 'Data tidak valid', $var->errors())), 422));
    }
}

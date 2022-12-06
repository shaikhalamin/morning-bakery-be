<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateStorageFileRequest extends FormRequest
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
            'type' => 'sometimes|required|string|max:255',
            'size' => 'sometimes|required|string|max:255',
            'file_name' => 'sometimes|required|image|mimes:jpeg,png,jpg,gif,svg',
        ];
    }
}

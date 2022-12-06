<?php

namespace App\Services\UploadDriver;

use Illuminate\Http\UploadedFile;
use Symfony\Component\HttpFoundation\File\File;

class Local
{
    public function upload(UploadedFile $file, ?array $options = []): File
    {
        $path = array_key_exists('path', $options) ? $options['path'] : '/uploads/files';
        $uploaded = $file->move(public_path($path), $file->getClientOriginalName());

        //dump($uploaded);

        return $uploaded;
    }
}

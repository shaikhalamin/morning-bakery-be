<?php

namespace App\Services\Upload;

use App\Services\Factories\FileFactory;
use CloudinaryLabs\CloudinaryLaravel\CloudinaryEngine;
use Exception;
use Illuminate\Http\UploadedFile;
use Symfony\Component\HttpFoundation\File\File;

class FileService
{
    public function upload(UploadedFile $file, string $uploadDriver, ?array $options = []): CloudinaryEngine | File | Exception
    {
        $fileUploadFactory = FileFactory::create($uploadDriver);
        $uploadFile = $fileUploadFactory->upload(file: $file, options: $options);

        return $uploadFile;
    }

    public function destroy(string $fileDriver, string $id)
    {
        $fileUploadFactory = FileFactory::create($fileDriver);
        $deleteFile = $fileUploadFactory->destroy(id: $id);

        return $deleteFile;
    }
}

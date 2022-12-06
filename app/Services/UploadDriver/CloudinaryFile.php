<?php

namespace App\Services\UploadDriver;

use App\Services\Interfaces\FileInterface;
use CloudinaryLabs\CloudinaryLaravel\CloudinaryEngine;
use Illuminate\Http\UploadedFile;

class CloudinaryFile implements FileInterface
{
    public function upload(UploadedFile $file, ?array $options = []): CloudinaryEngine
    {
        $cloudinaryEngine = new CloudinaryEngine();
        $cloudinaryEngine->upload($file->getRealPath(), ['folder' => 'bakery/category_local']);

        return $cloudinaryEngine;
    }

    public function destroy(string $id): CloudinaryEngine
    {
        $cloudinaryEngine = new CloudinaryEngine();
        $cloudinaryEngine->destroy($id);

        return $cloudinaryEngine;
    }
}

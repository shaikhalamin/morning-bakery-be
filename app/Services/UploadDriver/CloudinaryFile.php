<?php

namespace App\Services\UploadDriver;

use App\Services\Interfaces\FileInterface;
use CloudinaryLabs\CloudinaryLaravel\CloudinaryEngine;
use Illuminate\Http\UploadedFile;

class CloudinaryFile implements FileInterface
{
    public function upload(UploadedFile $file, array $options = ['type' => '']): CloudinaryEngine
    {
        $cnEngine = new CloudinaryEngine();

        $appEnv = config('app.env');
        $uploadFolder = 'bakery/' . $options['type'];
        if ($appEnv !== 'production') {
            $uploadFolder .= '_' . $appEnv;
        }
        $cnEngine->upload($file->getRealPath(), ['folder' => $uploadFolder]);

        return $cnEngine;
    }

    public function destroy(string $id): CloudinaryEngine
    {
        $cnEngine = new CloudinaryEngine();
        $cnEngine->destroy($id);

        return $cnEngine;
    }
}

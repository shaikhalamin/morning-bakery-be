<?php

namespace App\Services\Interfaces;

use CloudinaryLabs\CloudinaryLaravel\CloudinaryEngine;
use Exception;
use Illuminate\Http\UploadedFile;
use Symfony\Component\HttpFoundation\File\File;

interface FileInterface
{
    public function upload(UploadedFile $file, array $options = []): CloudinaryEngine | File | Exception;

    public function destroy(string $id): CloudinaryEngine;
}

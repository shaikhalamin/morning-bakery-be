<?php

namespace App\Services\Factories;

use App\Services\Interfaces\FileInterface;
use Exception;
use Illuminate\Support\Str;

class FileFactory
{
    public static function create(string $driver): FileInterface | Exception
    {
        $driverClass = 'App\\Services\\UploadDriver\\' . Str::studly($driver);

        if (!class_exists($driverClass)) {
            throw new Exception('UploadDriver class of type driver : ' . $driver . ' not found ');
        }

        return new $driverClass();
    }
}

<?php

namespace App\Services\StorageFile;

use App\Models\StorageFile;
use App\Services\Upload\FileService;
use Illuminate\Contracts\Pagination\Paginator;
use Illuminate\Database\Eloquent\Collection;

class StorageFileService
{
    public function __construct(private FileService $filesService)
    {
    }

    public function list(): Paginator
    {
        return StorageFile::with(['category', 'product'])->orderBy('updated_at', 'desc')->paginate(10);
    }

    public function create(array $data): StorageFile
    {
        return StorageFile::create($data);
    }

    public function show(int $id): StorageFile
    {
        $storageFile = StorageFile::find($id);

        return $storageFile->load(['category', 'product']);
    }

    public function update(array $data, int $id): StorageFile
    {
        $storageFile = $this->show($id);
        $storageFile->update($data);

        return $storageFile;
    }

    public function delete(int $id, string $driver): bool
    {
        $storageFile = $this->show($id);
        $this->filesService->destroy(fileDriver: $driver, id: $storageFile->public_id);

        return $storageFile->delete();
    }

    //get all returned due to save many because it returns array of model
    public function findMany(array $ids = []): Collection
    {
        return StorageFile::with(['category', 'product'])->whereIn('id', $ids)->get();
    }

}

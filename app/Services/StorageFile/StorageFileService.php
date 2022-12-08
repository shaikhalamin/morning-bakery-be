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
        $query = StorageFile::query();

        $filter = request()->query('type');
        $perPage = !empty(request()->query('per_page')) ? request()->query('per_page') : 20;

        if (!empty($filter)) {
            $query->where('type', $filter);
        }

        return $query->orderBy('updated_at', 'desc')->paginate($perPage);
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

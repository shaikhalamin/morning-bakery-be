<?php

namespace App\Services\Product;

use App\Models\Product;
use App\Services\StorageFile\StorageFileService;
use App\Services\UploadDriver\Driver;
use Illuminate\Contracts\Pagination\Paginator;

class ProductService
{
    public function __construct(public StorageFileService $storageFileService)
    {
    }

    public function list(): Paginator
    {
        $query = Product::with(['storageFiles']);

        $filter = request()->query('category');
        $perPage = !empty(request()->query('per_page')) ? request()->query('per_page') : 20;

        if (!empty($filter)) {
            $query->whereHas('category', function ($q) use ($filter) {
                $q->where('alias', $filter);
            });
        }

        return $query->orderBy('updated_at', 'desc')->paginate($perPage);
    }

    public function create(array $data): Product
    {
        return Product::create($data);
    }

    public function show(int $id): Product
    {
        $Product = Product::find($id);

        return $Product->load('storageFiles');
    }

    public function update(array $data, int $id): Product
    {
        $Product = $this->show($id);
        $Product->update($data);

        return $Product;
    }

    public function delete(int $id): bool
    {
        $product = $this->show($id);

        if (!empty($product->storageFiles)) {
            foreach ($product->storageFiles as $file) {
                $this->storageFileService->delete(id: $file->id, driver: Driver::CLOUDINARY_FILE);
            }
        }

        return $this->show($id)->delete();
    }
}

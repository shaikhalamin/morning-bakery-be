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
        return Product::orderBy('updated_at', 'desc')->with('storageFiles')->paginate(20);
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

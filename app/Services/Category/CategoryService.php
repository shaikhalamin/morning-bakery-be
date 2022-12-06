<?php

namespace App\Services\Category;

use App\Models\Category;
use Illuminate\Contracts\Pagination\Paginator;

class CategoryService
{
    public function list(): Paginator
    {
        return Category::orderBy('updated_at', 'desc')->with('storageFile')->paginate(20);
    }

    public function create(array $data): Category
    {
        return Category::create($data);
    }

    public function show(int $id): Category
    {
        $category = Category::find($id);

        return $category->load('storageFile');
    }

    public function update(array $data, int $id): Category
    {
        $category = $this->show($id);
        $category->update($data);

        return $category;
    }

    public function delete(int $id): bool
    {
        return $this->show($id)->delete();
    }
}

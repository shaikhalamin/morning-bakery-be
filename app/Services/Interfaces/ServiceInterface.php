<?php

namespace App\Services\Interfaces;

use Illuminate\Contracts\Pagination\Paginator;
use Illuminate\Database\Eloquent\Model;

interface ServiceInterface
{
    public function list(): Paginator;

    public function create(array $data): Model;

    public function show(int $id): Model;

    public function update(array $data, int $id): Model;

    public function delete(int $id): bool;
}

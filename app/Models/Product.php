<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'descriptions',
        'quantity',
        'weight',
        'price',
        'sku',
    ];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function storageFiles()
    {
        return $this->hasMany(StorageFile::class);
    }
}

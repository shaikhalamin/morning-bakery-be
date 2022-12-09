<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Models\Product;
use App\Services\Category\CategoryService;
use App\Services\Product\ProductService;
use App\Services\StorageFile\StorageFileService;
use Symfony\Component\HttpFoundation\Response as RESPONSE;

class ProductController extends Controller
{
    public function __construct(public StorageFileService $storageFileService, public ProductService $productService, public CategoryService $categoryService)
    {
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $response = $this->productService->list();
        
        return response()->json($response, RESPONSE::HTTP_OK);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreProductRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreProductRequest $request)
    {
        $payload = [...$request->validated()];
        $product = $this->productService->create(data: $payload);
        $category = $this->categoryService->show(id: $payload['category_id']);

        if ($category) {
            $category->products()->save($product);
        }

        if ($request->has('storageFile')) {
            $storageFiles = $this->storageFileService->findMany(ids: explode(',', $request->get('storageFile')));
            $product->storageFiles()->saveMany($storageFiles->all());
        }

        $response = [
            'success' => true,
            'data' => $this->productService->show(id: $product->id),
        ];

        return response()->json($response, RESPONSE::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        $response = [
            'success' => true,
            'data' => $this->productService->show(id: $product->id),
        ];

        return response()->json($response, RESPONSE::HTTP_OK);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateProductRequest  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateProductRequest $request, Product $product)
    {
        $payload = [...$request->validated()];
        $this->productService->update(data: $payload, id: $product->id);
        $category = $this->categoryService->show(id: $payload['category_id']);

        if ($category) {
            $category->products()->save($product);
        }

        if ($request->has('storageFile')) {
            $storageFiles = $this->storageFileService->findMany(ids: explode(',', $request->get('storageFile')));
            $product->storageFiles()->saveMany($storageFiles->all());
        }

        $response = [
            'success' => true,
            'data' => $this->productService->show(id: $product->id)->refresh(),
        ];

        return response()->json($response, RESPONSE::HTTP_OK);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $response = [
            'success' => $this->productService->delete($product->id),
            'data' => null,
        ];

        return response()->json($response, RESPONSE::HTTP_NO_CONTENT);
    }
}

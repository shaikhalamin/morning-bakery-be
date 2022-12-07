<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreCategoryRequest;
use App\Http\Requests\UpdateCategoryRequest;
use App\Models\Category;
use App\Services\Category\CategoryService;
use App\Services\StorageFile\StorageFileService;
use Symfony\Component\HttpFoundation\Response as RESPONSE;

class CategoryController extends Controller
{
    public function __construct(public StorageFileService $storageFileService, public CategoryService $categoryService)
    {
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $response = $this->categoryService->list();

        return response()->json($response, RESPONSE::HTTP_OK);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreCategoryRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreCategoryRequest $request)
    {
        $payload = [...$request->validated()];

        $category = $this->categoryService->create(data: $payload);

        $categoryFile = $this->storageFileService->show(id: $payload['storageFile']);

        if (!$categoryFile->category) {
            $category->storageFile()->save($categoryFile);
        }

        $response = [
            'success' => true,
            'data' => $this->categoryService->show(id: $category->id),
        ];

        return response()->json($response, RESPONSE::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        $response = [
            'success' => true,
            'data' => $this->categoryService->show(id: $category->id),
        ];

        return response()->json($response, RESPONSE::HTTP_OK);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateCategoryRequest  $request
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateCategoryRequest $request, Category $category)
    {
       
        $payload = [...$request->only(['name', 'alias'])];
        $this->categoryService->update(data: $payload, id: $category->id);

        if ($request->has('storageFile')) {
            $categoryFile = $this->storageFileService->show(id: $request->get('storageFile'));
            
            if (empty($categoryFile->category)) {
                $category->storageFile()->save($categoryFile);
            }
        }

        $response = [
            'success' => true,
            'data' => $this->categoryService->show(id: $category->id)->refresh(),
        ];

        return response()->json($response, RESPONSE::HTTP_OK);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        //
    }
}

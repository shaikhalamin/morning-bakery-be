<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreStorageFileRequest;
use App\Http\Requests\UpdateStorageFileRequest;
use App\Models\StorageFile;
use App\Services\StorageFile\StorageFileService;
use App\Services\Upload\FileService;
use App\Services\UploadDriver\Driver;
use Symfony\Component\HttpFoundation\Response as RESPONSE;

class StorageFileController extends Controller
{
    public function __construct(public FileService $filesService, public StorageFileService $storageFileService)
    {
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $response = $this->storageFileService->list();

        return response()->json($response, RESPONSE::HTTP_OK);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreStorageFileRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreStorageFileRequest $request)
    {
        $uploadFile = $this->filesService
            ->upload(
                file: $request->file('file_name'),
                uploadDriver: Driver::CLOUDINARY_FILE,
                options: ['type' => $request->get('type')]
            );

        $payload = [
            ...$request->except(['file_name']),
            'public_id' => $uploadFile->getPublicId(),
            'image_url' => $uploadFile->getSecurePath(),
        ];

        $response = [
            'success' => true,
            'data' => $this->storageFileService->create(data: $payload),
        ];

        return response()->json($response, RESPONSE::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\StorageFile  $storageFile
     * @return \Illuminate\Http\Response
     */
    public function show(StorageFile $storageFile)
    {
        $response = [
            'success' => true,
            'data' => $this->storageFileService->show(id: $storageFile->id),
        ];

        return response()->json($response, RESPONSE::HTTP_OK);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateStorageFileRequest  $request
     * @param  \App\Models\StorageFile  $storageFile
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateStorageFileRequest $request, StorageFile $storageFile)
    {
        $payload = $request->validated();

        if ($request->hasFile('file_name')) {
            //if file exists then remove the existing one and replace the old one with new

            $uploadFile = $this->filesService
                ->upload(
                    file: $request->file('file_name'),
                    uploadDriver: Driver::CLOUDINARY_FILE,
                    options: ['type' => $request->get('type')]
                );

            $payload = [
                ...$payload,
                'public_id' => $uploadFile->getPublicId(),
                'image_url' => $uploadFile->getSecurePath(),
            ];
        }

        $response = [
            'success' => true,
            'data' => $this->storageFileService->update(data: $payload, id: $storageFile->id)->refresh(),
        ];

        return response()->json($response, RESPONSE::HTTP_OK);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\StorageFile  $storageFile
     * @return \Illuminate\Http\Response
     */
    public function destroy(StorageFile $storageFile)
    {
        $response = [
            'success' => $this->storageFileService->delete($storageFile->id, driver: Driver::CLOUDINARY_FILE),
            'data' => null,
        ];

        return response()->json($response, RESPONSE::HTTP_NO_CONTENT);
    }
}

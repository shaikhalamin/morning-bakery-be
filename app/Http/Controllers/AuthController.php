<?php

namespace App\Http\Controllers;

use App\Http\Requests\AuthRequest;
use App\Services\User\UserService;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Request;
use Symfony\Component\HttpFoundation\Response as RESPONSE;

class AuthController extends AbstractApiController
{
    public function __construct(private UserService $userService)
    {
    }

    /**
     * Login method.
     *
     * @param  \App\Http\Requests\AuthRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function login(AuthRequest $request)
    {
        $payload = $request->validated();

        $user = $this->userService->findByEmail($payload['email']);

        if (!$user || !Hash::check($payload['password'], $user->password)) {
            $errorResponse = [
                'status' => false,
                'message' => 'Email or Password did not match !',
            ];

            return $this->apiErrorResponse($errorResponse, RESPONSE::HTTP_UNAUTHORIZED);
        }

        $accessTokenTime = Carbon::now()->addDays(30);
        $refreshTokenTime = Carbon::now()->addDays(36);

        $loginResult = [
            'status' => true,
            'access_token' => $user->createToken(name: $user->email, expiresAt: $accessTokenTime)->plainTextToken,
            'refresh_token' => $user->createToken($user->email, expiresAt: $refreshTokenTime)->plainTextToken,
            'expires_at' => $accessTokenTime->getTimestamp(),
            'role' => $user->role,
            'user' => $user,
        ];

        return $this->apiSuccessResponse($loginResult, RESPONSE::HTTP_OK);
    }

    /**
     * Remove the specified resource from storage.
     *
     *
     * @return \Illuminate\Http\Response
     */
    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();

        $response = [
            'success' => true,
            'data' => null,
        ];

        return $this->apiSuccessResponse($response, RESPONSE::HTTP_NO_CONTENT);
    }
}

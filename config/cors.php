<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Cross-Origin Resource Sharing (CORS) Configuration
    |--------------------------------------------------------------------------
    |
    | Here you may configure your settings for cross-origin resource sharing
    | or "CORS". This determines what cross-origin operations may execute
    | in web browsers. You are free to adjust these settings as needed.
    |
    | To learn more: https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS
    |
    */

    'paths' => ['api/*', 'sanctum/csrf-cookie', 'api'],

    'allowed_methods' => ['GET', 'POST', 'PUT', 'DELETE', 'OPTION'],

    'allowed_origins' => ['http://localhost:54465', 'http://localhost'],

    'allowed_origins_patterns' => ['*'],

    'allowed_headers' => ['content-type', 'accept', 'x-custom-header', 'authorization'],

    'exposed_headers' => [],

    'max_age' => 0,

    'supports_credentials' => true,

];
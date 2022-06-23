<?php

namespace App\Models;

class ResponseDefaultModel
{

    public $status;
    public $code;
    public $message;
    public $data;

    public function __construct(bool $status, int $code, string $message, $data) {
        $this->status = $status;
        $this->code = $code;
        $this->message = $message;
        $this->data = $data;
    }
    

}

<?php

class Response
{
    public function json($code, $message, $data)
    {
        $result = array(
            "code" => $code,
            "message" => $message,
            "data" => $data
        );
        return json_encode($result);
    }
}

// 接收参数
$code = $_GET["code"]; // 如果是GET请求就用$_GET POST请求用$_POST 如果POST/GET都用$_REQUEST
$message = $_GET["message"];
$data = $_GET["data"];
//实例化response类
$response = new Response;
//返回数据
echo $response->json($code, $message, $data);
<?php

$data = array(
    'imgUrls' => [
        'http://img.wecdn.cn/flipcloud/UploadDocument/Picture/170113103756aaaaa.png',
        'http://img.wecdn.cn/flipcloud/UploadDocument/Picture/161229203559aaaaaaaaa5.0aa.png',
        'http://img.wecdn.cn/flipcloud/UploadDocument/Picture/170527112847aaaaaa.png'
    ],
    'other' => '123');

$response = array(
    'code' => 200,
    'message' => 'success for request',
    'data' => $data,
);

echo json_encode($response); 
<?php
namespace app\admin\controller;

use think\File;

class Upload extends Base
{
    private $_rule=[
        'size' => 4000000,
        'type' => 'image/gif,image/jpeg,image/bmp',
        'ext' => 'gif,jpg,jpeg,bmp,png,swf',
    ];

    public function index()
    {
        $fileArr = $this->request->file();
        $savePath = './Uploads/Admin/';
        foreach ($fileArr as $key => $fileObj) {
            if(!$fileObj->check($this->_rule)){
                $this->error($fileObj->getError());
            }
            $ret = $fileObj->move($savePath);
            if(false == $ret){
                $error = $fileObj->getError();
                return response(['code'=>600, 'errorFile'=>$error], 600, [], 'json');
            }else{
                $fileName = $savePath.$ret->getSaveName();
                $fileName = ltrim($fileName, '.');
                return response(['code'=>200, 'successFile'=>$fileName], 200, [], 'json');
            }
            break;
        }
    }

    public function multipleUpload()
    {
        $fileArr = $this->request->file();
        $successFiles = [];
        $errorFiles = [];
        $savePath = './Uploads/Admin/';
        foreach ($fileArr as $key => $fileObj) {
            $ret = $fileObj->move($savePath);
            if(false == $ret){
                $errorFiles[] = $fileObj->getError();
            }else{
                $successFiles[] = $savePath.$ret->getSaveName();
            }
        }
        if(!empty($errorFiles)){
            return response(['successFiles'=>$successFiles, 'errorFiles'=>$errorFiles], 600, [], 'json');
        }else{
            return response(['successFiles'=>$successFiles, 'errorFiles'=>$errorFiles], 200, [], 'json');
        }
    }

}

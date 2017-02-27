<?php
namespace app\exwechat\controller;

use youwen\exwechat\exLog;
use youwen\exwechat\exRequest;
use youwen\exwechat\exXMLMaker;
/**
 * 微信消息父控制器
 * 定义基本方法
 */
abstract class AbstractHandle
{
    protected $exRequest;
    public function __construct($content = [])
    {
        if(is_null($this->exRequest)){
            $this->exRequest = exRequest::instance();
        }
    }
    public function handel()
    {
    }

    public function response($content, $type='text')
    {
        switch ($type) {
            case 'text':
                echo (new exXMLMaker())->createText($content);
                exit;
                break;
            
            default:
                # code...
                break;
        }
    }
}

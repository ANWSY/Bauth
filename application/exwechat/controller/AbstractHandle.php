<?php
namespace app\exwechat\controller;

use youwen\exwechat\exLog;
use youwen\exwechat\exRequest;

/**
 * 微信消息父控制器
 * 定义基本方法
 */
abstract class AbstractHandle
{
    private $exRequest;
    public function __construct($content = [])
    {
        if(is_null($this->exRequest)){
            $this->exRequest = exRequest::instance();
        }
    }
    public function handel()
    {
    }
}

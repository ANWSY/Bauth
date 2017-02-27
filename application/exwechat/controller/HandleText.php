<?php
namespace app\exwechat\controller;

use youwen\exwechat\exLog;

/**
 * 微信事件消息－控制器
 *
 */
class HandleText extends AbstractHandle
{

    public function handle($content='')
    {
        $msg = empty($content) ? $this->exRequest->getMsg() : $content;
        $this->response($msg['Content']);
        exit; //不然会有DEBUG信息输出
    }
    
}

<?php
namespace app\exwechat\controller;

use youwen\exwechat\exLog;

/**
 * 微信事件消息－控制器
 *
 */
class HandleDefault extends AbstractHandle
{

    private $msg;
    public function handle($arrayMsg='')
    {
        $this->msg = empty($arrayMsg) ? $this->exRequest->getMsg() : $arrayMsg;
        
        $this->response('暂未开发此类型消息');

        exit; //阻止DEBUG信息输出
    }
}

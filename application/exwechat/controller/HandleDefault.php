<?php
namespace app\exwechat\controller;

use youwen\exwechat\exRequest;
use youwen\exwechat\exLog;

/**
 * 微信事件消息－控制器
 *
 */
class HandleDefault extends AbstractHandle
{

    // private $msg;
    public function handle($arrayMsg='', $reylyContext='暂未开发此类型消息')
    {
        // $this->msg = empty($arrayMsg) ? exRequest::instance()->getMsg() : $arrayMsg;
        
        $this->response($reylyContext);

        exit; //阻止DEBUG信息输出
    }
}

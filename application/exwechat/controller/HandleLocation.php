<?php
namespace app\exwechat\controller;

use youwen\exwechat\exLog;

/**
 * 微信事件消息－控制器
 *
 */
class HandleLocation extends AbstractHandle
{

    private $msg;
    public function handle($arrayMsg='', $reylyContext='暂未开发此类型消息')
    {
        $this->msg = empty($arrayMsg) ? $this->exRequest->getMsg() : $arrayMsg;
        $text = "上传个人位置\n";
        $text .= 'Location_X:'.$this->msg['SendLocationInfo']['Location_X']."\n";
        $text .= 'Location_Y:'.$this->msg['SendLocationInfo']['Location_Y']."\n";
        $text .= 'Scale:'.$this->msg['SendLocationInfo']['Scale']."\n";
        $text .= 'Label:'.$this->msg['SendLocationInfo']['Label']."\n";
        $text .= 'Poiname:'.$this->msg['SendLocationInfo']['Poiname'];
        $this->response($text);

        exit; //阻止DEBUG信息输出
    }
}

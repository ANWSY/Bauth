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
        $this->saveToDB($this->msg);
        $text = "上传个人位置\n";
        $text .= 'Location_X:'.$this->msg['Location_X']."\n";
        $text .= 'Location_Y:'.$this->msg['Location_Y']."\n";
        $text .= 'Scale:'.$this->msg['Scale']."\n";
        $text .= 'Label:'.$this->msg['Label']."\n";
        // $text .= 'Poiname:'.$this->msg['Poiname'];
        $this->response($text);

        exit; //阻止DEBUG信息输出
    }

    // 保存到数据
    // 对应数据库为 msg_text
    public function saveToDB($msg='')
    {
        $data['id'] = '';
        $data['status'] = 1;
        if(isset($msg['SendLocationInfo'])){
            $location = $this->locationSelect($msg);
        }else{
            $location = $this->locationReport($msg);
        }
        $data = array_merge($location,$data);
        $ret = db('we_msg_location')->insert($data);
        return $ret;
    }

    public function locationSelect($msg)
    {
        $location = [];
        $location['ToUserName'] = $msg['ToUserName'];
        $location['FromUserName'] = $msg['FromUserName'];
        $location['CreateTime'] = $msg['CreateTime'];
        $location['MsgType'] = $msg['MsgType'];
        $location['Event'] = $msg['Event'];
        $location['EventKey'] = $msg['EventKey'];
        $location['latitude'] = $msg['SendLocationInfo']['Location_X']; // 纬度
        $location['longitude'] = $msg['SendLocationInfo']['Location_Y']; // 经度
        $location['accuracy'] = $msg['SendLocationInfo']['Scale']; // 精度
        // $location['altitude'] = null;
        $location['Label'] = $msg['SendLocationInfo']['Label'];
        $location['Poiname'] = $msg['SendLocationInfo']['Poiname'];
        return $location;
    }

    public function locationReport($msg)
    {
        $location = [];
        $location['ToUserName'] = $msg['ToUserName'];
        $location['FromUserName'] = $msg['FromUserName'];
        $location['CreateTime'] = $msg['CreateTime'];
        $location['MsgType'] = $msg['MsgType'];
        $location['Event'] = $msg['Event'];
        // $location['EventKey'] = null;
        $location['latitude'] = $msg['Latitude']; // 纬度
        $location['longitude'] = $msg['Longitude']; // 经度
        $location['accuracy'] = $msg['Precision']; // 精度
        // $location['altitude'] = null;
        // $location['Label'] = null;
        // $location['Poiname'] = null;
        return $location;
    }
}

<?php

namespace app\exwechat\controller;

use think\Controller;
use youwen\exwechat\api\JSSDK\JSSDK;

/**
 * JSSDK开发案例
 */
class Demojssdk extends Controller
{

    /**
     * 获取到jsapi_ticket应缓存本地
     * @return [type] [description]
     * @author baiyouwen
     */
    public function index()
    {
        $token = 'ohU0c5NYqySsnLRclt7-so6F5L6qpksZ1Int5s0sHclh9QVLm5tDnG4oMqHi8XH5YwHjKF5_FeMoijARXF1rvrQVeDxDcZyICRq1CpM7MISz7jHF-Ig3cl8uMUatGPEAXJMcABAPBE';
        $class = new JSSDK($token);
        $appId = 'wx70fe57dfaad1a35f';
        // $timestamp = time();
        $timestamp = '1488638082';
        // $nonceStr = $class->createNonceStr();
        $nonceStr = '123456';
        // echo '<pre>';
        // echo $appId,'<br/>',$timestamp,'<br/>',$nonceStr,'<br/>';
        // // print_r( $nonceStr );
        // exit('</pre>');
        // $jsapi_ticket = $class->get_jsapi_ticket();
        $jsapi_ticket = 'sM4AOVdWfPE4DxkXGEs8VA7chf1JZ70Hna9eQyhe7nt8mccytSsdO1rByJOCi5Wz5TlRtO2FsLWo8GMRCvcUig';
        $url = $this->request->url(true);
        $signature = $class->signature($jsapi_ticket, $nonceStr, $timestamp, $url);
        $jsApiList = $class->jsApiList();
        $this->assign('appId', $appId);
        $this->assign('timestamp', $timestamp);
        $this->assign('nonceStr', $nonceStr);
        $this->assign('signature', $signature);
        $this->assign('jsApiList', $jsApiList);
        return $this->fetch();
    }

    public function get_jsapi_ticket()
    {
        $class = new JSSDK($_GET['token']);
        $ret = $class->get_jsapi_ticket();
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }

}

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
        $class = new JSSDK($_GET['token']);
        $appId = 'wx70fe57dfaad1a35f';
        $timestamp = time();
        $nonceStr = $class->createNonceStr();
        // echo '<pre>';
        // echo $appId,'<br/>',$timestamp,'<br/>',$nonceStr,'<br/>';
        // // print_r( $nonceStr );
        // exit('</pre>');
        // $jsapi_ticket = $class->get_jsapi_ticket();
        $jsapi_ticket = 'sM4AOVdWfPE4DxkXGEs8VA7chf1JZ70Hna9eQyhe7nsahOcopfKBZOUztDRa6Zqw2vGCr4eXs_g-HUWCWo7dzQ';
        $url = '';
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

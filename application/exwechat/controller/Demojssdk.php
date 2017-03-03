<?php

namespace app\exwechat\controller;

use youwen\exwechat\api\JSSDK\JSSDK;

/**
 * JSSDK开发案例
 */
class Demojssdk
{

    /**
     * 获取到jsapi_ticket应缓存本地
     * @return [type] [description]
     * @author baiyouwen
     */
    public function index()
    {
        $class = new JSSDK($_GET['token']);
        $ret = $class->get_jsapi_ticket();
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }

}

<?php

namespace app\webhooks\controller;

use youwen\exwechat\exLog;

/**
 * 钩子系统
 * GIT钩子通知此URL
 * 实现自动拉取功能
 */
class Index
{
    public function oschina()
    {
        $json = file_get_contents("php://input");
        exLog::log($json, 'input', ['path'=>'/runtime/log/webhooks/']);
        $arr = json_decode($json, ture);

        if(!isset($arr['password']) || 'youwen2017' == $arr['password']){
            exit('0');
        }
        
    }
}

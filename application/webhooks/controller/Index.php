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
        if(!$this->check_sign()){
            exit();
        }
        $ret = $this->exec_shell();
    }

    public function check_sign()
    {
        return true;
    }

    public function exec_shell()
    {
        return exec("cd /alidata/www/demo.bauth.cn/ && git pull");
    }

    public function check_function()
    {
        $command= ['exec', 'system', 'shell_exec', 'passthru'];
        foreach ($command as $key => $value) {
            if(function_exists($value)){
                echo $value,'-allow',"<Br/>";
            }else{
                echo $value,'-not allow',"<Br/>";
            }
        }
    }

    public function haha()
    {
        echo `pwd`;
    }
}

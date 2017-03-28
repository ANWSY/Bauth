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
        file_put_contents('/alidata/www/demo.bauth.cn/runtime/gitPullSwitch.txt', date('Y-m-d H:i:s')."\n", FILE_APPEND);
    }
    // 权限问题 导致不成功
    public function oschina_promiss()
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

    /**
     * `` 和 shell_exec是一样的
     * @return [type] [description]
     * @author baiyouwen
     */
    public function haha()
    {
        echo `pwd`;
    }
}

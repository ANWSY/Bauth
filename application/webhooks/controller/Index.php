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
        exLog::log($_GET, 'get', ['path'=>'/runtime/log/webhooks/']);
        exLog::log(file_get_contents("php://input"), 'input', ['path'=>'/runtime/log/webhooks/']);
        exit('0');
    }
}

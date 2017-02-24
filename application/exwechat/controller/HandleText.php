<?php
namespace app\exwechat\controller;

use youwen\exwechat\exLog;

/**
 * 微信事件消息－控制器
 *
 */
class HandelText extends AbstractHandle
{

    private $_textMsg = [];

    public function __construct($content = [])
    {
        if(!empty($content)){
            $this->_textMsg = $content;
        }
    }


    public function handle($content='')
    {
        $msg = empty($content) ? $this->_textMsg : $content;
        
    }
    
}

<?php
namespace app\exwechat\controller;

use youwen\exwechat\exLog;
use youwen\exwechat\exRequest;
use youwen\exwechat\exXMLMaker;
/**
 * 微信消息父控制器
 * 定义基本方法
 * @author baiyouwen <youwen21@yeah.net>
 */
abstract class AbstractHandle
{
    protected $exRequest;
    public function __construct()
    {
        if(is_null($this->exRequest)){
            $this->exRequest = exRequest::instance();
        }
    }

    // 此方法用对象更合式
    // 子类必须实现此方法的业务
    public function handel()
    {
    }

    public function response($augment, $type='text')
    {
        switch ($type) {
            case 'text':
                echo (new exXMLMaker())->createText($augment);
                break;
            case 'news':
                echo (new exXMLMaker())->createNews($augment);
                break;
            default:
                echo (new exXMLMaker())->createText('回复消息体类型不可解析');
                break;
        }
    }
}

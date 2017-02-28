<?php
namespace app\exwechat\controller;

use youwen\exwechat\exLog;
use youwen\exwechat\exWechat;
use youwen\exwechat\exRequest;

/**
 * 微信交互控制器
 * @author baiyouwen <youwen21@yeah.net>
 */
class index
{
    // 微信消息对象
    private $exRequest;
    // 数组消息体 － 微信消息对象的局部信息
    private $_msg;

    /**
     * 微信消息入口
     * 
     * @author baiyouwen
     */
    public function index()
    {
        exLog::log($_GET, 'get');
        exLog::log(file_get_contents("php://input"), 'post');
        // 微信消息单例
        $this->exRequest = exRequest::instance();
        // 非正常请求
        $OriginalMsg = $this->exRequest->getOriginalMsg();
        if(empty($OriginalMsg)){
            exLog::log('未获取到消息', 'error');
            exit('empty msg');
        }
        exLog::log($this->exRequest->getOriginalMsg(), 'post');
        // 微信消息控制器
        $exwechat = new exWechat();
        // 接口配置 － 验证
        if (isset($_GET["echostr"])) {
            $redata = $exwechat->authentication();
            exit($redata);
        }
        // 验证签名和消息来源
        // $bool = $exwechat->check();

        // 获取用户发来的消息 － 数组格式
        $this->_msg = $this->exRequest->getMsg();
        // 微信消息分类处理
        $this->_msgTypeHandle();
    }

    /**
     * 微信消息分类处理
     * 消息分类控制器接管后续操作
     * @author baiyouwen
     */
    public function _msgTypeHandle()
    {
        switch ($this->_msg['MsgType']) {
            // 点击菜单与关注
            case 'event':
                $cls = new HandleEvent($this->_msg);
                $ret = $cls->handle();
                break;
            // 文本消息
            case 'text':
                $cls = new HandleText($this->_msg);
                $ret = $cls->handle();
                break;
            // 图片消息
            case 'image':
            // 音频消息
            case 'voice':
            // 视频消息
            case 'video':
            // 链接
            case 'link':
            // 地理位置
            case 'location':
            default:
                $cls = new HandleDefault($this->_msg);
                $ret = $cls->handle();
        }
    }
}

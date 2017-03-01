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
        
        // 微信验证控制器
        $exwechat = new exWechat();
        // 接口配置 和 签名验证
        $ret = $exwechat->authentication();
        if(is_bool($ret)){
            if(!$ret){
                exit('签名验证失败');
            }
        }else{ //接口配置  开发者模式接入
            exit($ret);
        }

        // 微信消息单例 和 验证消息签名
        $this->exRequest = exRequest::instance(2, true);
        if($this->exRequest->errorCode){
            exit($this->exRequest->errorMsg);
        }
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

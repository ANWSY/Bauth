<?php
namespace app\exwechat\controller;

use youwen\exwechat\exLog;
use youwen\exwechat\exWechat;
use youwen\exwechat\exRequest;
use youwen\exwechat\exResponse;

/**
 * 微信交互控制器
 *
 */
class index
{
    private $exRequest;
    private $_data = [];

    public function test()
    {
        echo '<pre>';
        print_r('xx');
        exit('</pre>');
    }
    /**
     * 微信消息入口
     */
    public function index()
    {
        exLog::log($_GET, 'get');
        // 微信消息单例
        $this->exRequest = exRequest::instance();
        exLog::log($this->exRequest->getOriginalMsg(), 'post');
        // 微信消息控制器
        $exwechat = new exWechat();
        // 接口配置 － 验证
        if (isset($_GET["echostr"])) {
            $redata = $exwechat->authentication();
            exit($redata);
        }
        // 获取用户发来的消息 － 数组格式
        $this->_data = $this->exRequest->getMsg();
        // 微信消息分类处理
        $this->_msgTypeHandle();
    }

    /**
     * 微信消息分类处理
     * 以后由分类事件控制器接管
     * @author baiyouwen
     */
    public function _msgTypeHandle()
    {
        switch ($this->_data['MsgType']) {
            // 点击菜单与关注
            case 'event':
                $cls = new HandleEvent($this->_data);
                $ret = $cls->handle();
                break;
            // 文本消息
            case 'text':
                $cls = new HandleText($this->_data);
                $ret = $cls->handle();
                // $this->_text();
                break;
            // 图片消息
            case 'image':
                break;
            // 音频消息
            case 'voice':
                break;
            // 视频消息
            case 'video':
                break;
            // 链接
            case 'link':
                break;
            // 地理位置
            case 'location':
                break;
            default:
                $this->_response('这个类型微信消息还没开发呢！other');
        }
    }

    private function _responseHandle($argument='')
    {
        switch (gettype($argument)) {
            case 'string':
                $this->_handleKeyword($argument);
                break;
            case 'array':
                
                break;
            case 'object':
            case 'resource':
            default:
                return false;
                break;
        }
        return true;
    }
    // 关键词处理
    private function _handleKeyword($keyWord='')
    {
        // 优先关键词
        $ret1 = $this->_priorityKeyword($keyWord);
        // 数据库关键词
        $ret = $this->_dbKeyword($keyWord);
        // 默认消息
        $this->_defaultReply();
    }
    private function _priorityKeyword($keyWord='')
    {
        switch ($keyWord) {
            //部分自定义优先关键字
            case 'subscribe':$this->_response('subscribe');
                break;
            case 'openid':$this->_response($this->_data['FromUserName']);
                break;
            default:
                return false;
        }
        return true;
    }
    private function _dbKeyword()
    {
        return true;
    }
    private function _defaultReply($type='')
    {
        $msg = (new exResponse())->createText($this->_data, $this->_data['Content']);
        echo $msg;
    }

    /** 
     * 微信消息回复_快捷通道
     * @param  [type] $msg  [description]
     * @param  string $type [description]
     * @return [type]       [description]
     * @author baiyouwen
     */
    private function _response($msg, $type='text')
    {
        switch ($type) {
            case 'text':
                $msg = (new exResponse())->createText($this->_data, $msg);
                echo $msg;
                break;
            default:
                return false;
                break;
        }
        return true;
    }
}

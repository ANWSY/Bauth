<?php
namespace app\exwechat\controller;

use youwen\exwechat\exLog;
use youwen\exwechat\exWechat;
use youwen\exwechat\exResponse;

/**
 * 微信交互控制器
 *
 */
class index
{

    private $_data = [];

    public function test()
    {
        echo '<pre>';
        print_r('xx');
        exit('</pre>');
    }
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        exLog::log($_GET, 'get');
        $exwechat = new exWechat();
        //如果是绑定，那只输出绑定结果
        if (isset($_GET["echostr"])) {
            $redata = $exwechat->authentication();
            exit($redata);
        }
        $this->_data = $exwechat->initMsg();
        $this->_requestHandle();
    }

    public function _requestHandle()
    {
        switch ($this->_data['MsgType']) {
            // 点击菜单与关注
            case 'event':$this->_event();
                break;
            // 文本消息
            case 'text':$this->_text();
                break;
            // 图片消息
            case 'image':$this->_image();
                break;
            // 音频消息
            case 'voice':$this->_voice();
                break;
            // 视频消息
            case 'video':$this->_video();
                break;
            // 链接
            case 'link':$this->_link();
                break;
            // 地理位置
            case 'location':$this->_location();
                break;
            default:
                $this->_response_text('这个类型微信消息还没开发呢！other');
        }
    }

    private function _event()
    {
        switch ($this->_data['Event']) {
            // 关注公众号
            case 'subscribe':
                // D('Wevent')->subscribe($this->token, $this->_data);
                $this->_responseHandle('subscribe');
                break;
            // 取消关注公众号
            case 'unsubscribe':
                D('Wevent')->unsubscribe($this->token, $this->_data);
                break;
            // 扫描带参数二维码事件
            case 'scan':break;
            // 上报地理位置事件
            case 'location':break;
            // 自定义菜单事件
            case 'CLICK':break;
            // 模板消息发送成功通知
            case 'TEMPLATESENDJOBFINISH':break;
            // 菜单跳转链接
            case 'VIEW':break;
            // 扫码推事件的事件推送
            case 'scancode_push':break;
            // 扫码推事件且弹出“消息接收中”提示框的事件推送
            case 'scancode_waitmsg':break;
            // 弹出系统拍照发图的事件推送
            case 'pic_sysphoto':break;
            // 弹出拍照或者相册发图的事件推送
            case 'pic_photo_or_album':break;
            // 弹出微信相册发图器的事件推送
            case 'pic_weixin':break;
            // 弹出地理位置选择器的事件推送
            case 'location_select':break;
            default:
                $this->response_text('这个类型事件还没开发呢！event ');
        }
    }

    private function _text()
    {
        // D('Wtext')->save_msg($this->token, $this->_data);
        $this->_responseHandle($this->_data['Content']);
    }

    private function _image()
    {

    }
    private function _voice()
    {

    }
    private function _video()
    {

    }
    private function _link()
    {

    }
    private function _location()
    {

    }

    private function _responseHandle($argument='')
    {
        switch (gettype($argument)) {
            case 'string':
                $this->_handleKeyword();
                break;
            case 'array':
                
                break;
            case 'object':
            case 'resource':
            default:
                return $argument;
                break;
        }
    }
    // 关键词处理
    private function _handleKeyword($keyWord='')
    {
        // 优先关键词
        $this->_priorityKeyword($keyWord);
        // 数据库关键词
        $this->_dbKeyword($keyWord);
        // 默认消息
        $this->_defaultReply();
    }
    private function _priorityKeyword($keyWord='')
    {
        switch ($keyWord) {
            //部分自定义优先关键字
            case 'subscribe':$this->response_text('subscribe');
                break;
        }
        return true;
    }
    private function _dbKeyword()
    {
        return true;
    }
    private function _defaultReply($type='')
    {
        $msg = (new exResponse())->createText($this->_data, 'haha');
        echo '<pre>';
        print_r( $msg );
        exit('</pre>');
    }
}

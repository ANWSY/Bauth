<?php
namespace app\exwechat\controller;

use youwen\exwechat\exLog;

/**
 * 微信事件控制器
 *
 */
class HandleEvent extends AbstractHandle
{

    private $_eventMsg = [];

    public function __construct($content = [])
    {
        if(!empty($content)){
            $this->_eventMsg = $content;
        }
    }


    public function handle($content='')
    {
        $msg = empty($content) ? $this->_eventMsg : $content;
        switch ($msg['Event']) {
            // 关注公众号
            case 'subscribe':

                break;
            // 取消关注公众号
            case 'unsubscribe':

                break;
            // 扫描带参数二维码事件
            case 'scan':break;
            // 上报地理位置事件
            case 'location':break;
            // 自定义菜单事件
            case 'CLICK':
                // $this->_response('你点击了菜单'.$this->_data['EventKey']);
                break;
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
                // $this->_response('这个类型事件还没开发呢！event ', 'text');
        }
    }
    
}

<?php

namespace app\exwechat\controller;

use think\Controller;
use youwen\exwechat\api\accessToken;
use youwen\exwechat\api\account\QRCode;
use youwen\exwechat\api\account\shortUrl;
use youwen\exwechat\api\ips;
use youwen\exwechat\api\menu\menu;
use youwen\exwechat\api\user\user;

class haha extends Controller
{

    public function menuCreate()
    {
        $data = [];
        $data[0] = [
            "type" => "click",
            "name" => "今日歌曲",
            "key" => "V1001_TODAY_MUSIC",
        ];
        $data[1] = [
            "name" => "高级1",
            "sub_button" => [
                [
                    "type"=> "scancode_waitmsg", 
                    "name"=> "扫码带提示", 
                    "key"=> "rselfmenu_0_0", 
                    "sub_button"=>[ ]
                ],
                [
                    "type"=> "scancode_push", 
                    "name"=> "扫码推事件", 
                    "key"=> "rselfmenu_0_1", 
                    "sub_button"=> [ ]
                ],
                [
                    "type"=> "pic_sysphoto", 
                    "name"=> "系统拍照发图", 
                    "key"=> "rselfmenu_1_0", 
                    "sub_button"=> [ ]
                ],
                [
                    "type"=> "pic_photo_or_album", 
                    "name"=> "拍照或相册发图", 
                    "key"=> "rselfmenu_1_1", 
                    "sub_button"=> [ ]
                ],
                [
                    "type"=>"pic_weixin", 
                    "name"=>"微信相册发图", 
                    "key"=>"rselfmenu_1_2", 
                    "sub_button"=>[ ]
                ],
            ],
        ];
        $data[2] = [
            "name" => "高级2",
            "sub_button" => [
                [
                    "name"=> "发送位置", 
                    "type"=> "location_select", 
                    "key"=> "rselfmenu_2_0"
                ],
                [
                    // "type"=> "media_id", 
                    "type"=> "click", 
                    "name"=> "获取一张图片", 
                    // "media_id"=> "MEDIA_ID1"
                    "key" => "还未上传图片",
                ],
                [
                    // "type"=> "view_limited", 
                    "type"=> "click", 
                    "name"=> "打开某图文消息", 
                    // "media_id"=> "MEDIA_ID2"
                    "key" => "还未指定图文",
                ],
                [
                    "type" => "view",
                    "name" => "bauth",
                    "url" => "http://demo.exwechat.com/",
                ]
            ],
        ];
        $menu['button'] = $data;
        // echo '<pre>';
        // print_r( json_encode($menu) );
        // exit('</pre>');
        $class = new menu($_GET['token']);
        $ret = $class->create($menu);
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }
    public function menuDelete()
    {
        $class = new menu($_GET['token']);
        $ret = $class->delete();
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }

    public function menuInfo()
    {
        $class = new menu($_GET['token']);
        $ret = $class->menuInfo();
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }

    public function menuGet()
    {
        $class = new menu($_GET['token']);
        $ret = $class->get();
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }

    public function qrCode()
    {
        $class = new QRCode($_GET['token']);
        $ret = $class->temporaryQR($_GET['scene_id']);
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }

    public function shortUrl()
    {
        $class = new shortUrl($_GET['token']);
        $ret = $class->create($_GET['url']);
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }

    public function remark()
    {
        $token = $_GET['token'];
        $data['openid'] = $_GET['openid'];
        $data['remark'] = $_GET['remark'];
        $class = new user($token);
        $ret = $class->remark($data['openid'], $data['remark']);
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }

    public function getUserBlackList()
    {
        $token = $_GET['token'];
        // $openid = $_GET['openid'];
        $class = new user($token);
        $ret = $class->getBlackList();
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }
    public function getUserInfo()
    {
        $token = $_GET['token'];
        $openid = $_GET['openid'];
        $class = new user($token);
        $ret = $class->getUserInfo($openid);
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }

    public function getUser()
    {
        $token = $_GET['token'];
        $class = new user($token);
        $ret = $class->getUsers();
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }

    public function ips()
    {
        $token = $_GET['token'];
        $class = new ips($token);
        $ret = $class->getIps();
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }

    public function accessToken()
    {
        $appid = 'wx70fe57dfaad1a35f';
        $appsecret = '62df1a5d360ffbe8c8a305b5a712f61e';

        $access = new accessToken($appid, $appsecret);
        $token = $access->getAccessToken();
        echo '<pre>';
        print_r($token);
        exit('</pre>');
    }

    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        //

        $handler = new FileSessionHandler();
        session_set_save_handler(
            array($handler, 'open'),
            array($handler, 'close'),
            array($handler, 'read'),
            array($handler, 'write'),
            array($handler, 'destroy'),
            array($handler, 'gc')
        );

        // the following prevents unexpected effects when using objects as save handlers
        register_shutdown_function('session_write_close');

        session_start();
        // proceed to set and retrieve values by key from $_SESSION
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function xx()
    {
        $handler = new FileSessionHandler();
        session_set_save_handler($handler, true);
        session_start();
    }

}

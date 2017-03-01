<?php

namespace app\exwechat\controller;

use think\Controller;
use think\Request;

use youwen\exwechat\api\accessToken;
use youwen\exwechat\api\ips;
use youwen\exwechat\api\user\user;
use youwen\exwechat\api\account\shortUrl;
use youwen\exwechat\api\account\QRCode;
use youwen\exwechat\api\menu\menu;

class haha extends Controller
{

    public function menuCreate()
    {
        $data = [];
        $data[0]=[
            "type"=>"click",
            "name"=>"今日歌曲",
            "key"=>"V1001_TODAY_MUSIC"
        ];
        $data[1]=[
            "name"=>"菜单",
            "sub_button" => [
                [
                    "type"=>"view",
                    "name"=>"搜索",
                    "url"=>"http://www.soso.com/"
                ],
                [
                    "type"=>"view",
                    "name"=>"exwechat",
                    "url"=>"http://www.exwechat.com/"
                ],
                [
                    "type"=>"view",
                    "name"=>"haha",
                    "url"=>"http://demo.exwechat.com/"
                ],
            ]
        ];
        $menu['button'] = $data;
        // echo '<pre>';
        // print_r( json_encode($menu) );
        // exit('</pre>');
        $class = new menu($_GET['token']);
        $ret = $class->create($menu);
        echo '<pre>';
        print_r( $ret );
        exit('</pre>');
    }

    public function menuInfo()
    {
        $class = new menu($_GET['token']);
        $ret = $class->menuInfo();
        echo '<pre>';
        print_r( $ret );
        exit('</pre>');
    }

    public function menuGet()
    {
        $class = new menu($_GET['token']);
        $ret = $class->get();
        echo '<pre>';
        print_r( $ret );
        exit('</pre>');
    }

    public function qrCode()
    {
        $class = new QRCode($_GET['token']);
        $ret = $class->temporaryQR($_GET['scene_id']);
        echo '<pre>';
        print_r( $ret );
        exit('</pre>');
    }

    public function shortUrl()
    {
        $class = new shortUrl($_GET['token']);
        $ret = $class->create($_GET['url']);
        echo '<pre>';
        print_r( $ret );
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
        print_r( $ret );
        exit('</pre>');
    }

    public function getUserBlackList()
    {
        $token = $_GET['token'];
        // $openid = $_GET['openid'];
        $class = new user($token);
        $ret = $class->getBlackList();
        echo '<pre>';
        print_r( $ret );
        exit('</pre>');
    }
    public function getUserInfo()
    {
        $token = $_GET['token'];
        $openid = $_GET['openid'];
        $class = new user($token);
        $ret = $class->getUserInfo($openid);
        echo '<pre>';
        print_r( $ret );
        exit('</pre>');
    }

    public function getUser()
    {
        $token = $_GET['token'];
        $class = new user($token);
        $ret = $class->getUsers();
        echo '<pre>';
        print_r( $ret );
        exit('</pre>');
    }

    public function ips()
    {
        $token = $_GET['token'];
        $class = new ips($token);
        $ret = $class->getIps();
        echo '<pre>';
        print_r( $ret );
        exit('</pre>');
    }

    public function accessToken()
    {
        $appid = 'wx70fe57dfaad1a35f';
        $appsecret = '62df1a5d360ffbe8c8a305b5a712f61e';

        $access = new accessToken($appid, $appsecret);
        $token = $access->getAccessToken();
        echo '<pre>';
        print_r( $token );
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

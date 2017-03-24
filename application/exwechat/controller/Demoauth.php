<?php

namespace app\exwechat\controller;

use think\Controller;
use youwen\exwechat\api\accessToken;
use youwen\exwechat\api\OAuth\OAuth;

class Demoauth extends Controller
{
    public $appid = '';
    public $secret = '';
    
    public function __construct()
    {
        parent::__construct();
        $weconf = new WechatConfig();
        $this->appid = $weconf->appid;
        $this->secret = $weconf->secret;
    }
    public function index()
    {
        return $this->fetch();
    }

    public function snsapi_base()
    {
        $redirect_uri = url('callback_base','', false, true);
        $scope = 'snsapi_base';
        $state = '123';
        $redirect_uri = urlencode($redirect_uri);
        $OAuth = new OAuth($this->appid, $this->secret);
        $url = $OAuth->getCodeUrl($redirect_uri, $scope, $state);
        header('Location: '.$url);
        exit();
        // $this->assign('url', $url);
        // $this->assign('redirect_uri', $redirect_uri);
        // return $this->fetch();
    }

    public function snsapi_userinfo()
    {
        $redirect_uri = url('callback_userinfo','', false, true);
        $scope = 'snsapi_userinfo';
        $state = '123';
        $redirect_uri = urlencode($redirect_uri);
        $OAuth = new OAuth($this->appid, $this->secret);
        $url = $OAuth->getCodeUrl($redirect_uri, $scope, $state);
        header('Location: '.$url);
        exit();
        // $this->assign('url', $url);
        // $this->assign('redirect_uri', $redirect_uri);
        // return $this->fetch();
    }


    public function callback_base()
    {
        $OAuth = new OAuth($this->appid, $this->secret);
        $ret = $OAuth->getToken($_GET['code']);
        echo '<pre>';
        print_r( $_GET );
        echo '<br/>';
        print_r( $ret );
        exit('</pre>');
    }

    public function callback_userinfo()
    {
        $OAuth = new OAuth($this->appid, $this->secret);
        $ret = $OAuth->getToken($_GET['code']);
        
        $info = $OAuth->getUserInfo($ret['access_token'], $ret['openid']);
        $check = $OAuth->checkToken($ret['access_token'], $ret['openid']);
        $refresh = $OAuth->refreshToken($ret['refresh_token']);
        header("Content-type: text/html; charset=utf-8"); 
        echo '<pre>';
        print_r( $_GET );
        echo '<br/>';
        print_r( $ret );
        echo '<br/>';
        print_r( $info );
        echo '<br/>';
        print_r( $check );
        echo '<br/>';
        print_r( $refresh );
        exit('</pre>');
    }

}

<?php

namespace app\exwechat\controller;

use think\Controller;
use youwen\exwechat\api\accessToken;
use youwen\exwechat\api\OAuth\OAuth;

class Demoauth extends Controller
{
    public $appid = 'wx70fe57dfaad1a35f';
    public $secret = '62df1a5d360ffbe8c8a305b5a712f61e';
    public function index()
    {
        $redirect_uri = url('callback','', false, true);
        $scope = 'snsapi_base';
        $state = '123';
        $redirect_uri = urlencode($redirect_uri);
        $OAuth = new OAuth($this->appid, $this->secret);
        $url = $OAuth->getCodeUrl($redirect_uri, $scope, $state);
        // header('Location: '.$url);
        // exit();
        // echo '<pre>';
        // print_r( $url );
        // exit('</pre>');
        // echo '<pre>';
        // print_r( $url );
        // exit('</pre>');
        $this->assign('url', $url);
        return $this->fetch();
    }

    public function callback()
    {
        echo '<pre>';
        print_r( $_GET );
        exit('</pre>');
    }

}

<?php

namespace app\exwechat\controller;

use youwen\exwechat\api\media\media;
use think\Controller;
/**
 * 微信交互控制器
 * @author baiyouwen <youwen21@yeah.net>
 */
class xxx extends Controller
{
    // 上传临时素材
    public function test()
    {
        echo '<pre>';
        print_r('xx');
        exit('</pre>');
    }

    public function ip()
    {
        $ip = '101.226.103.28';
        if($this->_in_ips($ip)){
            echo '<pre>';
            print_r( 'yes' );
            exit('</pre>');
        }
        exit('no');
    }

    private function _in_ips($ip)
    {
        $num = strrpos($ip, '.');
        $prefix = substr($ip, 0, strrpos($ip, '.'));
        $postfix = substr($ip, strrpos($ip, '.')+1);
        foreach ($this->ips_list as $value) {
            if($prefix == substr($value, 0, $num)){
                $arr = explode('/', substr($value, $num+1));
                sort($arr, SORT_NUMERIC);
                if( $arr[1] > $postfix && $postfix > $arr[0] || $arr[1]==$postfix || $arr[0] == $postfix){
                    return true;
                }else{
                    return false;
                }
            }
        }
        return false;
    }

    private $ips_list =[
        90 => '101.226.103.0/25',
        91 => '101.226.233.128/25',
        92 => '58.247.206.128/25',
        93 => '182.254.86.128/25',
        95 => '103.7.30.64/26',
        96 => '58.251.80.32/27',
        97 => '183.3.234.32/27',
        98 => '121.51.130.64/27'
    ];
}

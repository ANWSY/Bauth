<?php

namespace app\exwechat\controller;

use youwen\exwechat\api\media\media;
use think\Controller;
/**
 * 微信交互控制器
 * @author baiyouwen <youwen21@yeah.net>
 */
class Demomedia extends Controller
{
    // 删除永久素材
    public function del_material()
    {
        $class = new media($_GET['token']);
        $ret = $class->del_material($_GET['media_id']);
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }
    // 获取素材列表
    public function batchget_material()
    {
        $class = new media($_GET['token']);
        $ret = $class->batchget_material($_GET['type'], $_GET['offset'], $_GET['count']);
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }
    // 获取各素材总数统计
    public function get_materialcount()
    {
        $class = new media($_GET['token']);
        $ret = $class->get_materialcount();
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }
    // 获取永久素材文件
    public function get_material()
    {
        $class = new media($_GET['token']);
        $ret = $class->get_material($_GET['media_id']);
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }
    // 上传永久素材
    public function add_material()
    {
        $class = new media($_GET['token']);
        $ret = $class->add_material($_GET['img']);
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }
    // 下载临时素材
    public function tempGet()
    {
        $class = new media($_GET['token']);
        $ret = $class->tempGet($_GET['media_id']);
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }
    // 上传临时素材
    public function tempUpload()
    {
        $class = new media($_GET['token']);
        $ret = $class->tempUpload($_GET['img']);
        echo '<pre>';
        print_r($ret);
        exit('</pre>');
    }
}

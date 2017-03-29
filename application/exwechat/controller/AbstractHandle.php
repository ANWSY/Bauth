<?php
namespace app\exwechat\controller;

use youwen\exwechat\exRequest;
use youwen\exwechat\exXMLMaker;
/**
 * 微信消息父控制器
 * 定义基本方法
 * @author baiyouwen <youwen21@yeah.net>
 */
abstract class AbstractHandle
{
    // exRequest对象  方便子类调用
    protected $exRequest;

    public function __construct()
    {
        if(is_null($this->exRequest)){
            $this->exRequest = exRequest::instance();
        }
    }

    // 此方法用对象更合式
    // 子类必须实现此方法的业务
    public function handel()
    {
    }

    /** 
     * 获取聊天情景
     * @return string 返回用户当前聊天场景
     * @author baiyouwen
     */
    public function getScene($openId, $sceneType='chat')
    {
        // $openId = $this->exRequest->getFromUserName();
        $map['openId'] = $openId;
        $map['sceneType'] = $sceneType;
        return db('we_scene')->where($map)->find();
    }

    /** 
     * 设置用户聊天场景
     * @author baiyouwen
     */
    public function setScene($openId, $sceneValue, $sceneType='chat')
    {
        $data['openId'] = $openId;
        $data['sceneValue'] = $sceneValue;
        $data['sceneType'] = $sceneType;

        $check = db('we_scene')->where(['openId'=>$data['openId'], 'sceneType'=>$data['sceneType']])->find();
        if($check){
            $ret = db('we_scene')->where(['openId'=>$data['openId'], 'sceneType'=>$data['sceneType']])->update($data);
            return $ret;
        }else{
            $ret = db('we_scene')->insert($data);
            return $ret;
        }
    }

    /**
     * 响应信息输出
     * @param  [type] $augment 要返回的内容
     * @param  string $type    输出的信息类型
     * @author baiyouwen
     */
    public function response($augment, $type='text')
    {
        switch ($type) {
            case 'text':
                echo (new exXMLMaker())->createText($augment);
                break;
            case 'news':
                echo (new exXMLMaker())->createNews($augment);
                break;
            default:
                echo (new exXMLMaker())->createText('回复消息体类型不可解析');
                break;
        }
        exit;
    }
}

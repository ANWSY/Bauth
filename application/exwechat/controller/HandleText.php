<?php
namespace app\exwechat\controller;

use youwen\exwechat\exLog;

/**
 * 微信事件消息－控制器
 *
 */
class HandleText extends AbstractHandle
{

    private $msg;
    public function handle($arrayMsg='')
    {
        $this->msg = empty($arrayMsg) ? $this->exRequest->getMsg() : $arrayMsg;
        //获取用户聊天场景
        $scene = $this->getScene();
        if(false !== $scene){
            // to do
        }
        // 优先关键词
        $ret1 = $this->_priorityKeyword($this->msg['Content']);
        if(!$ret1){
            // 数据库关键词
            $ret2 = $this->_dbKeyword($this->msg['Content']);
            if(!$ret2){
                // 默认消息
                $this->_defaultReply();
            }
        }
        // echo '<pre>';
        // var_dump($ret1);
        // print_r($ret1);
        // var_dump($ret2);
        // print_r( $ret2 );
        // exit('</pre>');
        exit; //阻止DEBUG信息输出
    }

    private function _priorityKeyword($keyWord='')
    {
        switch ($keyWord) {
            //部分自定义优先关键字
            case 'subscribe':$this->response('subscribe');
                break;
            case 'openid':$this->response($this->msg['FromUserName']);
                break;
            default:
                return false;
        }
        return true;
    }
    private function _dbKeyword($keyWord='')
    {
        return false;
    }
    private function _defaultReply()
    {
        $this->response($this->msg['Content']);
    }
}

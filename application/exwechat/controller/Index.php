<?php
namespace app\exwechat\controller;


use think\Request;
use youwen\exwechat\exWechat;
use youwen\exwechat\exLog;

/**
 * 微信交互控制器
 *
 */
class index
{
    public function test()
    {
        echo '<pre>';
        print_r( 'xx' );
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
        exLog::log($_POST, 'post');
        $exwechat = new exWechat();
        //如果是绑定，那只输出绑定结果
        if ($_GET["echostr"]) {
            $redata = $exwechat->authentication();
            exit($redata);
        }
        $this->reply();
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        //
    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
        //
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        //
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        //
    }
}

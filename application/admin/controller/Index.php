<?php
namespace app\admin\controller;

use app\lib\Menu;

class Index extends Bash
{
    public function index()
    {
        return $this->fetch('base/index');
    }

    /**
     * 系统介绍
     * @author baiyouwen
     */
    public function introduce()
    {
        return $this->fetch();
    }

    /**
     * 开发者文档
     * @author baiyouwen
     */
    public function developer()
    {
        return $this->fetch();
    }
    // 时间日期案例
    public function datetimepiker_demo()
    {
        return $this->fetch();
    }
    // ajax提交案例
    public function ajaxsubmit_demo()
    {
        return $this->fetch();
    }
    // ajax上传图片案例
    public function ajaxfileupload_demo()
    {
        return $this->fetch();
    }
    // 百度UMeditor案例
    public function umeditor_demo()
    {
        return $this->fetch();
    }
    // 综合案例
    public function multiple_demo()
    {
        return $this->fetch();
    }
    // 菜单模块使用案例
    public function menu_demo()
    {
        $module = 'shop';
        $menu = new Menu();
        $list = $menu->getMenu('', $module, true);
        $this->assign('list', $list);
        return $this->fetch();
    }
}

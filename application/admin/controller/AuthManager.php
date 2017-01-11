<?php
namespace app\admin\controller;

use app\admin\model\AuthGroup;

class AuthManager extends Bash
{
    /**
     * 权限首页
     * @return   [type]                   [description]
     * @author baiyouwen 
     * @DateTime 2016-07-01T15:24:42+0800
     */
    public function index()
    {
        $map = ['module'=>'admin', 'status'=>['EGT', 0]];
        $list = db('AuthGroup')->where($map)->order('id asc')->paginate(10);
        $this->assign('_list', $list);
        return $this->fetch();
    }

    /**
     * 新添加用户组
     * @return   [type]                   [description]
     * @author baiyouwen 
     * @DateTime 2016-07-01T15:24:57+0800
     */
    public function createGroup(){
        $this->assign('auth_group',array('title'=>null,'id'=>null,'description'=>null,'rules'=>null,));//排除notice信息
        return $this->fetch('editgroup');
    }

    /**
     * 编辑用户组
     * @return   [type]                   [description]
     * @author baiyouwen 
     * @DateTime 2016-07-01T15:25:13+0800
     */
    public function editGroup(){
        $id = input('id');
        $auth_group = db('AuthGroup')->where(['module'=>'admin','type'=>1])->find($id);
        $this->assign('auth_group',$auth_group);
        return $this->fetch();
    }

    /**
     * 更新用户组信息
     * @return   [type]                   [description]
     * @author baiyouwen 
     * @DateTime 2016-07-01T15:25:26+0800
     */
    public function updateGroup()
    {
        $id = input('id', 0);
        if(empty($id)){
            $model = new AuthGroup();
            $model->module = input('module', 'admin');
            $model->type = 1;
            $ret = $model->save($this->request->param(false));
        }else{
            $model = AuthGroup::get($id);
            $ret = $model->save($this->request->param(false), ['id'=>$id]);
        }
        if($ret !== false){
            return $this->success('更新成功', url('authManager/index'));
        }else{
            $this->error('操作失败');
        }
    }

    /**
     * 用户组授权管理
     * @return   [type]                   [description]
     * @author baiyouwen 
     * @DateTime 2016-07-01T15:25:42+0800
     */
    public function access(){
        $module = input('module', 'admin');
        $auth_group = db('auth_group')->where( array('status'=>array('egt','0'),'type'=>1) )->field('id,title,rules')->select();
        $menuList = db('menu')->order('module')->select();
        $menuTree = list_to_tree($menuList,$pk='id',$pid='pid',$child='_child',$root=0);
        $this_group = $this->_selectOneGroup($auth_group, $this->request->param('group_id'));
        $this->assign('menu_module',  $module);
        $this->assign('node_list',  $menuTree);
        $this->assign('auth_group', $auth_group);
        $this->assign('this_group', $this_group);
        return $this->fetch();
    }

    /**
     * 查看用户所有权限
     * @author baiyouwen
     */
    public function userAccessView()
    {
        $uid = $this->inputOrError('uid');

        $groupids = '';
        $rules = '';

        $allGroup = db('auth_group')->field('id,title')->where(['status'=>1])->select();
        $sql ="SELECT `id`,`rules` FROM `think_auth_group_access` AS a, `think_auth_group` AS g WHERE a.uid=$uid AND a.group_id=g.id AND g.status=1";
        $ruleList = db('')->query($sql);

        if($ruleList){
            foreach($ruleList as $value){
                $groupids .= $value['id'].',';
                $rules .= $value['rules'].',';
            }
            $groupids = rtrim($groupids, ',');
            $rules = rtrim($rules, ',');
            $tempArr = array_unique(explode(',', $rules));
            $rules = implode(',', $tempArr);
        }
        $menuList = db('menu')->order('module')->select();
        $menuTree = list_to_tree($menuList,$pk='id',$pid='pid',$child='_child',$root=0);
        $this->assign('_allGroup',  $allGroup);
        $this->assign('_groupids',  $groupids);
        $this->assign('node_list',  $menuTree);
        $this->assign('_rules',  $rules);
        return $this->fetch();
    }
    /**
     * 用户组授权更新
     * @return   [type]                   [description]
     * @author baiyouwen 
     * @DateTime 2016-07-01T15:28:26+0800
     */
    public function updateAccess()
    {
        $id = input('id', 0);
        $rules = isset($_POST['rules'])?$_POST['rules']:[];
        sort($rules);
        $ruleIds = implode(',', $rules);
        // echo '<pre>';
        // print_r($ruleIds );
        // exit('</pre>');
        $ret = db('auth_group')->where(['id' => $id])->update(['rules' => $ruleIds]);
        if($ret !== false){
            return $this->success('成功', url('index'));
        }else{
            $this->error('失败');
        }
    }

    /**
     * 根据菜单更新权限表
     * @return   [type]                   [description]
     * @author baiyouwen 
     * @DateTime 2016-07-01T15:26:32+0800
     */
    public function updateRules(){
        $menuNode = $this->_getMenuNode();
        $ruleList = db('auth_rule')->where(['status'=>1])->select();

        $nameUrl = $this->_getAuthUrl($ruleList);
        $newRules = [];

        foreach ($menuNode as $mk=>$v){
            if(in_array($mk, $nameUrl)){

            }else{
                $newRules[] = $v;
            }
        }
        $ret = db('auth_rule')->insertAll($newRules);
        return $ret;
    }

    //获取最新菜单转成的权限列表
    public function _getMenuNode()
    {
        $menus = db('menu')->field('id,title,pid,url,tip,hide,module')->select();
        $nodes = [];
        $i = 0;
        foreach($menus as $k=>$v){
            $nodes[$i]['module'] = $v['module'];
            $nodes[$i]['type'] = $v['pid'] ? 1: 2;
            $nodes[$i]['name'] = $v['module'].'/'.$v['url'];
            $nodes[$i]['title'] = $v['title'];
            $nodes[$i]['status'] = 1;
            $nodes[$i]['menu_id'] = $v['id'];
            $nodes[$i]['menu_pid'] = $v['pid'];
            $i++;
        }
        return $nodes;
    }
    //获取权限所有的URL
    public function _getAuthUrl($ruleList)
    {
        if(empty($ruleList)){
            return [];
        }
        return array_column($ruleList, 'name');
    }

    /**
     * 所属分组用户列表
     * @return   [type]                   [description]
     * @author baiyouwen 
     * @DateTime 2016-07-01T16:19:36+0800
     */
    public function groupUsers()
    {
        $group_id = $this->inputOrError('group_id');
        $auth_group = db('auth_group')->where( array('status'=>array('egt','0'),'module'=>'admin') )->field('id,id,title,rules')->select();

        $this_group = $this->_selectOneGroup($auth_group, $group_id);
        $group_users = AuthGroup::groupUsers($group_id);

        $this->assign('this_group', $this_group);
        $this->assign('auth_group', $auth_group);
        $this->assign('group_users', $group_users);
        return $this->fetch() ;
    }

    private function _selectOneGroup(&$auth_group, $group_id)
    {
        foreach ($auth_group as $v){
            if($group_id == $v['id']){
                return $v;
            }
        }
        return false;
    }

    public function addToGroup()
    {
        $uid = $this->inputOrError('uid');
        $group_id = $this->inputOrError('group_id');
        if(is_admin($uid)){
            $this->error('此用户是超级管理员', '');
        }
        // if(!is_member($uid)){
        //     $this->error('无此用户', '');
        // }
        // if(!group_id_exists($group_id)){
        //     $this->error('无此用户组', '');
        // }
        if(db('auth_group_access')->where(['uid'=>$uid, 'group_id'=>$group_id])->find()){
            $this->error('已存在此授权', '');
        }
        $ret = db('auth_group_access')->insert(['uid'=>$uid, 'group_id'=>$group_id]);
        if(false !== $ret){
            return $this->success('操作成功');
        }else{
            $this->error('操作失败');
        }
    }

    public function removeFromGroup()
    {
        $uid = $this->inputOrError('uid');
        $group_id = $this->inputOrError('group_id');
        if(db('auth_group_access')->where(['uid'=>$uid, 'group_id'=>$group_id])->delete()){
            return $this->success('成功移除用户授权');
        }else{
            $this->error('操作失败', '');
        }
    }

}

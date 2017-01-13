<?php
namespace app\admin\model;

use think\Model;
use think\Session;

class Administrator extends Model{
    protected $table = 'think_administrator';

    //获取用户信息
    public function loginInfo()
    {
        return Session::get('userInfo', false);
    }

    //用户登录
    public function login($username, $password)
    {
        $ret = $this->where(['username'=>$username])->find();
        if(!$ret){
            $this->error('用户不存在');
        }
        if($ret['status'] != "1"){
            $this->error('用户状态异常');
        }
        if($ret['password'] !== $this->encryptPassword($password)){
            $this->error('密码不正确');
        }

        Session::set('userInfo', $ret->toArray());
        return true;
    }

    //用户退出
    public function logout()
    {
        Session::delete('userInfo');
        return true;
    }

    /**
     * 重置用户密码
     * @author baiyouwen 
     */
    public function resetPassword($uid,$NewPassword)
    {
        $passwd = $this->encryptPassword($NewPassword);
        $ret = $this->where(['id'=>$uid])->update(['password'=>$passwd]);
        return $ret;
    }

    // 密码加密
    protected function encryptPassword($password, $salt='', $encrypt='md5')
    {
        return $encrypt($password.$salt);
    }
}
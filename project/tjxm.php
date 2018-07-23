<?php
if(!defined('GZPHP')) exit('');
/*
 * @author          LiZHenQiu QQ:3207885181 <admin@resonance.com.cn>
 * @copyright       Copyright (c) 2008-2015  (http://www.resonance.com.cn)
 * @license         http://www.resonance.com.cn/license.txt
 * @version         GzPHP企业网站管理系统 v2.1 2011-03-01 resonance.com.cn $
 */
if($_POST['xm_name'] && $_POST['xm_info']){
    //dump($_POST);
    $_POST['xm_user']=$user_login_name;
	$_POST['uid']=$user_login_uid+0;
    $_POST['xm_time']=date("Y-m-d H:i:s");
    $data='uid,xm_name,xm_info,xm_time,xm_user';
    $MYSQL->_sql_insert('xm',$data,$_POST);
    echo '<script language="javascript" type="text/javascript">window.top.location.href="./";</script>';
    exit;
}
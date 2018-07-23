<?php
if(!defined('GZPHP')) exit('');
/*
 * @author          LiZHenQiu QQ:3207885181 <admin@resonance.com.cn>
 * @copyright       Copyright (c) 2008-2015  (http://www.resonance.com.cn)
 * @license         http://www.resonance.com.cn/license.txt
 * @version         GzPHP企业网站管理系统 v2.1 2011-03-01 resonance.com.cn $
 */
//error_reporting(0);
setcookie('name', $_POST['username'],time()-3600*2400);
setcookie('login_ip', $login_ip,time()-3600*2400);
setcookie('login_salt', $login_salt,time()-3600*2400);
$a=_get('a');
//登录验证
if($_POST['to']=='log' && $_POST['username'] && $_POST['p']){
	//dump($_POST);
	$name='name=\''.$_POST['username'].'\'';
	$name_h=$MYSQL->_sql_select('*','user',$name,'uid','1','1');
	//dump($name_h);
	$salt=$name_h['0']['salt'];
	$pas=$name_h['0']['pas'];
	$uid=$name_h['0']['uid'];
	$lock=$name_h['0']['lock'];
	$_POST['p']=md5($_POST['p'].md5($salt));
	if($_POST['p']==$pas && $lock) {
		$login_salt=md5(_salt(9));
		$login_ip=_getIP();
		$MYSQL->_sql_update('user','login_salt=\''.$login_salt.'\',login_ip=\''.$login_ip.'\',login_time=NOW()','uid='.$uid,'1');
		setcookie('uid', $uid,time()+3600*2400);
		setcookie('login_ip', $login_ip,time()+3600*2400);
		setcookie('login_salt', $login_salt,time()+3600*2400);
		echo '<script language="javascript" type="text/javascript">window.location.href="/?index=index";</script>';
	}
	else{
		echo '<script language="javascript" type="text/javascript">alert(\'帐号或密码错误！或帐号被锁定！\');window.location.href="/?index=login";</script>';
	}
	exit;
}
//注册会员
else if($_POST['to']=='reg' && $_POST['name'] && $_POST['pas'] && $_POST['passwt'] && ($_POST['qq']+0) && ($_POST['pas']==$_POST['passwt'])){
	$name_r=$MYSQL->_sql_count('select name from user where name=\''.$_POST['name'].'\' limit 1');
	if($name_r) exit;
	$_POST['re_time']=date("Y-m-d H:i:s");
	$_POST['salt']=_salt(9);
	$_POST['login_ip']=_getIP();
	$_POST['login_salt']=md5(_salt(9));
	$_POST['pas']=md5($_POST['pas'].md5($_POST['salt']));
	$_POST['login_time']=$_POST['re_time'];
	$data='name,pas,qq,tel,bm,re_time,salt,login_ip,login_salt,login_time';
	$MYSQL->_sql_insert('user',$data,$_POST);
	//setcookie('name', $_POST['name'],time()+3600*2400);
	//setcookie('login_ip', $_POST['login_ip'],time()+3600*2400);
	//setcookie('login_salt', $_POST['login_salt'],time()+3600*2400);
	//dump($_POST);
	echo '<script language="javascript" type="text/javascript">alert(\'注册成功！请登录！\');window.location.href="/?index=login";</script>';
	exit;
}
//检查是否存在用户名
else if($a=='user'){
	//echo _get('uid');
	$name=_get('name');
	if($name) $name_r=$MYSQL->_sql_count('select name from user where name=\''.$name.'\' limit 1');
	if($name_r) echo 'have the name';
	//$MYSQL->_sql_select('*','user',$user,'uid','1','1');
	exit;
}








if($_POST['uid'] && $_POST['pas']){
	$uid=$_POST['uid']+0;
	$pas=$_POST['pas'];
	$sql='SELECT * FROM user WHERE uid = '.$uid.' limit 1';
	$row=@mysql_fetch_array(@mysql_query($sql));
	if(md5($pas.$row['salt']) == $row['pas']){
		setcookie('uid', $uid);
		setcookie('login_salt', md5(mt_rand()));
		$sql = 'UPDATE user SET logined = "'.$_COOKIE['logined'].'", login_time = NOW() WHERE uid = '.$uid;
		@mysql_query($sql);
		echo '<script>window.location.href="./";</script>';
	}
}
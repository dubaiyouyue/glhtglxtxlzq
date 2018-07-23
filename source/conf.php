<?php
if(!defined('GZPHP')) exit('Error:function201111251');
ini_set("display_errors", "Off");
error_reporting(E_ALL | E_STRICT);
/*
 * @author          LiZHenQiu QQ:3207885181 <admin@resonance.com.cn>
 * @copyright       Copyright (c) 2008-2015  (http://www.resonance.com.cn)
 * @license         http://www.resonance.com.cn/license.txt
 * @version         GzPHP企业网站管理系统 v2.1 2015-03-01 resonance.com.cn $
 */

/*
$dsn = 'mysql:dbname=gzgl;host=127.0.0.1';
$user = 'root';
$password = 'root';

try {
    $dbh = new PDO($dsn, $user, $password);
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}
*/
$con = @mysql_connect("localhost","glhtglxtxlzq","J5E8t2Q6");
if (!$con)	exit('');
@mysql_select_db("glhtglxtxlzq", $con);
@mysql_query("set names 'utf8'");

$login=0;
$name_r=0;
if((($_COOKIE['uid'])+0) && isset($_COOKIE['login_ip']) && isset($_COOKIE['login_salt'])){
	//$name_r=$MYSQL->_sql_count('select uid from user where uid=\''.$_COOKIE['uid'].'\' and login_ip=\''.$_COOKIE['login_ip'].'\' and login_salt=\''.$_COOKIE['login_salt'].'\' limit 1');
	$user_login=$MYSQL->_sql_select('*','user','uid=\''.$_COOKIE['uid'].'\'','uid','1','1');
	$user_login_ip=$user_login['0']['login_ip'];
	$user_login_salt=$user_login['0']['login_salt'];
	$user_login_name=$user_login['0']['name'];
	$user_login_uid=$user_login['0']['uid'];
	$user_login_tel=$user_login['0']['tel'];
	$user_login_qq=$user_login['0']['qq'];
	if(($user_login_ip==$_COOKIE['login_ip']) && ($user_login_salt==$_COOKIE['login_salt'])) $login=1;
}

//部门名称
$bm_arr=array('1'=>'技术部','2'=>'商务部','3'=>'设计部','4'=>'策划部','5'=>'总经办');
//管理员id
$admin=0;
$admin_css='cssnone';
$admin_user_id=array('8','11','25');
if(in_array($user_login_uid,$admin_user_id)) {
	$admin=1;
	$admin_css='';
}

//进行中的项目'
$xm_arr_n=$MYSQL->_sql_count('select id from xm where xm_id=0 and xm_zt=0');

//需要修复的bug
$xm_bug_n=$MYSQL->_sql_count('select id from xm where xm_id=0 and xm_zt=2');
//更新随机字符串
$sj_zzfd=rand(10000,9999990);








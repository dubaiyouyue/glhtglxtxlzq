<?php
if(!defined('GZPHP') || !$admin) exit('');
/*
 * @author          LiZHenQiu QQ:3207885181 <admin@resonance.com.cn>
 * @copyright       Copyright (c) 2008-2015  (http://www.resonance.com.cn)
 * @license         http://www.resonance.com.cn/license.txt
 * @version         GzPHP企业网站管理系统 v2.1 2011-03-01 resonance.com.cn $
 */
$t_name=_get('t_name');
$t_v=_get('t_v');
$id=_get('id')+0;
$sql='UPDATE tech SET '.$t_name.'=\''.$t_v.'\' WHERE id = '.$id.' limit 1';
if(!$t_name || !$t_v || !$id) {
	echo '<script>alert("error false!");window.location.href="./?index=sx";</script>';
	exit();
}
else if(@mysql_query($sql)){
	echo '<script>alert("this ok!");window.location.href="./?index=sx";</script>';
	exit();
}else{
	exit('no');
}
exit('error:sql_in');
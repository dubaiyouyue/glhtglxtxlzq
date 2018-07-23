<?php
if(!defined('GZPHP') || !$admin) exit('');
/*
 * @author          LiZHenQiu QQ:3207885181 <admin@resonance.com.cn>
 * @copyright       Copyright (c) 2008-2015  (http://www.resonance.com.cn)
 * @license         http://www.resonance.com.cn/license.txt
 * @version         GzPHP企业网站管理系统 v2.1 2011-03-01 resonance.com.cn $
 */
$id=_get('id')+0;
$mod=_get('mod');
$zt=1;
if($mod=='yc') $zt=2;
$sql='update tech set zt='.$zt.' where id='.$id.' limit 1';
if($id && $mod && @mysql_query($sql)){
	echo '<script>alert("this ok!");window.location.href="./?index=sx&mod=zxg";</script>';
	exit();
}
else{
	echo '<script>alert("error false!");window.location.href="./?index=sx";</script>';
	exit();
}
<?php
if(!defined('GZPHP') || !$admin) exit('');
/*
 * @author          LiZHenQiu QQ:3207885181 <admin@resonance.com.cn>
 * @copyright       Copyright (c) 2008-2015  (http://www.resonance.com.cn)
 * @license         http://www.resonance.com.cn/license.txt
 * @version         GzPHP企业网站管理系统 v2.1 2011-03-01 resonance.com.cn $
 * 
 */
$sql='INSERT INTO tech (zt_time) VALUES (NOW())';
if(@mysql_query($sql)){
	echo '<script>window.location.href="./?index=sx";</script>';
	exit();
}
else{
	echo '<script>alert("error false!");window.location.href="./?index=sx";</script>';
	exit();
}


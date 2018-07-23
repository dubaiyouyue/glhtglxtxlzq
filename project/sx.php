<?php
if(!defined('GZPHP') || !$admin) exit('');
/*
 * @author          LiZHenQiu QQ:3207885181 <admin@resonance.com.cn>
 * @copyright       Copyright (c) 2008-2015  (http://www.resonance.com.cn)
 * @license         http://www.resonance.com.cn/license.txt
 * @version         GzPHP企业网站管理系统 v2.1 2015-03-01 resonance.com.cn $
 */
//获取列表内容
$mod=_get('mod');
$sql='select * from tech where zt=1 order by id desc';
$zt_str='隐藏';
$zt_url='yc';
if($mod=='yc') {
	$sql='select * from tech where zt=2 order by zt_time desc';
	$zt_str='显示';
	$zt_url='xs';
}
if(_get('s')=='dq') $sql='select * from tech where zt=1 order by out_date asc';
if($mod=='zxg') {
	$sql='select * from tech order by zt_time desc';
	$zt_str='';
	$zt_url='';
}
$TBS->MergeBlock('tech_all_list','mysql',$sql);
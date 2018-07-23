<?php
/*
 * @author          LiZHenQiu QQ:3207885181 <admin@resonance.com.cn>
 * @copyright       Copyright (c) 2008-2015  (http://www.resonance.com.cn)
 * @license         http://www.resonance.com.cn/license.txt
 * @version         GzPHP企业网站管理系统 v2.1 2015-03-01 resonance.com.cn $
 */
define('GZPHP', 'true');
//引用核心文件
include_once(dirname(__FILE__).'/source/function.php');
include_once(dirname(__FILE__).'/source/conf.php');
//模板文件名变量需要在此前定义
$index=_get('index')?_get('index'):'index';
if(!$login) $index='login';
if(file_exists('template/'.$index.'.htm'))	$TBS->LoadTemplate('template/'.$index.'.htm');
//输出数组
if(file_exists('project/'.$index.'.php'))	include_once('project/'.$index.'.php');
	include_once('project/lang.php');
//输出模板
$TBS->Show();
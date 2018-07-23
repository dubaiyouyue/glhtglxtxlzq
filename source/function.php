<?php
/*
 * @author          LiZHenQiu QQ:3207885181 <admin@resonance.com.cn>
 * @copyright       Copyright (c) 2008-2015  (http://www.resonance.com.cn)
 * @license         http://www.resonance.com.cn/license.txt
 * @version         GzPHP企业网站管理系统 v2.1 2011-03-01 resonance.com.cn $
 */
if(!defined('GZPHP')) exit('Error:function201111251');
include_once(dirname(__FILE__).'/class/mysql_class.php');
$MYSQL = new mysql;
//========加载模板引擎
include_once(dirname(__FILE__).'/class/tbs_class.php');
$TBS = new clsTinyButStrong;

//MYSQL 写入数据库
function _sql_insert($table,$name,$v){
	$data_t=explode(',',$name);
	$data_t_n=count($data_t);
	$data='';
	for ($i=0; $i < $data_t_n; $i++) {if(!$v[$data_t[$i]]) $v[$data_t[$i]]=0; $data.='\''.$v[$data_t[$i]].'\',';}
	$data=substr($data,0,-1);
	//return $data;
	//$name=str_replace(',','\',\'',$name);
	//$name='\''.$name.'\'';
	$sql='INSERT INTO '.$table.' ('.$name.') VALUES ('.$data.')';
	@mysql_query($sql);
}


//方法 函数
function _get($field){
	if(isset($_GET[$field])&&is_array($_GET[$field]))return $_GET[$field];
    return isset($_GET[$field])?mysql_escape_string($_GET[$field]):'';
}

function _post($field){
	if(isset($_POST[$field])&&is_array($_POST[$field]))return $_POST[$field];
    return isset($_POST[$field])?mysql_escape_string($_POST[$field]):'';
}

function _sqls($sql,$data=array()){
	global $dbh;
	//echo $sql.'<br>';
	$sth=$dbh->prepare($sql);
	$sth->execute($data);
	$r = $sth->fetchAll(PDO::FETCH_ASSOC);
	$sth->closeCursor();
	$action=strtoupper(substr($sql,0,6));
	$result=$action=='SELECT'?$r:($action=='DELETE'||$action=='UPDATE'?$sth->rowCount():($action=='INSERT'?$dbh->lastInsertId():$r));
	$dbh->lastSql=$sql;
    return $result;
}

//保存文件到服务器
//$files:$_FILES，$path：保存的路径,以/结尾 $file_name：文件名(可选)
function save_files($files,$path,$file_name=''){
	if(!is_dir($path))mkdir($path);
	$d=array();
	//多文件上传
	if(is_array($files) && isset($files['name']) && is_array($files['name'])){
		foreach($files['name'] as $k=>$v){
			if($files['error'][$k]>0)continue;
			$info=pathinfo($v);
			$ext=$info['extension'];
			$file_name=$file_name?$file_name.'.'.$ext:dechex(substr(time(),3)).rand(11,99).chr(rand(65,90)).'.'.$ext;
			$d[]=$new_name=$path.$file_name;
			move_uploaded_file($files['tmp_name'][$k],$new_name);
		}
	}else{
		if($files['error']>0)return $d;
		$info=pathinfo($files['name']);
		$ext=$info['extension'];
		$file_name=$file_name?$file_name.'.'.$ext:dechex(substr(time(),3)).rand(11,99).chr(rand(65,90)).'.'.$ext;
		$d[]=$new_name=$path.$file_name;
		move_uploaded_file($files['tmp_name'],$new_name);
	}
	return $d;
}

//mysql_add 简写insert
function mysql_add($table,$data,$returnSql=false){
	$fields=array_keys($data);
	$values=array_values($data);
	foreach($values as &$v){
		$v=mysql_escape_string($v);
	}
	$sql="insert into `{$table}` (`".join('`,`',$fields)."`) values ('".join("','",$values)."');";
	if($returnSql)return $sql;
	return _sqls($sql);
}

//mysql_edit 简写update
function mysql_edit($table,$data,$where='',$returnSql=false){
	if(is_array($data)){
		$fields=array();
		foreach($data as $k=>&$v){
			$fields[]="`".trim($k)."`='".trim(mysql_escape_string($v))."'";		
		}
		$data=join(',',$fields);
	}
	$sql="update `$table` set ".$data;
	if($where)$sql.=' where '.$where;
	if($returnSql)return $sql;
	return _sqls($sql);
}

//删除记录
function mysql_del($table,$where='',$returnSql=false){
	$sql="delete from `{$table}`";
	if($where)$sql.=' where '.$where;
	if($returnSql)return $sql;
	return _sqls($sql);
}

//数据库统计资料
//$where：where id=1 and uid=2
function _sum($table,$where='',$psize=20,$page=1){
	$sql="select count(*) from `{$table}` {$where}";
	$r=_sqls($sql);
	$rcount=$r?$r[0]['count(*)']:0;
	$pcount=ceil($rcount/$psize);
	return array('rcount'=>$rcount,'pcount'=>$pcount,'psize'=>$psize,'page'=>$page);
}

function dump($vars, $label = '', $return = false) { 
    if (ini_get('html_errors')) { 
        $content = "<pre>\n"; 
        if ($label != '') { 
            $content .= "<strong>{$label} :</strong>\n"; 
        } 
        $content .= htmlspecialchars(print_r($vars, true)); 
        $content .= "\n</pre>\n"; 
    } else { 
        $content = $label . " :\n" . print_r($vars, true); 
    } 
    if ($return) { return $content; } 
    echo $content; 
    return null; 
}
//show
function show($arg){var_dump($arg);}
//alert
function alert($str,$url=''){
	if(is_numeric($url)){
		$url="self.history.go($url)";
	}elseif($url){
		$url="self.location.href='$url';";
	}
	$str=htmlspecialchars($str);
	die("<script>alert('$str');$url</script>");
}

function _arr($str,$an){
    global $PingYing;
    $arr=explode('@',$str);
    $arr_n=count($arr);
    $i=0;
    $trr=array();
    while ($i<$arr_n) {
        $trr[$i][$an]=$arr[$i];
        $i++;
    }
    return $trr;
}

function _gl($str){//过滤
    $str = strip_tags($str);
    $str = str_ireplace(" ","",$str);
    $str = str_ireplace("\n","",$str);
    $str = str_ireplace("\r","",$str);
    $str = str_ireplace("'","",$str);
    $str = str_ireplace('"',"",$str);
    $str = str_ireplace("or","",$str);
    $str = str_ireplace("and","",$str);
    $str = str_ireplace("#","",$str);
    $str = str_ireplace("\\","",$str);
    $str = str_ireplace("\"", "",$str);
    $str = str_ireplace("-- ","",$str);
    $str = str_ireplace("null","",$str);
    $str = str_ireplace("%","",$str);
    $str = str_ireplace("_","",$str);
    $str = str_ireplace(">","",$str);
    $str = str_ireplace("<","",$str);
    $str = str_ireplace("=","",$str);
    $str = str_ireplace("char","",$str);
    $str = str_ireplace("declare","",$str);
    $str = str_ireplace("select","",$str);
    $str = str_ireplace("create","",$str);
    $str = str_ireplace("delete","",$str);
    $str = str_ireplace("insert","",$str);
    $str = str_ireplace("execute","",$str);
    $str = str_ireplace("update","",$str);
    $str = str_ireplace("count","",$str);
    return $str;
}
function _salt($length) {
// 密码字符集，可任意添加你需要的字符
$chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
$password = '';
for ( $i = 0; $i < $length; $i++ )
{  
// 这里提供两种字符获取方式
// 第一种是使用 substr 截取$chars中的任意一位字符
// 第二种是取字符数组 $chars 的任意元素 
// $password .= substr($chars, mt_rand(0, strlen($chars) – 1), 1);
$password .= $chars[ mt_rand(0, strlen($chars) - 1) ];
}
return $password;
}
// 定义一个函数getIP()
function _getIP(){
    if(!empty($_SERVER["HTTP_CLIENT_IP"])){
    $cip = $_SERVER["HTTP_CLIENT_IP"];
    }
    else if(!empty($_SERVER["HTTP_X_FORWARDED_FOR"])){
    $cip = $_SERVER["HTTP_X_FORWARDED_FOR"];
    }
    else if(!empty($_SERVER["REMOTE_ADDR"])){
    $cip = $_SERVER["REMOTE_ADDR"];
    }
    else{
    $cip = '';
    }
    preg_match("/[\d\.]{7,15}/", $cip, $cips);
    $cip = isset($cips[0]) ? $cips[0] : 'unknown';
    unset($cips);
        $ipp=_ip2long($cip);
    return $ipp;
}

 
function _ip2long($ip_address){
    return sprintf("%u",ip2long($ip_address));
}

/**
 *获取客户端的真实IP
 *@return String IP address eg:127.0.0.1
 *@author MrTuzi <5025379@qq.com>
 */
function get_client_ip($ip=''){
	if (getenv("HTTP_CLIENT_IP") && strcasecmp(getenv("HTTP_CLIENT_IP"), "unknown")){
		$ip = getenv("HTTP_CLIENT_IP");
	}elseif(getenv("HTTP_X_FORWARDED_FOR") && strcasecmp(getenv("HTTP_X_FORWARDED_FOR"), "unknown")){
		$ip = getenv("HTTP_X_FORWARDED_FOR");
	}elseif(getenv("REMOTE_ADDR") && strcasecmp(getenv("REMOTE_ADDR"), "unknown")){
		$ip = getenv("REMOTE_ADDR");
	}elseif(isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], "unknown")){
		$ip = $_SERVER['REMOTE_ADDR'];
	}else{
		$ip='127.0.0.1';
	}
	
	return $ip;
}

function get_locate($ip=''){
	$ip_url='http://api.map.baidu.com/location/ip?ak=F454f8a5efe5e577997931cc01de3974';
	if($ip)$ip_url.='&ip='.$ip;
	$json=json_decode(file_get_contents($ip_url),true);
	if(!isset($json['address']))return array();
	return explode('|',$json['address']);
}

function get_weather($city){
	$url="http://api.map.baidu.com/telematics/v3/weather?output=json&ak=ooD9yIwU2IrIur8Edz7X57Em&location=".$city;
	$json=file_get_contents($ip_url);
	show($json);
}

/**
 *大M,实例化一个数据库表
 *@param string $table_name 表名
 *@param array $C 配置，可空。默认为$config['database']的值
 *@return $self
 *@author Mrtuzi <5025379(at)qq.com>
 */
function M($table_name='',$C=array()){ //数据库操作
	global $p_;
	if(!class_exists('Db'))include('drives/DbDrive.class.php');
	$r=new DbDrive();
	$r->connect($config['db']);
	if($table_name)$r->table($table_name);
	return $r;
}

/**
 * 是否合法的email
 * @param string $str
 * @return string||false
 */
function is_email($str=''){
	return preg_match('/^[\w\d\_\.]+\@[\w\d\_\.\-]+\.[\w\d]{2,4}$/',str_replace('%40','@',$str));
}
//是否是中文
function is_chinese($str=''){
	return preg_match("/^[\x80-\xff]+$/",$str);
}
//是否是手机号码
function is_mobile($str=''){
	return preg_match("/^1[34589]\d{9}$/",$str);
}
//是否是QQ号码
function is_qq($str=''){
	return preg_match("/^\d{5,15}$/",$str);
}
//是否是正确的用户名 英文数字加下划线,4-16位
function is_uname($str=''){
	return chk_string($str);
	return preg_match("/^[\w\d\_]{4,20}$/",$str);
}
//是否是正确的密码,不能有空格单引号和双引号,6-20位
function is_pwd($str=''){
	return true;
}

//是否合法的日期
function is_date($string){
	$arr=explode('-',$string);
	return checkdate($arr[1],$arr[2],$arr[0])?true:false;
}

//是否合法的身份证
function is_idcard($idcard=''){
	if (strlen($idcard) != 18)return false;
	$idcard_base = substr($idcard, 0, 17);
	if (strlen($idcard_base) != 17) return false;
	$factor = array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
	$verify_number_list = array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
	$checksum = 0;
	for ($i = 0; $i < strlen($idcard_base); $i++) {
		$checksum += substr($idcard_base, $i, 1) * $factor[$i];
	}
	$mod = $checksum % 11;
	$verify_number = $verify_number_list[$mod];
	if ($verify_number == strtoupper(substr($idcard, 17, 1)))return true;
	return false;
}

/**
 *检查字符串是否合法,合法则返回真,不合法则返回假,不能含有特殊符号
 *@param string $str
 *@return bool
 */
function chk_string($str=''){
	return $str?preg_match('/^[a-zA-Z0-9\x80-\xff\_\@\.]+?$/',$str):false;
}

//ajax死掉并返回
function ajax($flag,$d){die(json_encode(array($flag,$d)));}

/**
 * 模板正则替换
 * @param string $content 替换内容
 * @return string 替换过后的内容
 */
function tpl_replace($content){
	$d=array(
		'/<!--for ([^\s]+) ([^\s]+) ([^\s]+)\s?-->/'	=>'<?php for($1=$2;$1<$3;$1++):?>', //<!--for $i $from $to-->
		'/<!--foreach ([^\s]+) ([^\s]+) ([^\s]+)\s?-->/'=>'<?php foreach($1 as $2=>$3):?>', //<!--foreach $d $k $v-->
		'/<!--if\s?(.*?)\s?-->/'						=>'<?php if($1):?>', //<!--if condition-->
		'/<!--elseif\\s?(.+?)-->/'						=>'<?php elseif($1):?>', 
		'/<!--else-->/'									=>'<?php else:?>', //<!--else-->
		'/<!--(\w+)-->/'								=>'<?php $1;?>',//<!--endif--><!--endfor--><!--endforeach-->
		'/<for ([^\s]+) ([^\s]+) ([^\s]+)\s?>/'			=>'<?php for($1=$2;$1<$3;$1++):?>', //<for $i $from $to>
		'/<foreach ([^\s]+) ([^\s]+) ([^\s]+)\s?>/'		=>'<?php foreach($1 as $2=>$3):?>', //<foreach $d $k $v>
		'/<volist ([^\s]+) ([^\s]+) ([^\s]+)\s?>/'		=>'<?php foreach($1 as $2=>$3):?>', //<volist $d $k $v>
		'/<\/volist>|<\/foreach>/'						=>'<?php endforeach;?>', //</volist></foreach>
		'/<\/for>/'										=>'<?php endfor;?>', //</for>
		'/<if\s+(.*?)\s?>/'								=>'<?php if($1):?>', //<if condition>
		'/<elseif\s+(.*?)\/?>/'							=>'<?php elseif($1):?>',  //<elseif condition>
		'/<else\s*\/?>/'								=>'<?php else:?>',  //<else/>
		'/<\/if>/'										=>'<?php endif;?>', //</if>
		'/\{P:(.+?)\:}/s'								=>'<?php $1;?>', //{P:code:} 调用原生php
		'/\{F:(.+?)\}/s'								=>'<?php $1;?>', //{F:$x=$y+2}调用原生php不输出
		'/\{EF:(.+?)\}/s'								=>'<?php echo $1;?>', //{EF:date('Y-m-d')}调用原生php并输出
		'/\{C:(\\w+)\}/'								=>'<?php echo $1;?>', //{C:TPL}输出常量
		'/\{(\$.+?)\}/'									=>'<?php echo $1;?>', //{$myvar} 输出变量
		'/\{url\:(.+?)\}/'								=>'<?php echo url($1);?>', //{url:$myvar} 输出url
	);
	//模板优化，去掉多余的空格
	$d['/\?>\s+<\?php/']=' ';
	//$d['/[\r\n]+/']="\n";
	//$d['/[ 	\t]+/']=" ";
	return preg_replace(array_keys($d), array_values($d), $content);
}

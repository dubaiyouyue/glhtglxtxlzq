<?php
if(!defined('GZPHP') || !$admin) exit('');
/*
 * @author          LiZHenQiu QQ:3207885181 <admin@resonance.com.cn>
 * @copyright       Copyright (c) 2008-2015  (http://www.resonance.com.cn)
 * @license         http://www.resonance.com.cn/license.txt
 * @version         GzPHP企业网站管理系统 v2.1 2011-03-01 resonance.com.cn $
 */
//获取所有项目和进度列表
$xm_all=$MYSQL->_sql_select('*','xm','xm_zt=1 or xm_id!=0','id','1','999');
//dump($xm_all);

foreach($xm_all as $key=>$v){
    if(!$v['xm_id'] && ($v['xm_zt']==1)) {
        $xm_all_f[$v['id']]=$v;//项目列表
        $xm_all_f_id[]=$v['id'];//项目列表id
    }
    else {
        $xm_all_jd[$v['xm_id']][]=$v;//进度列表
    }
}
//dump($xm_all_jd);
foreach ($xm_all_f_id as $key=>$v) {
    //echo $v;
    //$xm_all_f[$v]['cssnone']='cssnone'; $xm_all_f[$v]['cssnone']='';
    if($xm_all_jd[$v]['0']['jd']) {
        foreach($xm_all_jd[$v] as $k=>$v1){
            //$hhss=explode('&amp;lt;br /&amp;gt;',$xm_all_jd[$v][$k]['jd']);
            //foreach($hhss as $v3){
            $xm_all_jd[$v][$k]['jd']=str_ireplace('&amp;lt;br /&amp;gt;','<br>',$xm_all_jd[$v][$k]['jd']);
            //}
            $ssjds='<div class="xdiv"><p><span class="bc">'.$xm_all_jd[$v][$k]['time'].'</span>  '.$xm_all_jd[$v][$k]['user'].'</p>'.$xm_all_jd[$v][$k]['jd'].'</div>';
            $xm_all_f[$v]['jd'].=$ssjds;

        }
    }
}
$xm_all_f = array_values($xm_all_f);

//dump($xm_all_f);
$TBS->MergeBlock('xm_arr','array',$xm_all_f);

if($_POST['jd']){
    //dump($_POST);
    $data='jd,time,user,xm_id,xm_zt';
	$_POST['xm_zt']=2;
    $_POST['time']=date("Y-m-d H:i:s");
    $_POST['user']=$user_login_name;
    $_POST['jd']=nl2br($_POST['jd']);
    //$_POST['jd']=str_repeat('<br />','<p></p>',$_POST['jd']);
    //$_POST['jd']=str_repeat('\\r\\n','11111111111111111111',$_POST['jd']);
    $MYSQL->_sql_insert('xm',$data,$_POST);
	$MYSQL->_sql_update('xm','xm_zt=2','id='.$_POST['xm_id'],'1');
    echo '<script language="javascript" type="text/javascript">window.top.location.href="./?v='.$sj_zzfd.'";</script>';
}

//结款
$a=_get('a');
$id=_get('id')+0;
if($a=='jk' && $id && $admin){
    $MYSQL->_sql_update('xm','xm_zt=1,zt_time=NOW()','id='.$id,'1');
    echo '<script language="javascript" type="text/javascript">alert(\'结款成功！\');window.top.location.href="./?v='.$sj_zzfd.'";</script>';
    exit;
}
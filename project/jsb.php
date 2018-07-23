<?php
if(!defined('GZPHP')) exit('');
/*
 * @author          LiZHenQiu QQ:3207885181 <admin@resonance.com.cn>
 * @copyright       Copyright (c) 2008-2015  (http://www.resonance.com.cn)
 * @license         http://www.resonance.com.cn/license.txt
 * @version         GzPHP企业网站管理系统 v2.1 2011-03-01 resonance.com.cn $
 */
//获取所有项目和进度列表
//echo $_COOKIE['uid'];
$xm_all=$MYSQL->_sql_select('*','xm','xm_zt=0 and uid=\''.$user_login_uid.'\'','id','0','999');

if($admin) $xm_all=$MYSQL->_sql_select('*','xm','xm_zt=0','id','0','999');
//dump($xm_all);
if(empty($xm_all)) echo '<script language="javascript" type="text/javascript">alert(\'你还没有任何项目！请添加项目！\');window.location.href="/?index=tjxm";</script>';
foreach($xm_all as $key=>$v){
    if(!$v['xm_id']) {
        $xm_all_f[$v['id']]=$v;//项目列表
        $xm_all_f_id[]=$v['id'];//项目列表id
    }
    else {
        $xm_all_jd[$v['xm_id']][]=$v;//进度列表
    }
}
//$xm_all_jd=rsort($xm_all_jd); //rsort
$n_date=date('Y-m-d');
$bbb_s='';
foreach ($xm_all_f_id as $key=>$v) {
    //echo $v;
    //$xm_all_f[$v]['cssnone']='cssnone'; $xm_all_f[$v]['cssnone']='';
    if($xm_all_jd[$v]['0']['jd']) {//$xm_all_jd[$v]=arsort($xm_all_jd[$v]); 
		$jjj_n=count($xm_all_jd[$v]);
        foreach($xm_all_jd[$v] as $k=>$v1){
			$jjj_n--;
            //$hhss=explode('&amp;lt;br /&amp;gt;',$xm_all_jd[$v][$k]['jd']);
            //foreach($hhss as $v3){
            $xm_all_jd[$v][$jjj_n]['jd']=str_ireplace('&amp;lt;br /&amp;gt;','<br>',$xm_all_jd[$v][$jjj_n]['jd']);
            //}
			$n_date_arr=explode(' ',$xm_all_jd[$v][$jjj_n]['time']);
			//dump($n_date_arr);
			//echo $n_date_arr['0'];
			$bbb_s='';
			if($n_date==$n_date_arr['0']) $bbb_s='style="background-color:#000;color:#fff;"';
			if($xm_all_jd[$v][$jjj_n]['uid']=='8') $bbb_s='style="background-color:#FFF0A5;color:#000;"';
			if($xm_all_jd[$v][$jjj_n]['uid']=='25') $bbb_s='style="background-color:red;color:#fff;"';
		
            $ssjds='<div class="xdiv" '.$bbb_s.'><p><span class="bc">'.$xm_all_jd[$v][$jjj_n]['time'].'</span>  '.$xm_all_jd[$v][$jjj_n]['user'].'</p>'.$xm_all_jd[$v][$jjj_n]['jd'].'</div>';
            $xm_all_f[$v]['jd'].=$ssjds;

        }
    }
}
$xm_all_f = array_values($xm_all_f);

//dump($xm_all_f);
$TBS->MergeBlock('xm_arr','array',$xm_all_f);

//进度报告
if($_POST['jd']){
    //dump($_POST);
    $data='uid,jd,time,user,xm_id';
    $_POST['time']=date("Y-m-d H:i:s");
    $_POST['user']=$user_login_name;$_POST['uid']=$user_login_uid+0;
    $_POST['jd']=nl2br($_POST['jd']);
    //$_POST['jd']=str_repeat('<br />','<p></p>',$_POST['jd']);
    //$_POST['jd']=str_repeat('\\r\\n','11111111111111111111',$_POST['jd']);
    $MYSQL->_sql_insert('xm',$data,$_POST);
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
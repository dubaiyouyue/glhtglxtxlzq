<?php
if(!defined('GZPHP')) exit('');
/*
 * @author          LiZHenQiu QQ:2500152288 <2500152288@qq.com>
 * @copyright       Copyright (c) 2008-2015  (http://www.lizhenqiu.com)
 */
class mysql{
    function gl($bt){ //过滤字符
        $bt = str_ireplace("&", "&amp;",$bt);
        $bt = str_ireplace("<", "&lt;",$bt);
        $bt = str_ireplace(">", "&gt;",$bt);
        $bt = str_ireplace("\"", "&quot;",$bt);
        $bt = str_ireplace("'", "&quot;",$bt);
        $bt = str_ireplace(".", "。",$bt);
        return $bt;
    }
    //MYSQL 写入数据库
    function _sql_insert($table,$name,$v){
        $data_t=explode(',',$name);
        $data_t_n=count($data_t);
        $data='';
        $table=$this->gl($table);
        $name=$this->gl($name);
        $v=$this->gl($v);
        for ($i=0; $i < $data_t_n; $i++) {
            $datapp=$v[$data_t[$i]];
            if(!$datapp) $datapp=0;
            else $datapp=$this->gl($datapp); //过滤字符
            $data.='\''.$datapp.'\',';
        }
        $data=substr($data,0,-1);
        //return $data;
        //$name=str_replace(',','\',\'',$name);
        //$name='\''.$name.'\'';
        $sql='INSERT INTO '.$table.' ('.$name.') VALUES ('.$data.')';
        @mysql_query($sql);
    }
    //读取数据
    function _sql_select($name,$table,$sw,$sor,$desc,$sli){
        $name=$this->gl($name);
        $table=$this->gl($table);
        //$sw=$this->gl($sw);
        $sor=$this->gl($sor);
        $desc=$desc+0;
        //$sli=$sli+0;
        if($desc==1) $desc='desc';
        else $desc='asc';
        $sql='select '.$name.' from '.$table.' where '.$sw.' order by '.$sor.' '.$desc.' limit '.$sli;
        //echo $sql;
        if(!$sli){
            $sql='select '.$name.' from '.$table.' where '.$sw.' order by '.$sor.' '.$desc;
            $n=$this->_sql_count($sql);
            return $n;
        }
        //return false;
        $result=@mysql_query($sql);
        $arr=array();
        $i=0;
        while($row = @mysql_fetch_array($result)){
            $arr[$i]=$row;
            $i++;
        }
        return $arr;
    }
    //读取数据--分组排序
    function _sql_select_gr($name,$table,$sw,$gr,$sor,$desc,$sli){
        $name=$this->gl($name);
        $table=$this->gl($table);
        $sw=$this->gl($sw);
        $sor=$this->gl($sor);
        $desc=$desc+0;
        $sli=$sli+0;
        $gr=$this->gl($gr);
        if($desc==1) $desc='desc';
        else $desc='asc';
        $sql='select '.$name.' from '.$table.' where '.$sw.' GROUP BY '.$gr.' order by '.$sor.' '.$desc.' limit '.$sli;
        //echo $sql;
        //return false;
        $result=@mysql_query($sql);
        $arr=array();
        $i=0;
        while($row = @mysql_fetch_array($result)){
            $arr[$i]=$row;
            $i++;
        }
        return $arr;
    }
    //删除数据
    function  _sql_delete($table,$sw,$sli){
        $table=$this->gl($table);
        $sw=$this->gl($sw);
        $sli=$sli+0;
        $sql='DELETE FROM '.$table.' WHERE '.$sw.' limit '.$sli;
        @mysql_query($sql);
    }
    //更新数据
    function _sql_update($table,$set,$sw,$sli){
        $table=$this->gl($table);
        //$set=$this->gl($set);
        $sw=$this->gl($sw);
        $sli=$sli+0;
        $sql='UPDATE '.$table.' SET '.$set.' WHERE '.$sw.' limit '.$sli;
        @mysql_query($sql);
    }
    //获取条数
    function _sql_count($sql){
        $result=@mysql_query($sql);
        $n=@mysql_num_rows($result);
        return $n;
    }
}

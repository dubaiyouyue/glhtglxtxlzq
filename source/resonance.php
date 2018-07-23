<?php
/*
 * @author          LiZHenQiu QQ:3207885181 <admin@resonance.com.cn>
 * @copyright       Copyright (c) 2008-2015  (http://www.resonance.com.cn)
 * @license         http://www.resonance.com.cn/license.txt
 * @version         GzPHP企业网站管理系统 v2.1 2011-03-01 resonance.com.cn $
 */
if(!defined('GZPHP')) exit('Error:c_up20111125');
class resonance{
    //=========上传
    //文件夹，大小单位MB，0关闭1开启缩略图，
    //var $uppost;
    public function up($up_path1,$size,$ph,$pf,$sid){
        //上传类型 $up_path1,$size,$up_thu,$up_thu_db,$up_thu_wh,$up_thu_w,$up_thu_h,$ph,$pf,$sid
        $uptypes=array('image/jpg','image/jpeg','image/png','image/pjpeg','image/gif','image/x-png');
        $max_file_size=$size*1000000;
        //$waterstring='水印';
        //缩略图
        //$up_thu=0; //1为开启 0关闭缩略图
        //$up_thu_db=0; // 1等比例
        //$up_thu_wh='w';// h为固定高度
        //$up_thu_w=200;//缩略图宽度
        //$up_thu_h=200;//高度
        //路径
        $up_path1r=$up_path1?$up_path1:'';
        $up_path1=$up_path1?$up_path1.'/':'';
        $up_path='/../../upload/'.$up_path1;
        $destination_folder=__DIR__ .$up_path;
        if(!file_exists($destination_folder)) mkdir($destination_folder,0744);
        //文件状态判断
        $_FILES=$pf;
        if ($ph == 'POST'){
            if (!is_uploaded_file($_FILES['upfile']['tmp_name'])) exit('Error:c_up20111126');//图片不存在 图片太大
            $file = $_FILES['upfile'];
            if($max_file_size < $file['size']) exit('Error:c_up20111127');//图片太大
            if(!in_array($file['type'], $uptypes)) exit('Error:c_up20111128');//只能上传图片
            $filename=$file['tmp_name'];
                $size=getimagesize($filename);
                $up_type=$size[2];
                switch ($up_type) {
                    case '1':
                        $im_in=imagecreatefromgif($filename);
                        $up_type_name='gif';
                        break;
                    case '2':
                        $im_in=imagecreatefromjpeg($filename);
                        $up_type_name='jpg';
                        break;
                    case '3':
                        $im_in=imagecreatefrompng($filename);
                        $up_type_name='png';
                        break;
                    default:
                        exit('Error:c_up20111128');//只能上传图片
                        break;
                }
            /*调整上传图片的大小
            if($file['type']!=('image/gif')){//不缩略剪切gif  && $up_thu

                    $width=$up_thu_w;
                    $height=$up_thu_h;
                if ($up_thu_db) {
                    $width=$size[0];
                    $height=$size[1];
                    switch ($up_thu_wh) {
                        case 'w':
                            if($width>$up_thu_w){
                                $width=$up_thu_w;
                                $widths=$size[0];
                                $height=($height * $width)/$widths;
                            }
                            break;
                        case 'h':
                            if($height>$up_thu_h){
                                $height=$up_thu_h;
                                $heights=$size[1];
                                $width=($height * $width)/$heights;
                            }
                            break;
                    }
                    
                }
                $im_out=imagecreatetruecolor($width,$height);
                imagecopyresampled($im_out,$im_in,0,0,0,0,$width,$height,$size[0],$size[1]);  
                imagejpeg($im_out,$filename);
                chmod($filename,0744);
                imagedestroy($im_in);
                imagedestroy($im_out);
                //$image_size = getimagesize($filename);
                //$pinfo=pathinfo($file['name']);
                //$ftype=$pinfo['extension'];
            }
            */
            //以日期创建目录
            $up_date=date('Y-m-d');
            $up_date_name=date('hsi').rand(9,999);
            if(!file_exists($destination_folder.$up_date)) mkdir($destination_folder.$up_date,0744);
            $destination = $destination_folder.$up_date.'/'.$up_date_name.".".$up_type_name;
            if(file_exists($destination)) exit('Error:c_up20111129');//文件已经存在
            if(!move_uploaded_file ($filename, $destination)) exit('Error:c_up20111130');//移动文件失败
            if ($sid) {//幻灯片多缩略图
                $up_thu_w=797;//缩略图宽度
                $up_thu_h=318;//高度
                $s_name='b_';
                for ($i=0; $i <3 ; $i++) {
                    if($i==1){
                        $up_thu_w=209;
                        $up_thu_h=134;
                        $s_name='m_';
                    }
                    if($i==2){
                        $up_thu_w=96;
                        $up_thu_h=72;
                        $s_name='s_';
                    }
                    $this->pic_s($destination_folder.$up_date.'/',$up_date_name.".".$up_type_name,$up_thu_w,$up_thu_h,2,'',$s_name);
                }
            }
            //$this->pic_s($destination_folder.$up_date.'/',$up_date_name.".".$up_type_name,$up_thu_w,$up_thu_h,$i,'');
            //echo "<font color=red>已经成功上传</font><br><br>";
            /*非gif加水印
            if($file["type"]!=('image/gif')){
                $iinfo=getimagesize($destination,$iinfo);
                $nimage=imagecreatetruecolor($image_size[0],$image_size[1]);
                $white=imagecolorallocate($nimage,255,255,255);
                imagefill($nimage,0,0,$white);
                    switch ($iinfo[2]){
                        case 2:
                        $simage =imagecreatefromjpeg($destination);
                        break;
                        case 3:
                        $simage =imagecreatefrompng($destination);
                        break;
                        default:
                        die("");
                        exit;
                    }
                $markPos = rand(1,9);
                //随机水印位置
                //$markPos='3';
                switch($markPos){
                    case 1: //左上
                        $x = +6;
                        $y = +1;
                        break;
                    case 2: // 中上
                        $x = $image_size[0] / 2 -38;
                        $y = +1;
                        break;
                    case 3: //右上
                        $x = $image_size[0] - 118;
                        $y = +0;
                        break;
                    case 4: //左中
                        $x = +1;
                        $y = $image_size[1] / 2;
                        break;
                    case 5: //中中
                        $x = $image_size[0] / 2 -38;
                        $y = $image_size[1] / 2;
                        break;
                    case 6: //右中
                        $x = $image_size[0] - 118;
                        $y = $image_size[1] / 2;
                        break;
                    case 7: //左下
                        $x = +1;
                        $y = $image_size[1]-18;
                        break;
                    case 8: //下中
                        $x = $image_size[0] / 2 -38;
                        $y = $image_size[1]-18;
                        break;
                    case 9: //右下
                        $x = $image_size[0] - 118;
                        $y = $image_size[1]-18;
                        break;
                    default:
                        die("");
                        exit;
                }
                imagecopy($nimage,$simage,0,0,0,0,$image_size[0],$image_size[1]);
                imagestring($nimage,5,$x,$y,$waterstring,$white);
                switch ($iinfo[2]){
                    case 2:
                    imagejpeg($nimage, $destination);
                    break;
                    case 3:
                    imagepng($nimage, $destination);
                    break;
                    default:
                    die("<font color='red'>不能上传此类型文件！</font>");
                    exit;
                }
                //覆盖原上传文件
                imagedestroy($nimage);
                imagedestroy($simage);
            }*/

        }

        /*写入数据库

        function gl($bt){

            $bt = str_ireplace("&", "&amp;",$bt);

            $bt = str_ireplace("<", "&lt;",$bt);

            $bt = str_ireplace(">", "&gt;",$bt);

            $bt = str_ireplace("\"", "&quot;",$bt);

            $bt = str_ireplace("'", "&#039;",$bt);

            return $bt;

        }

        $bt= $_POST['textfieldt'];

        if($md5 && $bt){// String

            $spurl=$_POST['spurl'];

            if($spurl) $spurl=gl($spurl);

            else $spurl='0';

            $bt=gl($bt);

            $bt = str_ireplace(".", "。", $bt);

            $size=floor(($file["size"]/1000));

            if($size){

                $sql="INSERT INTO sup (bt,mw,md5,size,uid,spurl,ip) VALUES ('$bt','$mw','$md5','$size','$uid','$spurl',INET_ATON('$ip'))";

                $sc=@mysql_query($sql);

            }

            if($sc) exit('');

        }
        */

        return $up_ok_arr=array($up_path1r,$up_date,$up_date_name,$up_type_name);
    }
    //=====================图片缩略图
    public function pic_s($path,$name,$up_thu_w,$up_thu_h,$i,$path_out,$s_name){
            $path_in=$path.$name;
            $path_out=$path_out?$path_out:$path;
            $size=getimagesize($path_in);
            $width=$size[0];
            $height=$size[1];
            //$i=0;
                $up_type=$size[2];
                switch ($up_type) {
                    case '1':
                        $im_in=imagecreatefromgif($path_in);
                        $up_type_name='gif';
                        break;
                    case '2':
                        $im_in=imagecreatefromjpeg($path_in);
                        $up_type_name='jpg';
                        break;
                    case '3':
                        $im_in=imagecreatefrompng($path_in);
                        $up_type_name='png';
                        break;
                    default:
                        exit('Error:c_up20111128');//只能上传图片
                        break;
                }

                switch ($i) {
                    case '0'://定宽缩放
                        $width=$up_thu_w;
                        $widths=$size[0];
                        $height=($height * $width)/$widths;
                        //$s_name='w_';
                        break;
                    case '1'://定高缩放
                        $height=$up_thu_h;
                        $heights=$size[1];
                        $width=($height * $width)/$heights;
                        //$s_name='h_';
                        break;
                    case '2'://定宽、高缩放 变形
                        $height=$up_thu_h;
                        $width=$up_thu_w;
                        //$s_name='wh_';
                        break;
                }

                $im_out=imagecreatetruecolor($width,$height);
                imagecopyresampled($im_out,$im_in,0,0,0,0,$width,$height,$size[0],$size[1]);  
                imagejpeg($im_out,$path_out.$s_name.$name);
                chmod($path_out.$s_name.$name,0744);
                imagedestroy($im_in);
                imagedestroy($im_out);
                //if(!move_uploaded_file ($s_name, $destination)) exit('Error:c_up20111130');//移动文件失败
                //$image_size = getimagesize($filename);
                //$pinfo=pathinfo($file['name']);
                //$ftype=$pinfo['extension'];
            
    }
}
$GZ=new resonance;
class GetPingYing {
    private $pylist = array(
        'a'=>-20319,
        'ai'=>-20317,
        'an'=>-20304,
        'ang'=>-20295,
        'ao'=>-20292,
        'ba'=>-20283,
        'bai'=>-20265,
        'ban'=>-20257,
        'bang'=>-20242,
        'bao'=>-20230,
        'bei'=>-20051,
        'ben'=>-20036,
        'beng'=>-20032,
        'bi'=>-20026,
        'bian'=>-20002,
        'biao'=>-19990,
        'bie'=>-19986,
        'bin'=>-19982,
        'bing'=>-19976,
        'bo'=>-19805,
        'bu'=>-19784,
        'ca'=>-19775,
        'cai'=>-19774,
        'can'=>-19763,
        'cang'=>-19756,
        'cao'=>-19751,
        'ce'=>-19746,
        'ceng'=>-19741,
        'cha'=>-19739,
        'chai'=>-19728,
        'chan'=>-19725,
        'chang'=>-19715,
        'chao'=>-19540,
        'che'=>-19531,
        'chen'=>-19525,
        'cheng'=>-19515,
        'chi'=>-19500,
        'chong'=>-19484,
        'chou'=>-19479,
        'chu'=>-19467,
        'chuai'=>-19289,
        'chuan'=>-19288,
        'chuang'=>-19281,
        'chui'=>-19275,
        'chun'=>-19270,
        'chuo'=>-19263,
        'ci'=>-19261,
        'cong'=>-19249,
        'cou'=>-19243,
        'cu'=>-19242,
        'cuan'=>-19238,
        'cui'=>-19235,
        'cun'=>-19227,
        'cuo'=>-19224,
        'da'=>-19218,
        'dai'=>-19212,
        'dan'=>-19038,
        'dang'=>-19023,
        'dao'=>-19018,
        'de'=>-19006,
        'deng'=>-19003,
        'di'=>-18996,
        'dian'=>-18977,
        'diao'=>-18961,
        'die'=>-18952,
        'ding'=>-18783,
        'diu'=>-18774,
        'dong'=>-18773,
        'dou'=>-18763,
        'du'=>-18756,
        'duan'=>-18741,
        'dui'=>-18735,
        'dun'=>-18731,
        'duo'=>-18722,
        'e'=>-18710,
        'en'=>-18697,
        'er'=>-18696,
        'fa'=>-18526,
        'fan'=>-18518,
        'fang'=>-18501,
        'fei'=>-18490,
        'fen'=>-18478,
        'feng'=>-18463,
        'fo'=>-18448,
        'fou'=>-18447,
        'fu'=>-18446,
        'ga'=>-18239,
        'gai'=>-18237,
        'gan'=>-18231,
        'gang'=>-18220,
        'gao'=>-18211,
        'ge'=>-18201,
        'gei'=>-18184,
        'gen'=>-18183,
        'geng'=>-18181,
        'gong'=>-18012,
        'gou'=>-17997,
        'gu'=>-17988,
        'gua'=>-17970,
        'guai'=>-17964,
        'guan'=>-17961,
        'guang'=>-17950,
        'gui'=>-17947,
        'gun'=>-17931,
        'guo'=>-17928,
        'ha'=>-17922,
        'hai'=>-17759,
        'han'=>-17752,
        'hang'=>-17733,
        'hao'=>-17730,
        'he'=>-17721,
        'hei'=>-17703,
        'hen'=>-17701,
        'heng'=>-17697,
        'hong'=>-17692,
        'hou'=>-17683,
        'hu'=>-17676,
        'hua'=>-17496,
        'huai'=>-17487,
        'huan'=>-17482,
        'huang'=>-17468,
        'hui'=>-17454,
        'hun'=>-17433,
        'huo'=>-17427,
        'ji'=>-17417,
        'jia'=>-17202,
        'jian'=>-17185,
        'jiang'=>-16983,
        'jiao'=>-16970,
        'jie'=>-16942,
        'jin'=>-16915,
        'jing'=>-16733,
        'jiong'=>-16708,
        'jiu'=>-16706,
        'ju'=>-16689,
        'juan'=>-16664,
        'jue'=>-16657,
        'jun'=>-16647,
        'ka'=>-16474,
        'kai'=>-16470,
        'kan'=>-16465,
        'kang'=>-16459,
        'kao'=>-16452,
        'ke'=>-16448,
        'ken'=>-16433,
        'keng'=>-16429,
        'kong'=>-16427,
        'kou'=>-16423,
        'ku'=>-16419,
        'kua'=>-16412,
        'kuai'=>-16407,
        'kuan'=>-16403,
        'kuang'=>-16401,
        'kui'=>-16393,
        'kun'=>-16220,
        'kuo'=>-16216,
        'la'=>-16212,
        'lai'=>-16205,
        'lan'=>-16202,
        'lang'=>-16187,
        'lao'=>-16180,
        'le'=>-16171,
        'lei'=>-16169,
        'leng'=>-16158,
        'li'=>-16155,
        'lia'=>-15959,
        'lian'=>-15958,
        'liang'=>-15944,
        'liao'=>-15933,
        'lie'=>-15920,
        'lin'=>-15915,
        'ling'=>-15903,
        'liu'=>-15889,
        'long'=>-15878,
        'lou'=>-15707,
        'lu'=>-15701,
        'lv'=>-15681,
        'luan'=>-15667,
        'lue'=>-15661,
        'lun'=>-15659,
        'luo'=>-15652,
        'ma'=>-15640,
        'mai'=>-15631,
        'man'=>-15625,
        'mang'=>-15454,
        'mao'=>-15448,
        'me'=>-15436,
        'mei'=>-15435,
        'men'=>-15419,
        'meng'=>-15416,
        'mi'=>-15408,
        'mian'=>-15394,
        'miao'=>-15385,
        'mie'=>-15377,
        'min'=>-15375,
        'ming'=>-15369,
        'miu'=>-15363,
        'mo'=>-15362,
        'mou'=>-15183,
        'mu'=>-15180,
        'na'=>-15165,
        'nai'=>-15158,
        'nan'=>-15153,
        'nang'=>-15150,
        'nao'=>-15149,
        'ne'=>-15144,
        'nei'=>-15143,
        'nen'=>-15141,
        'neng'=>-15140,
        'ni'=>-15139,
        'nian'=>-15128,
        'niang'=>-15121,
        'niao'=>-15119,
        'nie'=>-15117,
        'nin'=>-15110,
        'ning'=>-15109,
        'niu'=>-14941,
        'nong'=>-14937,
        'nu'=>-14933,
        'nv'=>-14930,
        'nuan'=>-14929,
        'nue'=>-14928,
        'nuo'=>-14926,
        'o'=>-14922,
        'ou'=>-14921,
        'pa'=>-14914,
        'pai'=>-14908,
        'pan'=>-14902,
        'pang'=>-14894,
        'pao'=>-14889,
        'pei'=>-14882,
        'pen'=>-14873,
        'peng'=>-14871,
        'pi'=>-14857,
        'pian'=>-14678,
        'piao'=>-14674,
        'pie'=>-14670,
        'pin'=>-14668,
        'ping'=>-14663,
        'po'=>-14654,
        'pu'=>-14645,
        'qi'=>-14630,
        'qia'=>-14594,
        'qian'=>-14429,
        'qiang'=>-14407,
        'qiao'=>-14399,
        'qie'=>-14384,
        'qin'=>-14379,
        'qing'=>-14368,
        'qiong'=>-14355,
        'qiu'=>-14353,
        'qu'=>-14345,
        'quan'=>-14170,
        'que'=>-14159,
        'qun'=>-14151,
        'ran'=>-14149,
        'rang'=>-14145,
        'rao'=>-14140,
        're'=>-14137,
        'ren'=>-14135,
        'reng'=>-14125,
        'ri'=>-14123,
        'rong'=>-14122,
        'rou'=>-14112,
        'ru'=>-14109,
        'ruan'=>-14099,
        'rui'=>-14097,
        'run'=>-14094,
        'ruo'=>-14092,
        'sa'=>-14090,
        'sai'=>-14087,
        'san'=>-14083,
        'sang'=>-13917,
        'sao'=>-13914,
        'se'=>-13910,
        'sen'=>-13907,
        'seng'=>-13906,
        'sha'=>-13905,
        'shai'=>-13896,
        'shan'=>-13894,
        'shang'=>-13878,
        'shao'=>-13870,
        'she'=>-13859,
        'shen'=>-13847,
        'sheng'=>-13831,
        'shi'=>-13658,
        'shou'=>-13611,
        'shu'=>-13601,
        'shua'=>-13406,
        'shuai'=>-13404,
        'shuan'=>-13400,
        'shuang'=>-13398,
        'shui'=>-13395,
        'shun'=>-13391,
        'shuo'=>-13387,
        'si'=>-13383,
        'song'=>-13367,
        'sou'=>-13359,
        'su'=>-13356,
        'suan'=>-13343,
        'sui'=>-13340,
        'sun'=>-13329,
        'suo'=>-13326,
        'ta'=>-13318,
        'tai'=>-13147,
        'tan'=>-13138,
        'tang'=>-13120,
        'tao'=>-13107,
        'te'=>-13096,
        'teng'=>-13095,
        'ti'=>-13091,
        'tian'=>-13076,
        'tiao'=>-13068,
        'tie'=>-13063,
        'ting'=>-13060,
        'tong'=>-12888,
        'tou'=>-12875,
        'tu'=>-12871,
        'tuan'=>-12860,
        'tui'=>-12858,
        'tun'=>-12852,
        'tuo'=>-12849,
        'wa'=>-12838,
        'wai'=>-12831,
        'wan'=>-12829,
        'wang'=>-12812,
        'wei'=>-12802,
        'wen'=>-12607,
        'weng'=>-12597,
        'wo'=>-12594,
        'wu'=>-12585,
        'xi'=>-12556,
        'xia'=>-12359,
        'xian'=>-12346,
        'xiang'=>-12320,
        'xiao'=>-12300,
        'xie'=>-12120,
        'xin'=>-12099,
        'xing'=>-12089,
        'xiong'=>-12074,
        'xiu'=>-12067,
        'xu'=>-12058,
        'xuan'=>-12039,
        'xue'=>-11867,
        'xun'=>-11861,
        'ya'=>-11847,
        'yan'=>-11831,
        'yang'=>-11798,
        'yao'=>-11781,
        'ye'=>-11604,
        'yi'=>-11589,
        'yin'=>-11536,
        'ying'=>-11358,
        'yo'=>-11340,
        'yong'=>-11339,
        'you'=>-11324,
        'yu'=>-11303,
        'yuan'=>-11097,
        'yue'=>-11077,
        'yun'=>-11067,
        'za'=>-11055,
        'zai'=>-11052,
        'zan'=>-11045,
        'zang'=>-11041,
        'zao'=>-11038,
        'ze'=>-11024,
        'zei'=>-11020,
        'zen'=>-11019,
        'zeng'=>-11018,
        'zha'=>-11014,
        'zhai'=>-10838,
        'zhan'=>-10832,
        'zhang'=>-10815,
        'zhao'=>-10800,
        'zhe'=>-10790,
        'zhen'=>-10780,
        'zheng'=>-10764,
        'zhi'=>-10587,
        'zhong'=>-10544,
        'zhou'=>-10533,
        'zhu'=>-10519,
        'zhua'=>-10331,
        'zhuai'=>-10329,
        'zhuan'=>-10328,
        'zhuang'=>-10322,
        'zhui'=>-10315,
        'zhun'=>-10309,
        'zhuo'=>-10307,
        'zi'=>-10296,
        'zong'=>-10281,
        'zou'=>-10274,
        'zu'=>-10270,
        'zuan'=>-10262,
        'zui'=>-10260,
        'zun'=>-10256,
        'zuo'=>-10254
    );
    //全部拼音
    public function getAllPY($chinese, $delimiter = '', $length = 0) {
       $py = $this->zh_to_pys($chinese, $delimiter);
       if($length) {
           $py = substr($py, 0, $length);
       }
       return $py;
    }
    //拼音首个字母
    public function getFirstPY($chinese){
       $result = '' ;
       for ($i=0; $i<strlen($chinese); $i++) {
           $p = ord(substr($chinese,$i,1));
           if ($p>160) {
              $q = ord(substr($chinese,++$i,1));
              $p = $p*256 + $q - 65536;
           }
           $result .= substr($this->zh_to_py($p),0,1);
       }
       return $result ;
    }
  
 
    //-------------------中文转拼音--------------------------------//
    private function zh_to_py($num, $blank = '') {
       if($num>0 && $num<160 ) {
           return chr($num);
       } elseif ($num<-20319||$num>-10247) {
           return $blank;
       } else {
           foreach ($this->pylist as $py => $code) {
              if($code > $num) break;
              $result = $py;
           }
           return $result;
       }
    }
  
 
    private function zh_to_pys($chinese, $delimiter = ' ', $first=0){
       $result = array();
       for($i=0; $i<strlen($chinese); $i++) {
           $p = ord(substr($chinese,$i,1));
           if($p>160) {
              $q = ord(substr($chinese,++$i,1));
              $p = $p*256 + $q - 65536;
           }
           $result[] = $this->zh_to_py($p);
           if ($first) {
              return $result[0];
           }
       }
       return implode($delimiter, $result);
    }
}
$PingYing=new GetPingYing;
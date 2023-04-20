<?php
include_once "../db/base.php";

$option_id=$_POST['option'];
$option=find('que_options',$option_id);
$subject=find("que_subject",$option['subject_id']);


$subject['vote']++;
$option['vote']++;
//$subject['vote']=$subject['vote']+1;
//echo "<br>++後";
//dd($subject);
/* update("que_subject",['vote'=>$subject['vote']],$subject['id']);
echo "<hr>"; */
update("que_subject",$subject,$subject['id']);
update("que_options",$option,$option['id']);

//偵測使用者端IP,並取得IP
if (!empty($_SERVER['HTTP_CLIENT_IP']))   //check ip from share internet
    {
      $ip=$_SERVER['HTTP_CLIENT_IP'];
    }
    elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))   //to check ip is pass from proxy
    {
      $ip=$_SERVER['HTTP_X_FORWARDED_FOR'];
    }
    else
    {
      $ip=$_SERVER['REMOTE_ADDR'];
    }
$log=[
    'user'=>(isset($_SESSION['login']))?$_SESSION['login']['id']:0,
    'ip'=>$ip,
    'subject_id'=>$subject['id'],
    'option_id'=>$option['id']
];
insert("que_log",$log);
to("../index2.php?do=que_result&id={$subject['id']}");

?>
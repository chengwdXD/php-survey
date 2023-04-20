<?php
include_once "../db/base.php";

//調查主題的id
$id=$_GET['id'];

//關聯的選項的id
//$options=all("que_options",['subject_id'=>$id]);

del("que_subject",$id);

del("que_options",['subject_id'=>$id]);

/* foreach($options as $opt){
    del("que_options",$opt['id']);
} */

header("location:../admin.php?do=que");
?>
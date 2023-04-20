<?php 
include_once "../db/base.php";
$subject_id=find("que_options",$_GET['id'])['subject_id'];
del("que_options",$_GET['id']);
header("location:../admin.php?do=que_edit&id=$subject_id");
?>
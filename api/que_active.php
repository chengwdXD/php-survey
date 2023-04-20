<?php
include_once "../db/base.php";

$subject=find("que_subject",$_GET['id']);
$subject['active']=($subject['active']+1)%2;
update("que_subject",$subject,$_GET['id']);

header("location:../admin.php?do=que");

?>
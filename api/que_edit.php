<?php
include_once "../db/base.php";

dd($_POST['subject']);
dd($_POST['subject_id']);
/* $subject=find('que_subject',$_POST['subject_id']);
dd($subject);
if($subject['subect']!=$_POST['subject']){
    //update('que_subject',['subject'=>$_POST['subject']],$_POST['subject_id']);
    
} */
update('que_subject',['subject'=>$_POST['subject']],$_POST['subject_id']);

dd($_POST['opt']);
dd($_POST['opt_id']);

foreach($_POST['opt_id'] as $idx => $id){
    $option=find('que_options',$id);
    echo "<div> 原本的選項 $id 資料=>".$option['opt']."<br>";
    echo "表單送過來的編輯後的選項 $id 資料=>".$_POST['opt'][$idx]."</div>";
    update('que_options',['opt'=>$_POST['opt'][$idx]],$id);
}

//編輯時如果有新增項目
if(isset($_POST['optn'])){
   // dd($_POST['optn']);
    foreach($_POST['optn'] as $option){
        if($option!=''){
            $tmp=['opt'=>$option,
                  'subject_id'=>$_POST['subject_id'],
                  'vote'=>0];
            dd($tmp);
            insert('que_options',$tmp);
        } 
    }
}

header("location:../admin.php?do=que");

?>
<?php
include_once "../db/base.php";

$subject=['subject'=>$_POST['subject'],
          'type'=>1,
          'vote'=>0,
          'active'=>0];


insert('que_subject',$subject);

$subject_id=find('que_subject',['subject'=>$_POST['subject']])['id'];

if(isset($_POST['opt'])){
    foreach($_POST['opt'] as $option){
        if($option!=''){
            $tmp=['opt'=>$option,
                  'subject_id'=>$subject_id,
                  'vote'=>0];
            dd($tmp);
            insert('que_options',$tmp);
        } 
    }
}

header("location:../admin.php?do=que");

?>
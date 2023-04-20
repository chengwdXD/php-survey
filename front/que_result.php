<?php
$subject=find("que_subject",$_GET['id']);
$options=all("que_options",['subject_id'=>$_GET['id']]);

?>


<h3 class="text-primary text-center"><?=$subject['subject'];?></h3>
<ul class="list-group col-10 mx-auto">
    <?php
    $division=0;
    foreach($options as $key => $value){
        $division+=($value['vote']);
    }
    foreach($options as $option){
        $width=round(($option['vote'])/$division*100,2);
    ?>
    <li class="d-flex list-group-item list-group-item-light list-group-item-action">
        <div class="col-6"><?=$option['opt'];?></div>
        <div class="col-6 d-flex align-items-center">
            <div class="bg-primary rounded" style="width:<?=$width;?>%">&nbsp;</div>
            <div><?=$width;?>%</div>
        </div>
    </li>
    <?php
    }
    ?>
</ul>
<div class="text-center mt-4">

    <a href="index2.php?do=que" class="btn btn-warning mx-1">返回</a>
</div>

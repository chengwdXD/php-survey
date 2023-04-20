<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
            background-color: red;
        }
    </style>
</head>
<body>
    <!-- <h3 class="text-center">調查列表</h3> -->
<div class="my-4 text-center">
    <a href="admin.php?do=que_add" class="btn btn-primary">新增調查</a>
</div>

<ul class="list-group col-md-10 m-auto">
    <li class="d-flex text-center list-group-item list-group-item-info list-group-item-action">
        <div class="col-7">主題</div>
        <div class="col-2">參與數</div>
        <div class="col-3">操作</div>
    </li>
    <?php
    $ques=all("que_subject");

    foreach($ques as $que){
    ?>
    <li class="d-flex list-group-item list-group-item-light list-group-item-action">
        <div class="col-7 font-weight-bolder" style="font-size:1.25rem">
        <?=$que['subject'];?>
        </div>
        <div class="col-2 text-center"> <?=$que['vote'];?></div>
        <div class="col-3 text-center">
            <?php
                $activeBg=($que['active']==1)?"btn-primary":"btn-secondary";
                $activeText=($que['active']==1)?"啟用":"關閉";
            ?>
            <a href="./api/que_active.php?id=<?=$que['id'];?>" class="btn btn-sm <?=$activeBg;?> mx-1"><?=$activeText;?></a>
            <a href="admin.php?do=que_edit&id=<?=$que['id'];?>" class="btn btn-sm btn-success mx-1">編輯</a>
            <a href="./api/que_del.php?id=<?=$que['id'];?>" class="btn btn-sm btn-danger mx-1">刪除</a>
        </div>
    </li>
    <?php
        }
    ?>
</ul>
</body>
</html>

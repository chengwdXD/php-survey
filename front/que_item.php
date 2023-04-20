<?php
if(isset($_GET['id'])){
    $que=find("que_subject",$_GET['id']);  //取得主題資料
    $options=all("que_options",['subject_id'=>$_GET['id']]);  //取得選項資料

}else{
    $error="請回到問卷首頁選擇正確的題目來進行";
}

?>
<h3 class="text-center font-weight-bold"><?=$que['subject'];?></h3>

<form action="./api/que_vote.php" method="post">
<div class="col-8 mx-auto mt-4">
    <?php
    if(isset($error)){
        echo "<span style='color:red'>".$error."</span>";
    }else{
        foreach($options as $option){
    ?>
    <!--列表項目--> 
    <div class="input-group" style="margin-top:-1px">
        <div class="input-group-prepend">
            <div class="input-group-text">
                <input type="radio" name="option" value="<?=$option['id'];?>">
            </div>
        </div>
        <div class="form-control">
            <?=$option['opt'];?>
        </div>
    </div>   
    <?php
        }
    }
    ?>
</div>
<?php
if(!isset($error)){
?>
    <div class="text-center mt-4">
        <input type="submit" class="btn btn-primary mx-1" value="投票">
      
        <a href="index2.php?do=que" class="btn btn-warning mx-1">取消返回</a>
    </div>
<?php
}
?>
</form>
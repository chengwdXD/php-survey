<style>
  .hi{
        width: 500px;
        height:100px;
        background-color: lightsalmon;
        text-align: center;
        margin: 100px auto;
        display: flex;
        justify-content: center; 
        align-items: center;
        border-radius: 30px;
        color: lightcyan;
        
    }
    .hi:hover{
        background-color: lightgrey;
        transition: background-color 0.5s;
    }
</style>

<?php

if (isset($_SESSION['login'])) {
    // $name = find('users', ['資料表帳號欄位名稱' => $_SESSION['login']['資料表帳號欄位名稱']])['資料表帳號欄位名稱'];
    $name = find('user', ['acc' => $_SESSION['login']['acc']]);
}
// dd($name);
?>
<div class="hi">

    <h1>哈囉~~~ <?= $name['acc']; ?></h1>
</div>
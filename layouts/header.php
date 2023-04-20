<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <header class="shadow mb-1 head ">
    <nav class="container d-flex justify-content-between py-3 ">
    <?php
    $file_str=explode("/",$_SERVER['PHP_SELF']);
        $local=str_replace('.php','',array_pop($file_str)) ;
            switch($local){
                case "index2":
                    echo "<div>";
                    echo "<a class='mx-2' href='index.php'><i class='fa-solid fa-house'></i></a>";
                    echo "</div>";
                    echo "<div>";
                    echo "<a class='mx-2' href='index2.php'>回首頁</a>";
                    echo "</div>";
                    echo "<div>";
                    echo "<!-----新增功能預定----->";
                    echo "<a class='mx-2' href='index2.php?do=que'>問卷列表</a>";
                    echo "</div>";
                    echo "<div>";
                    if(isset($_SESSION['login'])){
                        echo "<a class='mx-2' href='admin.php'>回登入者介面</a>";
                        echo "<a class='mx-2' href='logout.php'>登出</a>";
                    }else{
                        echo "<a class='mx-2' href='index2.php?do=reg'>註冊</a>";
                        echo "<a class='mx-2' href='index2.php?do=login'>登入</a>";
                    }
                    echo "</div>";
                break;
                case "admin":
                    echo "<div>";
                    echo "<a class='mx-2' href='index.php'><i class='fa-solid fa-house'></i></i></a>";
                    echo "<a class='mx-2' href='index2.php'>回網站首頁</a>";
                    echo "</div>";
                    echo "<div>";
                    echo "<a class='mx-2' href='admin.php?do=quelist'>問卷列表</a>";
                    echo "<a class='mx-2' href='admin.php?do=que'>問卷後台</a>";
                    // echo "<a class='mx-2' href='admin.php?do=upload'>看版圖上傳</a>";
                    echo "</div>";
                    echo "<div>";

                    echo "<a class='mx-2' href='logout.php'>登出</a>";
                    echo "</div>";
                break;
            }
        ?>
    </nav>
</header>
</body>
</html>
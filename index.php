<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
.lookpic{
    width:1000px;
    height:500px;
    display: block;
   margin: auto;
}
h1{
    text-align: center;
}
.jump {
      animation: jump 2s ease-in-out infinite;
      text-align: center;
      font-size: 80px;
  
    }
  
    @keyframes jump {
      0% {
        transform: translateY(0);
      }
      50% {
        transform: translateY(-60px);
      }
      100% {
        transform: translateY(0);
      }
    }
    </style>
</head>
<body class="bg-danger">
    <h1 class="pt-3 pb-3 text-grey">泰山職訓資料庫程式設計作業 </h1>
    <img src="./pictures/images.jpg" alt="" onclick='page()' class="lookpic " >
    <br><br><br>
    <p class="jump pt-5 text-warning"><i class="fa-solid fa-arrow-up"></i>點擊上圖進入首頁!</p>
 

    <script>
        function page(){
            window.location.href='index2.php';
        }
    </script>
</body>
</html>
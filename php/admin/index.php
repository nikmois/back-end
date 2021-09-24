<?php
session_start();
require_once "connect.php";
if(isset($_POST["userName"])){
  if(!empty($_POST["userName"])){
    $userName=$_POST["userName"];
    $userPass=md5($_POST["userPass"]);
    $userDetected=false;//придумываем переменную где показывается определен пользователь или нет
    $userTable=mysqli_query($link,"SELECT * FROM db_users");//выбераем нужную таблицу
    while($oneUser=mysqli_fetch_assoc($userTable)){//пробегаем циклом по таблице и ищем совпадения
      if($oneUser['userName']==$userName && $oneUser['userPass']==$userPass){
        $userDetected=true;//если нашлись совпадения переменная меняется на true
        $_SESSION['u']=$oneUser;
      }
    }
    if($userDetected==false){
      unset($_SESSION['u']);
    }
  }
}
if(isset($_POST['mainMenu'])){
  $_SESSION['mainMenu']=$_POST['mainMenu'];
}
if(!isset($_SESSION['mainMenu'])){$_SESSION['mainMenu']='menu';}


?>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Admin</title>
<link rel="stylesheet" type="text/css" href="myStyles.css">
</head>
<body>
<?php if(!isset($_SESSION['u'])): ?>
<!--если входит гость-->
<div class="logForm">
  <form name="userLogForm" method="POST" action="">
    <table>
      <tr>
        <td align="right">User Name:</td>
        <td><input type="email" name="userName"></td>
      </tr>
      <tr>
        <td align="right">password:</td>
        <td><input type="password" name="userPass"></td>
      </tr>
      <tr>
        <td colspan="2" align="right"><input type="submit" value="enter"></td>
      </tr>
    </table>
</div>
<?php else: ?>
<!--для опознанного пользователя-->
<div class="admMenu">
  <form name="userLogForm" method="POST" action="">
    <input type="hidden" name="userName" value="      " />
    <input type="hidden" name="userPass" value="      " />
    <input type="submit" value="exit">
  </form><?php include "menu.php"; ?>
  </div>
<?php
//if(isset($_SESSION['mainMenu'])){echo $_SESSION['mainMenu'];}

switch($_SESSION['mainMenu']){
  case 'users':
  //что делать если в $_SESSION['mainMenu'] прописано  'menu'
    include "moduls/users.php";
  break;
  case 'menu':
    include "moduls/menuEditor.php";
  break;
  case 'banner':
    include "moduls/banners.php";
  break;
  case 'partners':
    include "moduls/partners.php";
  break;
  case 'about':
    include "moduls/about.php";
  break;
  case 'counters':
    include "moduls/counters.php";
  break;
  case 'tabs':
    include "moduls/tabs.php";
  break;
  case 'services':
    include "moduls/services.php";
  break;
  case 'portfolio':
    include "moduls/portfolio.php";
  break;
  case 'feedbacks':
    include "moduls/feedbacks.php";
  break;
  case 'pricing':
    include "moduls/pricing.php";
  break;
  case 'FAQ':
    include "moduls/FAQ.php";
  break;
  case 'team':
    include "moduls/team.php";
  break;
  case 'contact':
    include "moduls/contact.php";
  break;
  case 'footer':
    include "moduls/footer.php";
  break;
}
?>
<?php endif; ?>
</body>
</html>

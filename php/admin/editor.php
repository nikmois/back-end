<?php
require_once "connect.php";
if(isset($_POST['bigText'])){
	// запись в файл
		$kuda=fopen("bloknotik.html","a");
		$finalText=$_POST['zagolovok'].' ['.$_POST['jazyk'].']'.$_POST['bigText'];
		fwrite($kuda,$finalText);
		fclose($kuda);
	// запись в базу данных
	$nashText=$_POST['bigText'];
	$nashZagolovok=$_POST['zagolovok'];
	$nashJazyk=$_POST['jazyk'];
	mysqli_query($link, "INSERT INTO df_pages VALUES(NULL,'$nashZagolovok','$nashJazyk','$nashText')");
	}
?>
<!DOCTYPE html>
<html><head>
<meta charset="utf-8" />
<title></title>
<script language="javascript" src="ckeditor/ckeditor.js"></script> 
</head>
<body>
<form method="POST" action="">
Название страницы: <input type="text" name="zagolovok" /><br />
Язык текста:<select name="jazyk">
<option value="ru">По-русски</option>
<option value="et">Eesti keeles</option>
<option value="en">In English</option>
</select><br />
Текст страницы:
<textarea id="listok" name="bigText" ></textarea>
<input type="submit" value="Записать" />
</form>
<script>
	CKEDITOR.replace("listok");
</script>
</body>
</html>
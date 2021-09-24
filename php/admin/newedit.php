<?php
require_once "connect.php";
require_once "saver.php";
if(isset($_POST['nashText'])){
	// запись в базу данных
	$description=$_POST['nashText'];
	mysqli_query($link, "INSERT INTO df_ckedit VALUES(NULL,'$description')");
	}
?>
<!DOCTYPE html>
<html><head>
<meta charset="utf-8" />
<title></title>
<script language="javascript" src="ckeditor/ckeditor.js"></script>
</head>
<body>
<form id="kaka" method="POST">
Текст страницы:
<textarea id="listok" name="nashText" ></textarea>
</form>
<br />
<form id="popa" method="POST" name="albom" action="saver.php" enctype="multipart/form-data">
Фото: <input type="file" name="prodPhoto[]" accept="image/jpeg,image/png,image/gif" multiple />
</form><br />
<input type="button" value="submit" onclick="submitForm()">
<script>
	CKEDITOR.replace("listok");
</script>
<script type="text/javascript">
function submitForm(){
	var element1=document.getElementById("kaka");
	var element2=document.getElementById("popa");
	element1.submit();
	element2.submit();
}
</body>
</html>

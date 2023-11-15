<!DOCTYPE html>
<html lang="pl">
<head>
	<meta charset="utf-8">
	<title>ZAD 1 - Zmień nazwisko klienta</title>
	<link rel="stylesheet" href="css/arkusz.css">
</head>
<body>
	<form action="zadanie1.php" method="post">
		
		<div>
			<label> 
				Numer ID klienta: <input type="number" name="idklienta">
			</label>
		</div>
		<div>
			<label> 
				Zmień nazwisko na: <input type="text" name="nazwisko">
			</label>
		</div>
		
		<input type="submit" value="Zmień">
		
	</form>
	
<?php
	
if(isset($_POST['idklienta']))
{
	$idklienta = $_POST['idklienta'];
	$nazwisko = $_POST['nazwisko'];
	
	
	
}


?>
</body>
</html>
<!DOCTYPE html>
<html lang="pl">
<head>
	<meta charset="utf-8">
	<title>ZAD 3 - Kolorowy zawrót głowy</title>
	<link rel="stylesheet" href="css/arkusz.css">
</head>
<body>
	<form action="zadanie3.php" method="post">
		
		<label for="kolor"> Kolor: </label>
		<select name="kolor" id="kolor">
<?php
			
	// Turaj wyjęte (bez powtórzeń) z tabeli auta kolory jako options listy

?>			
		</select>

		<input type="submit" value="Pokaż statystyki">
		
	</form>
	
<?php
	
if(isset($_POST['kolor']))
{
	$kolor = $_POST['kolor'];
	
	
	
	
}

?>
</body>
</html>
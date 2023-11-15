<!DOCTYPE html>
<html lang="pl">
<head>
	<meta charset="utf-8">
	<title>ZAD 2 - Znajdź auta wg przebiegu</title>
	<link rel="stylesheet" href="css/arkusz.css">
</head>
<body>
	<form action="zadanie2.php" method="post">
		
		<div>
			<label> 
				Maksymalny przebieg [km]: <input type="number" name="przebieg">
			</label>
		</div>
		
		<input type="submit" value="Pokaż samochody">
		
	</form>
	
<?php
	
if(isset($_POST['przebieg']))
{
	$przebieg = $_POST['przebieg'];
	
	
	
}

?>
</body>
</html>
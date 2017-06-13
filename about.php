<?php
	$title = "About muscari-mint";
?>

<?php require_once('header.php'); ?>

	<div class="top-content">
		<h3>About</h3>
		
	</div>
</div>
<div class="right-content">
	<div class="top-content">
		<h3>Kontakt</h3>
		<form method="post" action="kontakt.php">
			<input type="text" name="name" placeholder="Name"><br>
			<input type="email" name="email" placeholder="E-Mail"><br>
			<input type="text" name="betreff" placeholder="Betreff"><br>
			<textarea name="nachricht" placeholder="Nachricht"></textarea><br>
			<input type="submit" name="submit" value="Senden">
		</form>
	</div>
</div>
<?php require_once('footer.php'); ?>
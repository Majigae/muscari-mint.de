<?php
	$title = "Kontakt";
?>

<?php require_once('header.php'); ?>

<div class="content">
	<div class="left-content">
		<h2>Kontakt</h2>
		<div class="trennlinie"></div>
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
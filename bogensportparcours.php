<?php
	$title = "Bogensportparcours";
?>

<?php require_once('header.php'); ?>

<?php

$db = new PDO('pgsql:host=localhost;user=postgres;dbname=postgres');

$statement = $db->prepare('select * from parcours');

$statement->execute(); ?>

<div class="content">
	<div class="left-content">
		<h2>Länderübersicht</h2>
		<table>
			<tr>
				<td><?php echo '<a href="landuebersicht.php?land='.$row['land'].'">';?><div class="land">DE</div></a></td>
				<td><p>xx Parcours gelistet</p></td>
			</tr>
			<tr>
				<td><?php echo '<a href="landuebersicht.php?land='[AT]'">';?><div class="land">AT</div></a></td>
				<td><p>xx Parcours gelistet</p></td>
			</tr>
			<tr>
				<td><?php echo '<a href="landuebersicht.php?land='.$row['land'].'">';?><div class="land">CH</div></a></td>
				<td><p>xx Parcours gelistet</p></td>
			</tr>
		</table>
	</div>
</div>

<?php require_once('footer.php'); ?>
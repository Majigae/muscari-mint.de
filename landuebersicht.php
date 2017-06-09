<?php
	$title = "Parcoursdetails";
?>

<?php require_once('header.php'); ?>

<?php $db = new PDO('pgsql:host=localhost;user=postgres;dbname=postgres');

$statement = $db->prepare('select * from parcours where land=?');

$statement->execute([$_GET['land']]); 

foreach($statement->fetchAll() as $row ) {?>


<div class="content">
	<div class="left-content">
		<table>
			<tr>
				<th></th>
				<th>Adresse</th>
			</tr>
			<?php 
			foreach($statement->fetchAll() as $row ) {
			echo '<tr>
					<td>
						<a href="parcoursdetails.php?id='.$row['id'].'">
							'.$row['name'].'</a>
					</td>
					<td>'.$row['adresse'].' <br>'.$row['plz'].' '.$row['ort'].'
					</td>
				</tr>';
			} ?>

		</table>
	</div>
</div>


<?php require_once('footer.php'); ?>
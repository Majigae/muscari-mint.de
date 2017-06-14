<?php
	$title = "Bogensportparcours";

	require_once('../includes/header.php');

	$db = new PDO('pgsql:host=localhost;user=postgres;dbname=postgres');

	$statement = $db->prepare('select * from parcours ORDER BY plz');

	$statement->execute(); 
?>

	<div class="middle-content">
		<table>
			<?php
				$last_bl = null;
				foreach($statement->fetchAll() as $row ) {
					if ($last_bl != $row['bundesland']) {
						echo '<tr>
								<td colspan="2"><h4>'.htmlentities($row['bundesland']).'</h4</td>
							</tr>';
					$last_bl = $row['bundesland'];
					}

					echo '
						<tr>
							<td>
								<a href="parcoursdetails.php?id='.htmlentities($row['id']).'"> '.$row['name'].'</a>
							</td>
							<td>'
								.htmlentities($row['adresse']).' <br>'.htmlentities($row['plz']).' '.htmlentities($row['ort']).'
							</td>
						</tr>';
				} 
			?>

		</table>
	</div>
</div><!--End left content - start in header-->

<?php require_once('../includes/footer.php'); ?>
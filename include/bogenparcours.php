<?php

$db = new PDO('pgsql:host=localhost;user=postgres;dbname=postgres');

$statement = $db->prepare('select * from parcours ORDER BY id ASC');

$statement->execute();


echo '<article><table><th></th><th>Adresse</th><th>Website</th>';


foreach($statement->fetchAll() as $row ) {
	

	echo '<tr><td><a href="index.php?incl=parcoursdetails.php?id='.$row['id'].'"> '.htmlentities($row['name']). '</a></td> <td>'.htmlentities($row['adresse']). ' <br> '.htmlentities($row['plz']).'  '.htmlentities($row['ort']).'</td><td><a href="http://www.'.$row['website'].'"" target="blank"><i class="fa fa-home" aria-hidden="true"></i>
</a></td></tr>';

}
echo '</table></article>';

echo '<article><table><th></th><th>Adresse</th><th>Website</th>';




?>
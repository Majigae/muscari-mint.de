<?php

$db = new PDO('pgsql:host=localhost;user=postgres;dbname=postgres');

$statement = $db->prepare('select * from parcours where ID=?');

$statement->execute([$_GET['id']]);

foreach($statement->fetchAll() as $row ) {

	echo $row['telefon_nr']. '<br>';

}


?>

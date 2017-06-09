<?php
	$title = "Parcoursdetails";
?>

<?php require_once('header.php'); ?>

<?php $db = new PDO('pgsql:host=localhost;user=postgres;dbname=postgres');

$statement = $db->prepare('select * from parcours where ID=?');

$statement->execute([$_GET['id']]); 

foreach($statement->fetchAll() as $row ) {?>


<div class="content">
	<!--Left Content - Info-->
	<div class="left-content">
		<h3><?php echo $row['name'];?></h3>
		<table>
			<tr>
				<th>Adresse</th>
				<td class="adresse"><?php echo $row['adresse'];?><br><?php echo $row['plz'];?> <?php echo $row['ort'];?></td>
			</tr>
			<tr>
				<th>Telefon-Nr</th>
				<td>+43 (0)<?php echo $row['telefon_nr'];?></td>
			</tr>
			<tr>
				<th>Website</th>
				<td><?php echo'<a href="http://www.'.$row['website'].'" target="blank">';?><i class="fa fa-globe" aria-hidden="true"></i></a> <?php if (!empty($row['facebook'])) { echo '<a href="https://www.facebook.com/'.$row['facebook'].'" target="blank"><i class="fa fa-facebook-square" aria-hidden="true"></i></a>';} else {}?></td>
			</tr>
			<tr>
				<th colspan="2">Öffnungszeiten</th>
			</tr>
			<tr>
				<td class="th">Parcours</td>
				<td><?php echo $row['oeffnungszeiten_parcours']; ?></td>
			</tr>
			<tr>
				<td class="th">Verleih/Shop</td>
				<td><?php echo $row['oeffnungszeiten_verleih']; ?></td>
			</tr>
			<tr>
				<th colspan="2">Preise <!--<p style="text-align: right"><i class="fa fa-info-circle" aria-hidden="true"></i></p>--></th>
			</tr>
			<tr>
				<td class="th">Parcours</td>
				<td>Erwachsene <span>ab <?php echo $row['parcours_kosten_er'];?>,- EUR</span><br>
					Jugend <span>ab <?php echo $row['parcours_kosten_ju'];?>,- EUR</span></td>
			</tr>
			<?php if(($row['verleih']) == 'true') {?>
			<tr>
				<td class="th">Verleihausrüstung</td>
				<td>Erwachsene <span><?php echo $row['verleih_kosten_er'];?>,- EUR</span><br>
					Jugend <span><?php echo $row['verleih_kosten_ju'];?>,- EUR</span></td>
			</tr>
			<?php } else { ?>
				<tr><td></td>
					<td>Keine Leihausrüstung!</td></tr> <?php } ?>
			<tr>
				<td colspan="2" class="info"><a href="http://www.bogensport-zentrum.at/bogensport/site/content/ohne_material/preise" target="blank">Mehr Infos zu den Preisen</a>
				</td>
			</tr>
			<tr>
				<th colspan ="2">Parcoursinfo</th>
			</tr>

			<!--<tr>
				<td colspan ="2">Das Bogensportzentrum in Kirchschlag bietet im Breitensteiner Wald 3 verschiedene Parcours an:<br>
					<ul>
						<li>Blauer Parcours mit 20 Stationen - Zeitaufwand ca. 1,5 Stunden</li>
						<li>Roter Parcours mit 28 Stationen - Zeitaufwand ca. 2 Stunden</li>
						<li>Gelber Parours mit 40 Stationen - Zeitaufwand ca. 3,5 Stunden</li>
					</ul>
						<p>zudem gibt es einen Eventparcours mit 12 Stationen, welcher exklusiv für große Gruppen (z. B.: Firmenevents) reserviert werden kann.</p></td>
			</tr>
			<tr>
				<td colspan ="2"><p>Ein gut ausgestatteter <span>Shop</span> wartet für neue Bogensport-Begeisterte sowie alteingessesene Schützen mit allerlei zum Thema Bogenschießen.<br>Gleich darüber befindet sich die <span>Bogensporthalle</span>, in der man auch bei Schlechtwetter die Pfeile sausen lassen kann.</p></td>-->
			</tr>
		</table>
	</div>

	<!--Right Content - Photos-->
	<div class="right-content">
		<!--<img src="assets/img/feel_the_passion_KOMPPLETT.jpg" alt="bogensportzentrum breitenstein logo">-->
	</div>
	
</div>

<?php } ?>
<?php require_once('footer.php'); ?>
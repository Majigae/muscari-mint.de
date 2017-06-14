<?php
	$title = "Parcoursdetails";
?>

<?php require_once('header.php'); ?>

<?php $db = new PDO('pgsql:host=localhost;user=postgres;dbname=postgres');

$statement = $db->prepare('select * from parcours WHERE parcours.id=?');
$photo_statement = $db->prepare('select * from photos WHERE photos.parcours_id=?');

$statement->execute([$_GET['id']]); 


$row = $statement->fetch();

?>



	<div class="top-content">
		<h3><?php echo $row['name'];?></h3>
	</div> <!--End top-content-->
	<div class="middle-content">
		<table>
			<tr>
				<td colspan="2"><span><?php echo htmlentities($row['adresse']);?><br><?php echo htmlentities($row['plz']);?> <?php echo htmlentities($row['ort']);?></span></td>
			</tr>
			<tr>
				<th>Telefon-Nr.</th>
				<td>+43 <?php echo htmlentities($row['telefon_nr']);?></td>
			</tr>
			<tr>
				<th>Website</th>
				<td><?php echo'<a href="http://www.' .htmlentities($row['website']).'" target="blank">www.'.htmlentities($row['website']).'</a>';?></td>
			</tr>
		</table>
		<table>
			<tr>
				<td colspan="2"><h4>Öffnungszeiten</h4></td>
				<td></td>
			</tr>
			<tr>
				<th>Parcours</th>
				<td><?php echo htmlentities($row['oeffnungszeiten_parcours']); ?></td>
			</tr>
			<tr>
				<th>Verleih / Shop</th>
				<td><?php echo htmlentities($row['oeffnungszeiten_verleih']); ?></td>
			</tr>
		</table>
		<table>
			<tr>
				<td colspan="2"><h4>Preise</h4></td>
				<td></td>
			</tr>
			<tr>
				<th>Parcours</th>
				<td><?php echo htmlentities($row['parcours_kosten_er']); ?>,- EUR</td>
			</tr>
				<?php if(($row['verleih']) == 'true') {?>
			<tr>
				<th>Verleihausrüstung</th>
				<td>Erwachsene <?php echo htmlentities($row['verleih_kosten_er']);?>,- EUR<br>
					Jugend <?php echo htmlentities($row['verleih_kosten_ju']);?>,- EUR</td>
			</tr>
			<?php } else { ?>
				<tr><td></td>
					<td>Keine Leihausrüstung!</td></tr> <?php } ?>
			</tr>
		</table>

	</div><!--End middle-content-->
	<div class="slider-content">	
		
	</div><!--End slider-content-->
	
	</div><!--End left-content-->
	<div class="right-content">
		<div class="top-content">
		<?php
			$photo_statement->execute([$_GET['id']]); 
			foreach ($photo_statement->fetchAll() as $photo) {?>
				<div class="photo">
					<?php echo '<img src="assets/pic/parcours/' .$photo['photo_name']. '.jpg">';?>
			
				</div>
		<?php }  ?>
		</div>
		<div id="map">
		</div>
			<script>
     			function initMap() {
        			var uluru = {lat: <?php echo htmlentities($row['lat']);?>, lng: <?php echo htmlentities($row['lng']);?>};
        			var map = new google.maps.Map(document.getElementById('map'), {
          				zoom: 10,
          				center: uluru
       				});
       				var marker = new google.maps.Marker({
          			position: uluru,
          			map: map
       				});
      			}
  			</script> 
  			<?php $key = '';?>
  			<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBsBa8cV_0PITCmCqa25Znf1AriLKiv5xk&callback=initMap"></script>

		
	</div>
	<?php  ?>

<?php require_once('footer.php'); ?>
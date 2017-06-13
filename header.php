<?php require_once( dirname(__FILE__) . '/functions.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title><?php the_title(); ?></title>

	<!--Styles-->
		<!--Google Font-->
		<link href="https://fonts.googleapis.com/css?family=Roboto|Sorts+Mill+Goudy" rel="stylesheet"> 
		<!--Awesome Fonts-->
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.min.css">

	<!--Script-->
		<!--Google JQuery-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" async defer src="assets/js/script.js"></script>

</head>
<body>
	<div class="container">
		<div class="default-nav">
			<ul>
				<li><a href="index.php">Home</a></li>
				<li><a href="bogensportparcours.php">Bogensportparcours</a></li>
				<li><a href="about.php">About</a></li>
				<li><input id="suchfeld" type="text" name="suchfeld" placeholder="Parcours suchen"><input id="search" type="submit" name="search-button" value="GO"></li>
			</ul>
		</div>

		<div id="mobile-nav-button">
			<ul>
				<li><i class="fa fa-bars" aria-hidden="true"></i></li>
			</ul>
		</div>
		<div class="mobile-nav">
			<ul>
				<li><a href="bogensportparcours.php">Bogensportparcours</a></li>
				<li><a href="about.php">About</a></li>
				<li>
					<form action="index.php" method="get">
						<input id="suchfeld" type="text" name="suchbegriff" placeholder="Parcours suchen">
						<input id="search" type="submit" name="search" value="GO">
					</form>
				</li>
			</ul>
		</div>
		

		<div class="left-content">

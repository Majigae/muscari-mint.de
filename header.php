<?php require_once( dirname(__FILE__) . '/functions.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title><?php the_title(); ?></title>

	<!--Styles-->
		<!--Google Font-->
		<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet"> 
		<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"> 
		<!--Awesome Fonts-->
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.min.css">

	<!--Script-->
		<!--Google JQuery-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="assets/js/script.js"></script>

</head>
<body>
 	<!--Navigation-->
 	<!--<div class="img">
 		<img src="assets/img/muscari-mint-bw.png" alt="muscari-mint logo" title="muscari-mint logo">
 	</div>-->
 	<nav class="nav-default">
 		<ul>
 			<li><a href="index.php"><i class="fa fa-home" aria-hidden="true"></i></a></li>
 			<li><a href="bogensportparcours.php">Bogensportparcours</a></li>
 			<li><a href="about.php">About</a></li>
 			<li><a href="kontakt.php">Kontakt</a></li>
 		</ul>
 	</nav>
 	<!--Mobile Navigation-->
 	<div class="nav-mobile-button" onclick="myFunction()">
 		<ul>
 			<li><i class="fa fa-bars" aria-hidden="true"></i></li>
 			<div id="nav-mobile">
 				<ul>
 					<li><a href="index.php">Home</a></li>
 					<li><a href="bogensportparcours.php">Bogensportparcours</a></li>
 					<li><a href="about.php">About</a></li>
 					<li><a href="kontakt.php">Kontakt</a></li>
 				</ul>
 			</div>
 		</ul>
 	</div>

 	 


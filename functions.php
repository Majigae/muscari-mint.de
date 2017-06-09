<?php

	require_once (dirname(__FILE__) . '/config.php');

	function the_title() {
		global $title;

		echo $title;
	}

	function home_url() {
		echo ABS_URL;
	}
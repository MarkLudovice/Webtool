<?php
	$conn = mysqli_connect("localhost", "root", "", "webtool");
	if(!$conn){
    die("Connection Failed: " . mysqli_connect_error());
}

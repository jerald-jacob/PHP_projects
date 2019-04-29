<?php
require("db/db.php");

if(isset($_GET['id'])){
	$id = $_GET['id'];
mysqli_query($con,"DELETE FROM comments WHERE id='$id'");
header("location: index.php");
}if(isset($_GET['msgid'])){
	$id = $_GET['msgid'];
mysqli_query($con,"DELETE FROM message WHERE id='$id'");
header("location: feedback.php");
}
mysqli_close($con);
?>
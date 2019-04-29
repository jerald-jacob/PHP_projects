<?php
session_start();
 
include('connection.php');
 
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$gender=$_POST['gender'];
$address=$_POST['address'];
$sem=$_POST['sem'];
$course=$_POST['course'];
$username=$_POST['username'];
$password=$_POST['password'];
$phnumber=$_POST['phnumber'];

$Department=$_POST['department'];

$db = mysqli_connect("localhost", "root", "", "akhil");


$teacher_update="UPDATE member set fname='$fname',lname='$lname',address='$address',course='$course',department='$Department',gender='$gender',password='$password',semister='$sem',phnumber='$phnumber' where username='$username'";
 $update_result=mysqli_query($db, $teacher_update);

				
header("location: tstudent_details_sem.php?yymsg=ss");

mysqli_close($con);
?>

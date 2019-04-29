<?php
session_start();
 
include('connection.php');
 
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$gender=$_POST['gender'];
$address=$_POST['address'];
$Department=$_POST['department'];
$username=$_POST['username'];
$password=$_POST['password'];
$phnumber=$_POST['phnumber'];
$status=0;

 
 $db = mysqli_connect("localhost", "root", "", "akhil");


$teacher_update="UPDATE teacher_member set fname='$fname',lname='$lname',address='$address',department='$Department',gender='$gender',password='$password',phnumber='$phnumber' where username='$username'";
 $update_result=mysqli_query($db, $teacher_update);
header("location: teacher_details.php?yymsg=ss");

mysqli_close($con);
?>

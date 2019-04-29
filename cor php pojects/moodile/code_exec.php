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
$status=0;
$Department=$_POST['department'];

$db = mysqli_connect("localhost", "root", "", "akhil");

$result = mysqli_query($db,"SELECT * FROM member where username='$username'");
if($row = mysqli_fetch_array($result))
{
header("location: moodile_student_registration.php?id=ff");

}
else
{

mysqli_query($bd, "INSERT INTO member(fname, lname, gender, address,course, username, password,semister,status,Department,phnumber)VALUES('$fname', '$lname', '$gender', '$address', '$course','$username', '$password','$sem','$status','$Department','$phnumber')");
mysqli_query($bd,"INSERT INTO personel(username) VALUES ('$fname')");
				
header("location: moodile_student_registration.php?msg=ss");
 }
mysqli_close($con);
?>

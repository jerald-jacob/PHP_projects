<?php
session_start();
 
include('connection.php');
 
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$gender=$_POST['gender'];
$address=$_POST['address'];
$Department=$_POST['Department'];
$username=$_POST['username'];
$password=$_POST['password'];
$phnumber=$_POST['phnumber'];
$status=0;

 
 $db = mysqli_connect("localhost", "root", "", "akhil");

$result = mysqli_query($db,"SELECT * FROM teacher_member where username='$username'");

if($row = mysqli_fetch_array($result))
{
header("location: moodile_teacher_registration.php?id=ff");

}
else
{
mysqli_query($bd, "INSERT INTO teacher_member(fname,lname,address,	department,gender,username,password,status,phnumber)VALUES('$fname','$lname','$address','$Department','$gender','$username','$password','$status','$phnumber')");	
 
header("location: moodile_teacher_registration.php?msg=ss");
}
mysqli_close($con);
?>

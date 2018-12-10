<?php
session_start();
 
include('connection.php');
 
$cname=$_POST['cname'];
$sem=$_POST['sem'];
$Department=$_POST['Department'];
$course_id=$_POST['course_id'];

$db = mysqli_connect("localhost", "root", "", "akhil");

$result = mysqli_query($db,"SELECT * FROM course where  course_id='$course_id'");
if($row = mysqli_fetch_array($result))
{
header("location: moodile_course_registration.php?id=ff");

}
else
{


mysqli_query($bd, "INSERT INTO course(course_name,sem,Department,course_id)VALUES('$cname','$sem','$Department','$course_id')");
 
header("location: moodile_course_registration.php?msg=ss");
 }
mysqli_close($con);
?>
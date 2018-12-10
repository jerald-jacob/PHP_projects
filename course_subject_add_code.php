 <?php
session_start();
 
include('connection.php');
 
$department=$_POST['department'];
$course=$_POST['course'];
$subject=$_POST['subject'];
$fullname_teacher_id=$_POST['teacher'];
$explode_string=(explode("#",$fullname_teacher_id));
$teacher_id=$explode_string[1];
$teacher=$explode_string[0];
//$teacher=$_POST['teacher'];
//$teacher_id=$_POST['teacher_id'];
$semister=$_POST['semister'];
$subject_id=$_POST['subject_id'];
 
 $db = mysqli_connect("localhost", "root", "", "akhil");

$result = mysqli_query($db,"SELECT * FROM course_subject where  subject_id='$subject_id'");
if($row = mysqli_fetch_array($result))
{
header("location: moodile_course_sub_registration.php?id=ff");

}
else
{





mysqli_query($bd, "INSERT INTO course_subject(department,course,subject,teacher,semister,teacher_id,subject_id)VALUES('$department','$course','$subject','$teacher','$semister','$teacher_id','$subject_id')");
 
header("location: moodile_course_sub_registration.php?msg=ss");
 }
mysqli_close($con);
?>
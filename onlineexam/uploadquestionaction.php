<?php
$id=$_REQUEST["examname"];
$a=$_REQUEST["subject"];   
 session_start();  
$t=$_SESSION["uid"];                                                      
//echo $id."<br>".$a."<br>";
$con=mysqli_connect("localhost","root","","online");
$sql=mysqli_query($con,"insert into exam(exam_name,subject,staff_id) values('$id','$a','$t')");
echo "insert into exam(exam_name,subject,staff_id) values('$id','$a','$t')";
$sql2 = mysqli_query($con,"select e_id from exam where exam_name='$id' and subject='$a'");
if($row=mysqli_fetch_array($sql2))
 {
//echo $row["e_id"];

}
session_start();
$_SESSION["eid"]=$row["e_id"];
if($sql==0)
{
echo ("please check the query");
}
else
if($sql==1)
{
?>
<script>
window.location="insertquestion.php";
</script>
<?php
}
?>

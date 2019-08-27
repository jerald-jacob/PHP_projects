<?php
$id=$_REQUEST["qid"]; 
$i=$_REQUEST["Answer"];    
echo $i."<br>";
$con=mysqli_connect("localhost","root","","online");
$sql= mysqli_query($con,"select answer from question where q_id='$id'");
if($row=mysqli_fetch_array($sql))
{
echo $row["answer"];
$ans=$row["answer"];
}
if($i==$ans)
{
$stat=1;
}
else
{
$stat=0;
}
//echo $stat;
session_start();
$t=$_SESSION["uid"];  
$sql2=mysqli_query($con,"insert into s_exam(status,answer,Reg_no,q_id) values('$stat','$i','$t','$id')");
echo "insert into s_exam(status,answer,Reg_no,q_id) values('$stat','$i','$t','$id')";
?>
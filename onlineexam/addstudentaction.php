<?php
$id=$_REQUEST["name"];
$a=$_REQUEST["department"];      
$b=$_REQUEST["stdid"];
$password=$_REQUEST["password"];
$t='student';                                                      
//echo $id."<br>".$a."<br>".$b."<br>".$password."<br>";
$con=mysqli_connect("localhost","root","","online");
$sql=mysqli_query($con,"insert into login(username,password,type) values('$b','$password','$t')");
$sql2 = mysqli_query($con,"select  user_id from login where username='$b' and password='$password'");
if($row=mysqli_fetch_array($sql2))
{
echo $row["user_id"]."<br>";
$stid=$row["user_id"];
$sql3=mysqli_query($con,"insert into student(S_name,department,user_id) values('$id','$a','$stid')");
echo $sql3;
}
if($sql3==0)
{
echo ("please check the query");
}
else
if($sql3==1)
{
?>
<script>
window.location="teacherhome.php";
</script>
<?php
}
?>
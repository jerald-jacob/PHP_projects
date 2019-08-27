         <?php
$id=$_REQUEST["id"];
$password=$_REQUEST["password"];
//echo $id."<br>".$password."<br>";
$con = mysqli_connect("localhost","root","","online");
$sql = mysqli_query($con,"select * from login where username='$id' and password='$password'");

$t="invalid";
if($row=mysqli_fetch_array($sql))
 {
//echo $row["user_id"]. " " .$row["password"]. " " .$row["username"]. " " .$row["type"]. "<br>";
$t=$row["type"];

}
session_start();
$_SESSION["uid"]=$row["user_id"];
if($t=="invalid")
{
echo("invalid username or password");
}
else
if($t=="staff")
{
?>
<script>
window.location="teacherhome.php";
</script>
<?php 
}
else
if ($t=="admin")
{
?>
<script>
window.location="adminhome.php";
</script>
<?php 
}
else
if ($t=="student")
{
?>
<script>
window.location="studenthome.php";
</script>
<?php 
}
?>


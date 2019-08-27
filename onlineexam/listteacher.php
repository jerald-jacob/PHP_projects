<?php
$con = mysqli_connect("localhost","root","","online");
$sql = mysqli_query($con,"select * from teacher ");
while($row=mysqli_fetch_array($sql))
 {
echo $row["user_id"]. " " .$row["staff_id"]. " " .$row["T_name"]. " " .$row["department"]. "<br>";
}
?>
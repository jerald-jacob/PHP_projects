<?php
$con = mysqli_connect("localhost","root","","online");
$sql = mysqli_query($con,"select * from student");
while($row=mysqli_fetch_array($sql))
 {
echo $row["user_id"]. " " .$row["Reg_no"]. " " .$row["s_name"]. " " .$row["department"]. "<br>";
}
?>
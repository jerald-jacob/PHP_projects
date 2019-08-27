<?php
$e=$_REQUEST["exam"];     
$s=$_REQUEST["teacher"];  
$con=mysqli_connect("localhost","root","","online");
$sql = mysqli_query($con,"select   subject from exam where e_id='$e and staff_id=$s'");
if($row=mysqli_fetch_array($sql))
{
echo $row[0];
}
$sql3= mysqli_query($con,"select  reg_no from exam where e_id='$e and staff_id=$s'");
if($row=mysqli_fetch_array($sql))
{
echo $row[0];
}
$sql2 = mysqli_query($con,"select   q_id,question,option_a,option_b,option_c,option_d from question where e_id='$e'");
echo "<form action ='nextaction.php'  method='post'>";
if($row=mysqli_fetch_array($sql2))
 {
echo $row["q_id"]. "&nbsp" .$row["question"]. "<br>" . "A) &nbsp".$row["option_a"]. "<br>" . "B) &nbsp" .$row["option_b"]. "<br>" . "C) &nbsp" .$row["option_c"].  "<br>" . "D) &nbsp" .$row["option_d"]."<br>";
}
echo "<input type='hidden' name='qid' value=".$row["q_id"].">";
echo "<table> <tr><td>Answer</td>";
echo "<td><select name='Answer'>";
echo "<option>".$row["option_a"]."</option>";
echo "<option>".$row["option_b"]."</option>";
echo "<option>".$row["option_c"]."</option>";
echo "<option>".$row["option_d"]."</option></td>";
echo "</select></tr></table>";
echo "<input type ='submit'  name='next'  value='NEXT'>";
echo "</form>";
?>
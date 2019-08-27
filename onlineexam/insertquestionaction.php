<?php
$id=$_REQUEST["question"];
$o=$_REQUEST["option1"];   
$p=$_REQUEST["option2"];
$i=$_REQUEST["option3"];
$n=$_REQUEST["option4"];   
 session_start();  
$t=$_SESSION["eid"];                                                    
//echo $id."<br>".$o."<br>".$p."<br>".$i."<br>".$n."<br>".$t."<br>";
$con=mysqli_connect("localhost","root","","online");
$sql=mysqli_query($con,"insert into question(question,option_a,option_b,option_c,option_d,e_id) values('$id','$o','$p','$i','$n','$t')");
echo $sql;
$sql2 = mysqli_query($con,"select * from question where question='$id' ");
echo "<form action ='correctanswer.php'  method='post'>";
if($row=mysqli_fetch_array($sql2))
 {
echo $row["e_id"]. "<br>" .$row["q_id"]. "&nbsp" .$row["question"]. "<br>" . "A) &nbsp".$row["option_a"]. "<br>" . "B) &nbsp" .$row["option_b"]. "<br>" . "C) &nbsp" .$row["option_c"].  "<br>" . "D) &nbsp" .$row["option_d"]."<br>";
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

 


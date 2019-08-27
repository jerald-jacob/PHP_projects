<?php
$id=$_REQUEST["Answer"];  
$a=$_REQUEST["qid"];                                                     
echo $id."<br>".$a."<br>";
$con=mysqli_connect("localhost","root","","online");
$sql=mysqli_query($con,"update question set answer ='$id' where q_id='$a' ");
echo "update question set answer ='$id' where q_id='$a' ";
echo $sql;
if($sql==0)
{
echo("invalid username or password");
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
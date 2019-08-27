<html>
   <head>
      <title>
      </title>
   </head>
   <body>
     <center><b><u>WELCOME STUDENT</u></b></center>
         <form action="next.php" method="post">
         <table>
         <tr>
            <td><label>Exam name</label></td>
            <td><select name="exam">
                         <?php
                          $con=mysqli_connect("localhost","root","","online");
                          $sql=mysqli_query($con,"select e_id,exam_name from exam");
                          while ($row = mysqli_fetch_array($sql))
                           {
                           echo "<option value=".$row[0]." >";
                           echo $row[1];
                           echo"</option>";
                           }
                            ?>
          </td>
         </tr>
         <tr>
            <td><label>Teacher</label></td>
            <td><select name="teacher">
                         <?php
                          $con=mysqli_connect("localhost","root","","online");
                          $sql=mysqli_query($con,"select staff_id,T_name from teacher");
                          while ($row = mysqli_fetch_array($sql))
                           {
                           echo "<option value=".$row[0]." >";
                           echo $row[1];
                           echo"</option>";
                           }
                            ?>
         <tr>
           <td><label>  </label></td><td><input type = "submit"  name="login" value="NEXT"></td>
         </tr>
         </tr>
        </table></form>
   </body>
</html>
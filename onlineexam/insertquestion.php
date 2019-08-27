<html>
    <head>
       <title>
        </title>   
    </head>
   <body><br><br><br><br><br><br><br><br><br><h1><center><b><u>QUESTION </u></b></h1></center>
   <form action ="insertquestionaction.php"  method="post">
  <table align="center"><tr>
            <td><label>QUESTION :&nbsp</label></td>
            <td><textarea row="3"  cols="50" name="question" required ></textarea></td>
         </tr>
         <tr>
            <td><label>option 1</label></td>
            <td><textarea row="1"  cols="8"  name="option1" required></textarea></td>
         </tr>   
         <tr>
            <td><label>option 2</label></td>
            <td><textarea row="1"  cols="8"  name="option2" required></textarea></td>
         </tr>
         <tr>
            <td><label>option 3</label></td>
            <td><textarea row="1"  cols="8"  name="option3" required></textarea></td>
         </tr>
         <tr>
            <td><label>option 4</label></td>
            <td><textarea row="1"  cols="8"  name="option4" required></textarea></td>
         </tr>
         <tr>
            <td><label></label></td>
            <td><input type = "submit"  name="login" value="NEXT"></td>
         </tr></form></table>
     
           <form action ="teacher.php"  method="post">
           <a href="finish.php"><input type ="submit" value="FINISH"></a>
             </form>
  </body>
</html>               
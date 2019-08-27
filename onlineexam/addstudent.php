<html>
    <head>
       <title>
        </title>   
    </head>
   <body> <img src=""><br><h1><center><b><u>STUDENT DETAILS</u></b></h1></center>
     <form action="addstudentaction.php" method="post">
    <table align="center"><tr>
            <td><label>Name</label></td>
            <td><input type = "text" name="name" required ></td>
         </tr>
         <tr>
            <td><label>Department</label></td>
            <td>
                <select name ="department">
                 <option>Mathematics</option>  
                 <option>Physics</option> 
                 <option>Chemistry</option> 
                 <option>Malayalam</option> 
                 <option>Petrochemicals</option> 
                 <option>Commerce</option> 
                 <option>Economics</option> 
                 <option>History</option> 
                 <option>English</option>
               </select> 
            </td>
         </tr>   
         <tr>
            <td><label>Username</label></td>
            <td><input type = "text"  name="stdid"></td>
         </tr>
         <tr>
            <td><label>Password</label></td>
            <td><input type = "password"  name="password"></td>
         </tr>
         <tr>
           <td><label>  </label></td><td><input type = "submit"  name="login" value="REGISTER"></td>
         </tr></table></form>
  </body>
</html>
<?php

require("db/db.php");
$result = mysqli_query($con, "SELECT * FROM comments ORDER BY id ASC");
while($row=mysqli_fetch_array($result)){
echo "<div class='comments_content'>";
echo "<h5><a href='delete.php?id=" . $row['id'] . "'> X</a><h5>";
echo "<h5>" . $row['name'] . "</h5>";
echo "<h5>" . $row['date_publish'] . "<h5></br></br>";
echo "<h5>" . $row['comments'] . "<h5>";
echo "</div>";
}
mysqli_close($con);

?>
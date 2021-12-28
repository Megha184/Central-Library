<?php 
include('comman/connect.php');
include('include/main.php');
include('include/header.php');
include('include/eThesisBanner.php');
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Thesis</title>
<style type="text/css">

.backbox{margin-bottom: 30px;}

.tr{font-weight: bold; background: #eee;}
.menu{
    width: 100%;
    height: 50px;
    color: blue;
    background: black;

}
.menu li{
    float: left;
    padding: 10px 20px 10px 20px;
    list-style: none;
}
body{
  text-align:center;
}
p{
  padding:10px 80px 80px 80px;
  text-align:justify;
}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 80%;
  margin-left:80px;
}

td, th {
  border-style: dotted;
  text-align: left;
  font-weight:bold;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>
    <div class="container-fluid">
        
        <div class="container">
          <?php 
          $id=$_REQUEST['id'];

            $res=$con->query("select * from publication where publication_id='$id'");
                $i=1;
                while($row=mysqli_fetch_array($res))
                {
   
                  echo "<h3>".$row['thesis_title']."</h3>";
                  echo "<h5>".$row['authors']." (".$row['year'].") ".$row['thesis_title']."<h5>";
                  echo "<h4>Abstract</h4>";
                  echo "<p>".$row['description']."</p>";
                    
                  echo "<table>";
                  echo "<tr>";
                  echo "<th>Item Type:</th>"; 
                  echo "<th>".$row['thesis_types']."</th>";
                  echo "</tr>";
                  echo "<tr>";
                  echo "<tr>";
                  echo "<td>Subjects:</td>";
                  echo "<td>".$row['subject']."</td>";
                  echo "</tr>";
                  echo "<td>Divisions:</td>";  
                  echo "<td>".$row['departments']."</td>";  
                  echo "</tr>";
                  echo "<tr>";
                  echo "<td>ID Code:</td>";
                  echo "<td>".$row['publication_id']."</td>";
                  echo "</tr>";
                  
                  echo "<tr>";
                  echo "<td>Deposited On:</td>";
                  echo "<td>".$row['date_upload']."</td>";
                  echo "</tr>";
                  echo "<tr>";
                  echo "<td>Last Modified:</td>";
                  echo "<td>".$row['date_modify']."</td>";
                  echo "</tr>";
                  echo "<tr>";
                  echo "<td>Supervisor(s):</td>";
                  echo "<td>".$row['supervisors']."</td>";
                  echo "</tr>";
                  
                echo "</table>";
                }
          ?>
          <br><br><br>
        </div>

    </div>
<?php
 include("include/footerstrip.php");
 ?>
<script type="text/javascript" src="js/bootstrap.js"></script>

</body>
</html>
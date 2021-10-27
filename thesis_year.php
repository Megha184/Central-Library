<?php 
include('comman/connect.php');
include('include/main.php');
include('include/header.php');
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
</style>
</head>
<body>
    <div class="menu">
            <ul class="ep_tm_menu"> 
                <li>
                    <a href="thesis.php">All</a>
                </li>
                <li>
                    <a href="thesis_year.php">Year</a>
                </li>
                <li>
                    <a href="thesis_subject.php">Subject</a>
                </li>
                <li>
                    <a href="thesis_supervisors.php">Supervisors</a>
                </li>
                <li> 
                    <a href="thesis_type.php">Thesis Type</a>
                </li>
            </ul>
        </div>
    <div class="container-fluid">
        
        
        <div class="container">
            <h2 style="text-align:center;">Browse by Year</h2>
            <p>Please select a value to browse from the list below.</p>

            <?php 
                echo "<ul>";
                $res1=$con->query("select distinct year from publication;");
                while($row=mysqli_fetch_array($res1))
                {
                    $reg=$row['year'];
                    echo "<li>";
                    echo "<a href='browse_year.php?year=".$reg."'>".$reg."</a>";
                    echo "</li>";
                }
                echo "</ul>";
            ?>

        </div>

    </div>
<?php
 include("include/footerstrip.php");
 ?>
<script type="text/javascript" src="js/bootstrap.js"></script>

</body>
</html>
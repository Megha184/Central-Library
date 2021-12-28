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

.box{
    width:50%;
    margin:auto;
    /* display:flex;
    justify-content: center; */
}
</style>
</head>
<body>
    <div class="container">
            <h2 style="text-align:center;">Browse by Thesis Type</h2>
            <p>Please select a value to browse from the list below.</p>
        <div class="box">
             <ul class="list-group-item">
            <?php 
                echo "<ul>";
                $res1=$con->query("select distinct thesis_types from publication;");
                while($row=mysqli_fetch_array($res1))
                {
                    $reg=$row['thesis_types'];
                    echo "<li>";
                    echo "<a href='browse_thesis_type.php?thesis_types=".$reg."'>".$reg."</a>";
                    echo "</li>";
                }
                echo "</ul>";
            ?>
             </ul>
        </div>
    </div>
<?php
 include("include/footerstrip.php");
 ?>
<script type="text/javascript" src="js/bootstrap.js"></script>

</body>
</html>
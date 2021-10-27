<?php 
include('comman/connect.php');
include('include/main.php');
include('include/header.php');
if(isset($_SESSION['user'])){
    $user_ses=$_SESSION['user'];
}
else
{
    echo"<script>window.location.href='SignIn.php';</script>";	
}
?>

<style type="text/css">
#page_head
{
    min-height: 80px;
    background: #fff; /* For browsers that do not support gradients */
    background: -webkit-radial-gradient(circle, #ddd,#f5f5f5); /* Safari */
    background: -moz-radial-gradient(circle, #ddd,#f5f5f5); /* Safari */
    background: -o-radial-gradient(circle, #ddd,#f5f5f5); /* Safari */
    text-align: center;
    font-size: 1.3em;
    line-height: 80px;
    color: #444;
    font-family: 'Saira Semi Condensed', sans-serif;
    font-weight: bold;
}
.page_details
{
    background: #fff;
    margin-top: 20px;
    padding:20px;
    border-radius: 4px;
    border: 1px solid #ddd;
}
.backbox{margin-bottom: 30px;}
.pic
{
    width: 170px;
    height: 170px;
    border-radius: 100%;
}
.pic img
{
    width: 170px;
    height: 170px;
    border-radius: 100%;
}
.name
{
    font-size: 2em;
    margin-top: 50px;
    text-transform: capitalize;
}
.address
{
    font-size: 1.2em;
}
.span
{
    font-size: 1.4em;
    font-weight: bold;
    margin: 30px 0px 10px 0px;
    display: block;
}
.table2
{
    font-size: 1.2em;
    margin-top: 10px;
}

.status
{
    font-size: 1.4em;
    font-weight: bold;
    height: 60px;
    line-height: 60px;
    padding-left: 15px;
    border-radius: 5px;
    border:1px solid #ddd;
    margin-bottom: 10px;
    background: #fff;
    font-family: 'Saira Semi Condensed', sans-serif;
}

.notes
{
    font-size: 1.4em;
    font-weight: bold;
    height: 60px;
    line-height: 60px;
    padding-left: 15px;
    border-radius: 5px 5px 0px 0px;
    border:1px solid #ddd;
    background: #fff;
    font-family: 'Saira Semi Condensed', sans-serif;
}
.notess
{
    font-size: 1.2em;
    border:1px solid #ddd;
    border-radius: 0px 0px 5px 5px;
    border-top: none;
    background: #fff;
}
.notess a
{
    display: block;
    padding: 10px 15px;
    text-decoration: none;
    border-bottom:1px dotted #ddd;
}
.notess a:hover
{
    background: #f5f5f5;
}
.tr{font-weight: bold; background: #eee;}
</style>
<div id="page_head">
	<a href="index">Home</a> / Thesis List
</div>
<div class="container backbox">
	<div class="row">
		<table class="table table2" border="1">
			<tr class="tr" align='center'>
				<td>Publication Id</td>
				<td>Publication name</td>
				<td>Subject</td>
                <td>Superviser</td>
				<td>Type</td>
                <td>Year</td>
				<td>Date</td>
                <td>Date Of Modify</td>
                <td>Action</td>
			</tr>
			<?php 
            
        $res1=$con->query("select Regno from registration where Email='$user_ses'");
        while($row=mysqli_fetch_array($res1))
        {
                $reg=$row['Regno'];

            $res=$con->query("select publication_id,thesis_title,subject,thesis_types,date_upload,supervisors,year,date_modify from publication where reg_no='$reg'");
                $i=1;
                while($row=mysqli_fetch_array($res))
                {
                    $id=$row['publication_id'];
                    echo "<tr>";
                        echo "<td align='center'>".$row['publication_id']."</td>";
                        echo "<td align='center'>".$row['thesis_title']."</td>";
                        echo "<td align='center'>".$row['subject']."</td>";
                        echo "<td align='center'>".$row['supervisors']."</td>";
                        echo "<td align='center'>".$row['thesis_types']."</td>";
                        echo "<td align='center'>".$row['date_upload']."</td>";
                        echo "<td align='center'>".$row['year']."</td>";
                        echo "<td align='center'>".$row['date_modify']."</td>";
                        echo "<td align='center'><a href='delete.php?id=".$id."&&tname=news'>view</a></td>";
                    echo "</tr>";
                }
        }
             ?>
		</table>
	</div>
</div>

<?php
 include("include/footerstrip.php");
 ?>
<script type="text/javascript" src="js/bootstrap.js"></script>

</body>
</html>

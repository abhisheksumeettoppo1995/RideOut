<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Ride System</title>
    <meta name="description" content="Car Ride System Provide facility to passenger to book a particular ride" />
    
    <meta name="author" content="templatemo">
    <!-- Favicon-->
    <link rel="shortcut icon" href="../../favicon.png" />
    <!-- Font Awesome -->
    <link href="../../css/font-awesome.min.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <!-- Template  -->
    <link href="../../css/templatemo_style.css" rel="stylesheet">
</head>
<body>

<!--navigation menu start here-->
<div id="templatemo_mobile_menu">
            <ul class="nav nav-pills nav-stacked">
                 <li><a rel="nofollow" href="../user_profile.php" class="external-link"><i class="glyphicon glyphicon-export"></i>Profile</a></li>
                 <li><a rel="nofollow" href="../logout.php" class="external-link"><i class="glyphicon glyphicon-export"></i>logout</a></li>
            </ul>
</div>
<div class="container_wapper">
  <div id="templatemo_banner_menu">
    <div class="container-fluid">
      <div class="col-xs-4 templatemo_logo"><a href="#"><img src="../../images/logo.png" id="logo_img" alt="dragonfruit website template" title="Car Ride" /></a>
      </div>
      <div class="col-sm-8 hidden-xs">
        <ul class="nav nav-justified">
          <li><a rel="nofollow" href="../user_profile.php" class="external-link"><i class="glyphicon glyphicon-export"></i>Profile</a></li>
          <li><a rel="nofollow" href="../logout.php" class="external-link"><i class="glyphicon glyphicon-export"></i>Logout</li>
        </ul>
      </div>
      <div class="col-xs-8 visible-xs"><a href="#" id="mobile_menu"><span class="glyphicon glyphicon-th-list"></span></a></div>
    </div>
  </div>
</div>

<!--navigation menu end here-->
<style>
#set{
padding-top : 150px; 
padding-left: 150px;
}

.container{
 background-image: url("../../images/img12.jpg");
}
</style>
<div id="set">
<div class="container">
<h2 align="center" style="color:aqua">Post Your Journey</h2><br><br><br>
<form class="form-horizontal" method="POST" action="add_journey.php">
 <div class="form-group">
<label class="col-sm-2 control-label" for="carno" style="color:aqua">Car Number:</label>
<div class="col-sm-6">
<input type="text" class="form-control" id="carno" style="width:10" name="carno">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label" for="src" style="color:aqua">Source:</label>
<div class="col-sm-6">
<input type="text" class="form-control" id="src" name="src">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label" for="dest" style="color:aqua">Destination:</label>
<div class="col-sm-6">
<input type="text" class="form-control" id="dest" name="dest">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label" for="doj" style="color:aqua">Date Of Journey:</label>
<div class="col-sm-6">
<input class="form-control" id="doj" placeholder="YYYY/MM/DD" type="text" name="doj">
</div>
</div>
 <div class="form-group">
  <label  class="col-sm-2 control-label" for="sel1" style="color:aqua">Select Seats Available:</label>
  <div class="col-sm-6"> 
 <select class="form-control" id="sel1" name="seatsavail">
    <option>2</option>
    <option>3</option>
    <option>4</option>
    <option>5</option>
  </select>
</div>
</div>
 <div class="form-group"> 
<div class="text-center">
        <button class="btn btn-default " name="submit" value="submit" type="submit" >submit</button>
      </div>
 </div>
 </form>
</div>
</div>
<script src="../../js/jquery.min.js"></script>
<script src="../../js/jquery-ui.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/jquery.singlePageNav.min.js"></script>
<script src="../../js/unslider.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
<script src="../../js/templatemo_script.js"></script>

</body>
</html>

<?php

include 'database.php';
$db=new db();

if(isset($_POST['submit']))
{
    
	$carnum=$_POST['carno'];
	$source=$_POST['src'];
	$desti=$_POST['dest'];
	$dateofjour=$_POST['doj'];
	$seats=$_POST['seatsavail'];
	$sql="insert into journey (email,car_no,source,destination,doj,seats_avail) values ('mohan@gmail.com','$carnum','$source','$desti','$dateofjour','$seats')";
	$db->insert($sql);
}
?>
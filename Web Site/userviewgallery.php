<?php 

$servername = "localhost";
$username = "root";
$password = "";
$databasename = "diver";
 
$connection = mysqli_connect($servername, $username, $password, $databasename);

if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}
else {
	// echo "Connection Successfull";
}

	// <div class="header">
		 require_once('header.php');
	// </div>

echo "<br><h1>Our Gallery</h1><br>";

$query = "SELECT * FROM gal where Is_Delete = 0";

// $result = mysqli_query($connection, $query) or die(mysqli_error($connection));

$result = mysqli_query($connection, $query);



if (mysqli_num_rows($result) > 0) {
	while($row = mysqli_fetch_assoc($result)){
		
		 echo "<tr>
				<td><img src='gallery/".$row['Image']." ' class='userview'></td>
			  </tr>";
	
	}

}

else {
	echo "Empty table";
}

mysqli_close($connection);

?>

<html>
<head></head>
<style>

.userview {
	height:200px;
	width: auto;
	max-width: 300px;
	margin-right: 0px;
	margin-left: 60px;
	margin-top: 15px;
	margin-bottom: 25px;
}

body {
	background: silver;
}

h1 {
	text-align: center;
	color: white;
	font-size: 50px;
	margin-top: 40px;
}

</style>
<body class="bg-dark" style="background-image: url('galleryback.jpg'); background-size:cover;background-attachment: fixed; ">

	<div class="footer">
		<?php require_once('footer.php');?>
	</div>

</body>
</html>




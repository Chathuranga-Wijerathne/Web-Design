<?php session_start(); ?>
<?php require_once('inc/connection.php');?>
<?php require_once('inc/function.php');?>
<?php
//checking if a user is logged in 
if(!isset($_SESSION['user_id'])){
	header('Location: index.php');
}
$user_list ='';
$search ='';


if(isset($_GET['search'])){

   //searching bar	
	$search= mysqli_real_escape_string($connection, $_GET['search']);
	$query = "SELECT * FROM user  WHERE ( first_name LIKE '%{$search}%' OR last_name LIKE '%{$search}%' OR email LIKE '%{$search}%' ) AND is_delete=0 AND type=2 ORDER BY first_name";
}else{
	//getting the list of users
	$query = "SELECT * FROM user  WHERE is_delete=0 AND type=2 ORDER BY first_name";
}



$users= mysqli_query($connection, $query);

verify_query($users);

	while($user = mysqli_fetch_assoc($users)){
		$user_list .= "<tr>";
		$user_list .= "<td>{$user['first_name']}</td>";
		$user_list .= "<td>{$user['last_name']}</td>";
		$user_list .= "<td>{$user['email']}</td>";
		$user_list .= "<td>{$user['last_login']}</td>";
		$user_list .= "<td><a href=\"ship-view.php?user_id={$user['id']}\" class='another'>Registered ship</a></td>";
		$user_list .= "<td><a href=\"viewservices.php?user_id={$user['id']}\" class='another'>Services</a></td>";
		$user_list .= "<td><a href=\"order.php?user_id={$user['id']}\" class='another'>Ordered Products</a></td>";
		$user_list .= "<td><a href=\"payment.php?user_id={$user['id']}\" class='another'>Payment </a></td>";
		$user_list .= "<td><a href=\"modify-user.php?user_id={$user['id']}\" class='edit'>Edit</a></td>";
		$user_list .= "<td><a href=\"delete.php?user_id={$user['id']}\" onclick =\"return confirm('are you sure?');\" class='block'>Block</a></td>";
		$user_list .= "<td><a href=\"delete_db.php?user_id={$user['id']}\" onclick =\"return confirm('are you sure? all data remove');\" class='delete'>Delete</a></td>";
		$user_list .= "</tr>";
	}

?>
<!DOCTYPE html>
<html>
<head>
<title>User Details</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
  <header>
    <div class="appname"><a href ="admin.php">Admin Panel</a></div>
    <div class="loggedin"> Welcome <?php echo $_SESSION['first_name']; ?> !
	<a href="logout.php"> Log Out </a></div> 
  </header>
  <main><br>
 <h1>User Details</h1>
 <br>
<div class="search">
<br>
<form action="users_details.php" method="get">
<p>
    <input type ="text" name="search"  id="" placeholder="Type First Name, Last Name or Email Address and press Enter"value="<?php echo $search; ?>" required autofocus> 
    <h3> <span><a href="add-user.php" class="add" >+ Add New </a> <a href="users_details.php" class="add">Refresh</a></span></h3>
	
</p>
</form>
</div>

 
 <table class="masterlist" border="2">
  <tr>
      <th>First Name</th>
	  <th>Last Name</th>
	  <th>Email</th>
	  <th>Last login</th>
	  <th>Ship Details</th>
	  <th>Services</th>
	  <th>Orders</th>
	  <th>Payment Details</th>
	  <th>Edit</th>
	  <th>Block</th>
	  <th>Delete</th>
  </tr>
  <?php echo $user_list; ?>
 </main>
</body>

</html>
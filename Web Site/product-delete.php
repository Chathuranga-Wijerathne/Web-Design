<?php session_start(); ?>
<?php require_once('inc/connection.php');?>
<?php require_once('inc/function.php');?>
<?php
    //checking if a user is logged in
	if(!isset($_SESSION['user_id'])){
	header('Location: index.php');
}
	
	
	
	if(isset($_GET['product_id'])){
		//getting the user information
		$product_id = mysqli_real_escape_string($connection,$_GET['product_id'] );
		
		
	
			
		$query = "UPDATE product SET is_deleted =1 WHERE product_id ={$product_id} LIMIT 1";
		
		$result = mysqli_query($connection, $query);
		
		if($result){
			//user deleted
			header('Location:product.php?msg=user-deleted');
			
		}else{
			header('Location:product.php?err=delete_failed');
		}
			
			
		
	}else{
		header('Location:project.php');
	}

?>	
	
	
	
	
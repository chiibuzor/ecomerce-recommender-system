<?php
if(! session_id() ) { session_start(); }
$product_id = $_POST['product_id'];

if(isset($_SESSION['cart'])) {
	$current_items = $_SESSION['cart'];
	array_push($current_items, $product_id);
	$_SESSION['cart'] = $current_items;
} else {	
	$_SESSION['cart'] = array($product_id);	
}
echo json_encode(array('Product Added to cart'));
?>
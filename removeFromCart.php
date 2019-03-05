<?php
if(! session_id() ) { session_start(); }
$product_id = $_POST['product_id'];

if(isset($SESSION['cart'])) {
	$current_items = $_SESSION['cart'];
	\array_splice($current_items, $product_id, 1);
	$_SESSION['cart'] = $current_items;
	echo json_encode(array('message' => , "Product Added"));
} else {
	echo json_encode(array('message' => , "Error occcured"));
}
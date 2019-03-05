<?php
	session_start();
	$total_price = 0;
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Cart</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="OneTech shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/cart_styles.css">
<link rel="stylesheet" type="text/css" href="styles/cart_responsive.css">

</head>

<body>

<div class="super_container">
	
	<!-- Header -->
	
	<header class="header">

		<!-- Top Bar -->

			<div class="top_bar">
			<div class="container">
				<div class="row">
					<div class="col d-flex flex-row">
						<div class="top_bar_contact_item"><div class="top_bar_icon"><img src="images/phone.png" alt=""></div>09024334089</div>
						<div class="top_bar_contact_item"><div class="top_bar_icon"><img src="images/mail.png" alt=""></div><a href="mailto:fastsales@gmail.com">Techworld@gmail.com</a></div>
						<div class="top_bar_content ml-auto">
							<div class="top_bar_menu">
								<ul class="standard_dropdown top_bar_dropdown">
									
							</div>
							<div class="top_bar_user">
								<div class="user_icon"><img src="images/user.svg" alt=""></div>
								<div><a href="registration.html">Register</a></div>
								<div><a href="login.html">Sign in</a></div>
							</div>
						</div>
					</div>
				</div>
			</div>		
		</div>

		<!-- Header Main -->

		<div class="header_main">
			<div class="container">
				<div class="row">

					<!-- Logo -->
					<div class="col-lg-2 col-sm-3 col-3 order-1">
						<div class="logo_container">
							<div class="logo"><a href="#">Techworld</a></div>
						</div>
					</div>

					<!-- Search -->
					
					<!-- Wishlist -->
				
							<!-- Cart -->
							<div class="cart">
								<div class="cart_container d-flex flex-row align-items-center justify-content-end">
									<div class="cart_icon">
										<img src="images/cart.png" alt="">
										<div class="cart_count"><span></span></div>
									</div>
									<div class="cart_content">
										<div class="cart_text"><a href="#">Cart</a></div>
										<div class="cart_price"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Main Navigation -->

		
		<!-- Menu -->

	

	<!-- Cart -->

	<div class="cart_section">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="cart_container">
						<div class="cart_title">Shopping Cart</div>
						<div class="cart_items">
							<ul class="cart_list">
								<?php
									if(isset($_SESSION['cart'])) {
										$cart_items = $_SESSION['cart'];
										foreach($cart_items as $cart_item_id) {
											$connection = mysqli_connect('localhost', 'root', '1234567890' );
											if (!$connection){
												die("Database Connection Failed" . mysqli_error($connection));
											}
											$select_db = mysqli_select_db($connection, 'datab');
											if (!$select_db){
												die("Database Selection Failed" . mysqli_error($connection));
											}
											$sql = "SELECT * FROM laptops WHERE id = ".$cart_item_id."";
											$q = $connection->query($sql);
											$cart_item = $q->fetch_assoc();
											$total_price = $total_price + $cart_item['price'];
											?>
											<li class="cart_item clearfix">
												<div class="cart_item_image"><img src="./images/<?php echo $cart_item['image1'] ?>" alt=""></div>
												<div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
													<div class="cart_item_name cart_info_col">
														<div class="cart_item_title">Name</div>
														<div class="cart_item_text"><?php echo $cart_item['name']; ?></div>
													</div>
													<div class="cart_item_quantity cart_info_col">
														<div class="cart_item_title">Quantity</div>
														<div class="cart_item_text">1</div>
													</div>
													<div class="cart_item_price cart_info_col">
														<div class="cart_item_title">Price</div>
														<div class="cart_item_text">$ <?php echo $cart_item['price']; ?></div>
													</div>
													<div class="cart_item_total cart_info_col">
														<div class="cart_item_title">Total</div>
														<div class="cart_item_text">$ <?php echo $cart_item['price']; ?></div>
													</div>
												</div>
											</li>
											<?php
										}
									} else {
										?>
										<h4>No items in cart</h4>
										<?php
									}								
								?>
							</ul>
						</div>
						
						<!-- Order Total -->
						<div class="order_total">
							<div class="order_total_content text-md-right">
								<div class="order_total_title">Order Total:</div>
								<div class="order_total_amount">$ <?php echo $total_price; ?></div>
							</div>
						</div>

						<div class="cart_buttons">
							<button type="button" class="button cart_button_clear">Remove all</button>
							<button type="button" class="button cart_button_checkout">Pay</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Newsletter -->


	<!-- Footer -->

	<footer class="footer">
		<div class="container">
			<div class="row">

				<div class="col-lg-3 footer_col">
					<div class="footer_column footer_contact">
						<div class="logo_container">
							<div class="logo"><a href="#">Techworld</a></div>
						</div>
						<div class="footer_title">For more information send an email to Techworld@gmail.com</div>
						<div class="footer_phone">09024334089</div>
						<div class="footer_contact_text">
							<p>27 yemi ogunleye street,</p>
							<p>isheri, Lagos Nigeria.</p>
						</div>
						<div class="footer_social">
							<ul>
								<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
								<li><a href="#"><i class="fab fa-twitter"></i></a></li>
								<li><a href="#"><i class="fab fa-youtube"></i></a></li>
								<li><a href="#"><i class="fab fa-google"></i></a></li>
								<li><a href="#"><i class="fab fa-vimeo-v"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-2 offset-lg-2">
					<div class="footer_column">
						<div class="footer_title">Find it Fast</div>
						<ul class="footer_list">
							<li><a href="#">Computers & Laptops</a></li>
					
						
							<li><a href="#">Smartphones & Tablets</a></li>
							<li><a href="#">Accessories and Gadgets</a></li>
						</ul>
						<div class="footer_subtitle"></div>
						<ul class="footer_list">
							<li><a href="#"></a></li>
						</ul>
					</div>
				</div>

				

				<div class="col-lg-2">
					<div class="footer_column">
						<div class="footer_title">Customer Care</div>
						<ul class="footer_list">
							<li><a href="#">My Account</a></li>
							
						
							<li><a href="#">Customer Services</a></li>
							
							<li><a href="#">FAQs</a></li>
							
						</ul>
					</div>
				</div>

			</div>
		</div>
	</footer>

	<!-- Copyright -->

	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col">
					
					<div class="copyright_container d-flex flex-sm-row flex-column align-items-center justify-content-start">
						<div class="copyright_content"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> Final Year Project<i class="" aria-hidden=""></i> by <a href="" target="_blank"> Duru Chibuzor Chigozirim</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
				
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/cart_custom.js"></script>
</body> 

</html>
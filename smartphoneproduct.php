<?php
if(! session_id() ) { session_start(); }
if(! isset($_SESSION['userid'])) {
	echo "<script>alert('This is not available')</script>";
	echo "<script>location.href='loggedindex.php';</script>";
	exit();
}
function secondsToTime($inputSeconds) {

    $secondsInAMinute = 60;
    $secondsInAnHour  = 60 * $secondsInAMinute;
    $secondsInADay    = 24 * $secondsInAnHour;

    // extract days
    $days = floor($inputSeconds / $secondsInADay);

    // extract hours
    $hourSeconds = $inputSeconds % $secondsInADay;
    $hours = floor($hourSeconds / $secondsInAnHour);

    // extract minutes
    $minuteSeconds = $hourSeconds % $secondsInAnHour;
    $minutes = floor($minuteSeconds / $secondsInAMinute);

    // extract the remaining seconds
    $remainingSeconds = $minuteSeconds % $secondsInAMinute;
    $seconds = ceil($remainingSeconds);

    // return the final array
    $obj = array(
        'd' => (int) $days,
        'h' => (int) $hours,
        'm' => (int) $minutes,
        's' => (int) $seconds,
    );
    if((int) $inputSeconds <= 60) {
    	return ((int) $seconds) . " seconds";
    } else if((int) $inputSeconds <= 3600) {
    	return ((int) $minutes) . " minutes";
    } else if((int) $inputSeconds <= 86400) {
    	return ((int) $hours) . " hours";
    } else {
    	return ((int) $days) . " days";
    }
}
$connection = mysqli_connect('localhost', 'root', '1234567890' );
$product = null;
if (!$connection) {
die("Database Connection Failed" . mysqli_error($connection));
}
$select_db = mysqli_select_db($connection, 'datab');
if (!$select_db) {
die("Database Selection Failed" . mysqli_error($connection));
}
if(isset($_POST['review'])) {
	$review = $_POST['review'];
	$lid = $_GET['id'];
	$rating = $_POST['hiddenrating'];
	$userid = $_SESSION['userid'];
	$sql = "INSERT INTO reviews (review,laptop_id,rating,user,`timestamp`) VALUES ('$review','$lid','$rating','$userid',NOW())";
	mysqli_query($connection, $sql);
}

$sql = "SELECT * from laptops WHERE type='smartphone' AND id=".$_GET['id'];
$q = mysqli_query($connection, $sql);
while($result = mysqli_fetch_row($q)){
	$product = $result;
}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Single Product</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="OneTech shop project">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
		<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
		<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
		<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
		<link rel="stylesheet" type="text/css" href="styles/product_styles.css">
		<link rel="stylesheet" type="text/css" href="styles/product_responsive.css">
	</head>
	<body>
		<div class="super_container">
			
			<!-- Header -->
			
			<header class="header">
				<!-- Top Bar -->
				<?php include "./templates/topbar.php" ?>
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
							<div class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right" style="display: none;">
								<div class="header_search">
									<div class="header_search_content">
										<div class="header_search_form_container">
											<form action="#" class="header_search_form clearfix">
												<input type="search" required="required" class="header_search_input" placeholder="Search for products...">
												<div class="custom_dropdown">
													<div class="custom_dropdown_list">
														<span class="custom_dropdown_placeholder clc">All Categories</span>
														<i class="fas fa-chevron-down"></i>
														<ul class="custom_list clc">
															<li><a class="clc" href="#">All Categories</a></li>
															<li><a class="clc" href="#">Computers</a></li>
															<li><a class="clc" href="#">Laptops</a></li>
															<li><a class="clc" href="#">Cameras</a></li>
															<li><a class="clc" href="#">Hardware</a></li>
															<li><a class="clc" href="#">Smartphones</a></li>
														</ul>
													</div>
												</div>
												<button type="submit" class="header_search_button trans_300" value="Submit"><img src="images/search.png" alt=""></button>
											</form>
										</div>
									</div>
								</div>
							</div>
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
			</header>
			
			
			<!-- Main Navigation -->
			<nav class="main_nav">
				<div class="container">
					<div class="row">
						<div class="col">
							
							<div class="main_nav_content d-flex flex-row">
								<!-- Categories Menu -->
								<div class="cat_menu_container">
									<div class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
										<div class="cat_burger"><span></span><span></span><span></span></div>
										<div class="cat_menu_text">categories</div>
									</div>
									<ul class="cat_menu">
										<li><a href="#">Computers & Laptops <i class="fas fa-chevron-right ml-auto"></i></a></li>
										<li><a href="#">Cameras & Photos<i class="fas fa-chevron-right"></i></a></li>
										<li class="hassubs">
											<a href="#">Hardware<i class="fas fa-chevron-right"></i></a>
											<ul>
												<li class="hassubs">
													<a href="#">Menu Item<i class="fas fa-chevron-right"></i></a>
													<ul>
														<li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
														<li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
														<li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
														<li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
													</ul>
												</li>
												<li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
												<li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
												<li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
											</ul>
										</li>
										<li><a href="#">Smartphones & Tablets<i class="fas fa-chevron-right"></i></a></li>
										<li><a href="#">TV & Audio<i class="fas fa-chevron-right"></i></a></li>
										<li><a href="#">Gadgets<i class="fas fa-chevron-right"></i></a></li>
										<li><a href="#">Car Electronics<i class="fas fa-chevron-right"></i></a></li>
										<li><a href="#">Video Games & Consoles<i class="fas fa-chevron-right"></i></a></li>
										<li><a href="#">Accessories<i class="fas fa-chevron-right"></i></a></li>
									</ul>
								</div>
								<!-- Main Nav Menu -->
								<div class="main_nav_menu ml-auto">
									<ul class="standard_dropdown main_nav_dropdown">
										<li><a href="index.html">Home<i class="fas fa-chevron-down"></i></a></li>
										
										
										
										<li><a href="blog.html">Blog<i class="fas fa-chevron-down"></i></a></li>
										<li><a href="contact.html">Contact<i class="fas fa-chevron-down"></i></a></li>
									</ul>
								</div>
								<!-- Menu Trigger -->
								<div class="menu_trigger_container ml-auto">
									<div class="menu_trigger d-flex flex-row align-items-center justify-content-end">
										<div class="menu_burger">
											<div class="menu_trigger_text">menu</div>
											<div class="cat_burger menu_burger_inner"><span></span><span></span><span></span></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</nav>
			
			<!-- Menu -->
			<div class="page_menu">
				<div class="container">
					<div class="row">
						<div class="col">
							
							<div class="page_menu_content">
								
								<div class="page_menu_search">
									<form action="#">
										<input type="search" required="required" class="page_menu_search_input" placeholder="Search for products...">
									</form>
								</div>
								<ul class="page_menu_nav">
									
									<li class="page_menu_item">
										<a href="#">Home<i class="fa fa-angle-down"></i></a>
									</li>
									
									<li class="page_menu_item"><a href="blog.html">blog<i class="fa fa-angle-down"></i></a></li>
									<li class="page_menu_item"><a href="contact.html">contact<i class="fa fa-angle-down"></i></a></li>
								</ul>
								
								<div class="menu_contact">
									<div class="menu_contact_item"><div class="menu_contact_icon"><img src="images/phone_white.png" alt=""></div>09024334089</div>
									<div class="menu_contact_item"><div class="menu_contact_icon"><img src="images/mail_white.png" alt=""></div><a href="mailto:Techworld@gmail.com">Techworld@gmail.com</a></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Single Product -->
		<div class="single_product">
			<div class="container">
				<div class="row">
					<!-- Images -->
					<div class="col-lg-2 order-lg-1 order-2">
						<ul class="image_list">
							<li data-image="images/<?php echo $product['3']?>"><img src="images/<?php echo $product['3']?>" alt=""></li>
							<li data-image="images/<?php echo $product['4']?>"><img src="images/<?php echo $product['4']?>" alt=""></li>
							<li data-image="images/<?php echo $product['5']?>"><img src="images/<?php echo $product['5']?>" alt=""></li>
						</ul>
					</div>
					<!-- Selected Image -->
					<div class="col-lg-5 order-lg-2 order-1">
						<div class="image_selected"><img src="images/<?php echo $product['3']?>" alt=""></div>
					</div>
					<!-- Description -->
					<div class="col-lg-5 order-3">
						<div class="product_description">
							<div class="product_category">Laptops</div>
							<div class="product_name"><?php echo $product['1']?></div>
							<div class="rating_r rating_r_4 product_rating"><i></i><i></i><i></i><i></i><i></i></div>
							<div class="product_text"><p><?php echo $product['6']?></p></div>
							<div class="order_info d-flex flex-row">
								<form action="#">
									<div class="clearfix" style="z-index: 1000;">
										<!-- Product Quantity -->
										<div class="product_quantity clearfix">
											<span>Quantity: </span>
											<input id="quantity_input" type="text" pattern="[0-9]*" value="1">
											<div class="quantity_buttons">
												<div id="quantity_inc_button" class="quantity_inc quantity_control"><i class="fas fa-chevron-up"></i></div>
												<div id="quantity_dec_button" class="quantity_dec quantity_control"><i class="fas fa-chevron-down"></i></div>
											</div>
										</div>
									</div>
									<div class="product_price" data-price="<?php echo $product['2']?>">Price:  $<?php echo $product['2']?></div>
									<div class="button_container">
										<button type="button" id="addcart" class="button cart_button">Add to Cart</button>
										<div class="product_fav"><i class="fas fa-heart"></i></div>
										<p class="container">
											
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--	scrolling reviews-->
			<div class="container-fluid">
			  <h2 class="text-center mb-3">Product reviews</h1>
			  <div id="myCarousel" class="carousel slide" data-ride="carousel">
			    <div class="carousel-inner row w-100 mx-auto">
<?php
$lip = $_GET['id']; 
$sql = "SELECT w.fullname,r.review,r.rating,TIME_TO_SEC(TIMEDIFF(NOW(), r.timestamp))as diff from reviews r JOIN www w ON r.user=w.id WHERE laptop_id=$lip";
$q = mysqli_query($connection, $sql);
while($result = mysqli_fetch_array($q)) { ?>
			      <div class="carousel-item col-md-4 active">
			        <div class="card">
			          <div class="card-body">
			            <h4 class="card-title"><?php echo $result['fullname'] ?></h4>
			            <div class="card-subtitle">
			            	<?php for($i = 1; $i <= 5; $i++): ?>
			            		<?php if($i <= $result['rating']): ?>
			            			<i class="fas fa-star" style="color: tomato"></i>
		            			<?php else: ?>
		            				<i class="fas fa-star" style="color: thistle"></i>
		            			<?php endif; ?>
			            	<?php endfor; ?>
			            </div>
			            <p class="card-text"><?php echo $result['review'] ?></p>
			            <p class="card-text"><small class="text-muted">Last updated <?php echo secondsToTime($result['diff']) ?> ago</small></p>
			          </div>
			        </div>
			      </div>
<?php } mysqli_close($connection);  ?>
			    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
			      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			      <span class="sr-only">Previous</span>
			    </a>
			    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
			      <span class="carousel-control-next-icon" aria-hidden="true"></span>
			      <span class="sr-only">Next</span>
			    </a>
			  </div>
			</div>
<!--	end of scolling reviews-->

			<!-- Footer -->
			<footer class="footer">
				<div class="container add-review-section">
					<center><h2>Review Product</h2></center>
					<form class="review-form" method="POST">
						<p>Select a star rating</p>
						<input type="text" name="hiddenrating" id="hiddenrating" hidden />
						<div class="form-group" id="rating"></div>
						<!-- <div class="rating">
											<input type="radio" id="star1" name="rating" value="1" /><label for="star1"></label>
											<input type="radio" id="star2" name="rating" value="2" /><label for="star2"></label>
											<input type="radio" id="star3" name="rating" value="3" /><label for="star3"></label>
											<input type="radio" id="star4" name="rating" value="4" /><label for="star4"></label>
											<input type="radio" id="star5" name="rating" value="5"/><label for="star5"></label>
						</div> -->
						<textarea rows="4" placeholder="Write a review ..." name="review"></textarea>
						<input type="submit" />
					</form>
				</div>
			</footer>
			<!-- Copyright -->
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
							<li><a href="compcat.php<?php  ?>">Computers & Laptops</a></li>
					
						
							<li><a href="smartphones.php">Smartphones & Tablets</a></li>
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
		<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
		<script src="plugins/easing/easing.js"></script>
		<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
		<script src="plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
		<script src="plugins/parallax-js-master/parallax.min.js"></script>
		<script src="js/product_custom.js"></script>
		<script src="js/jquery.emojiRatings.min.js"></script>
		<script>
			$(function() {

				$("#myCarousel").on("slide.bs.carousel", function(e) {
				    var $e = $(e.relatedTarget);
				    var idx = $e.index();
				    var itemsPerSlide = 3;
				    var totalItems = $(".carousel-item").length;


				    if (idx >= totalItems - (itemsPerSlide - 1)) {
				      var it = itemsPerSlide - (totalItems - idx);
				      for (var i = 0; i < it; i++) {
				        // append slides to end
				        if (e.direction == "left") {
				          $(".carousel-item")
				            .eq(i)
				            .appendTo(".carousel-inner");
				        } else {
				          $(".carousel-item")
				            .eq(0)
				            .appendTo($(this).find(".carousel-inner"));
				        }
				      }
				    }
				});

				$("#rating").emojiRating({
					fontSize: 32,
					onUpdate: function(count) {
						$("#hiddenrating").val(count);
					}
				});

				$("#addcart").on('click', function() {
					var item = {
						key: $(".image_list").find("li").data("image"),
						name: $(".product_name").html(),
						price: $(".product_price").data('price'),
						quantity: Number($("#quantity_input").val().trim())
					};

					if(localStorage.getItem("laptop_cart") === null ) {
						localStorage.setItem("laptop_cart", JSON.stringify([ item ]));
					} else {
						var cartStr = localStorage.getItem("laptop_cart");
						var cartArr = JSON.parse(cartStr);
						var hasItem = false;

						for(var i = 0; i < cartArr.length; i++) {
							var cartitem = cartArr[i];
							if(cartitem.key === item.key) {
								hasItem = true;
								cartitem.quantity =  Number(cartitem.quantity) + Number(item.quantity);
							}
						}

						if(hasItem === false ) {
							cartArr.push(item);
						}

						localStorage.setItem("laptop_cart", JSON.stringify(cartArr));
					}
				});
			});
		</script>
	</body>
</html>
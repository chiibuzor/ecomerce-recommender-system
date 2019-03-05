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
							<?php if(! session_id() OR ! isset($_SESSION['email']) ): ?>
							<div class="top_bar_user">
								<div class="user_icon"><img src="images/user.svg" alt=""></div>
								<div><a href="registration.html">Register</a></div>
								<div><a href="login.html">Sign in</a></div>
							</div>
							<?php else: ?>
							<div class="top_bar_user">
								<div class="user_icon"><img src="images/user.svg" alt=""></div>
								<div><a href="#">Welcome,</a></div>
								<div><a href="#"><?php echo  $_SESSION['email']  ?></a></div>
								<div><a href="signout.php">Sign Out</a></div>
							</div>
						<?php endif; ?>
						</div>
					</div>
				</div>
			</div>		
		</div>
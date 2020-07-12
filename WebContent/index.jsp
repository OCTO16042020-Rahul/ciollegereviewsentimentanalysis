<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<!DOCTYPE html>
<html>
<head>
<title>College Reviews</title>

<!-- For-Mobile-Apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Exchange Education a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //For-Mobile-Apps -->

<!-- Custom Theme files -->
    <!-- Bootstrap Styling --> <link rel='stylesheet' href="css/bootstrap.css" type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> <script src="js/jquery.min.js"></script>
    <!-- Bootstrap-Working-File --> <script src="js/bootstrap.min.js"></script>
    <!-- Index-Page-Styling --> <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />   
	<!-- Owl-Carousel-Styling --> <link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
<!-- //Custom Theme files -->

<!-- Smooth-Scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function($) {
        $(".scroll").click(function(event){     
            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
        });
    });
</script>
<!-- //Smooth-Scrolling -->
<script type="text/javascript" src="pop/my_js.js"></script>
<link href="pop/elements.css" rel="stylesheet">
</head>

<!-- Body-Starts-Here -->
<body>

	<!-- Header-Starts-Here -->
	<div class="header">

		<!-- Navbar-Starts-Here -->
	    <nav class="navbar navbar-inverse">
	        <div class="container">
	            <div class="navbar-header">
	                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	                    <span class="sr-only">Toggle navigation</span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                </button>
	                <!-- Logo --><a class="navbar-brand" href="#">CRSA</a><!-- //Logo -->
	            </div>
	            
	            <!-- Navbar-Collapse -->
	            <div id="navbar" class="navbar-collapse collapse">

	                <ul class="nav navbar-nav navbar-right">
	                <li style="padding-left:250px">&nbsp;</li>
		                <li><a href="#about" class="scroll">About</a></li>

		                <!-- Dropdown -->
		                <li role="presentation" class="dropdown carat1">
			                <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown<span class="caret"></span> </a>
				                <ul class="dropdown-menu dropdown1">
					    			<li><a href="#admissions" class="scroll">Admissions</a></li>
					                <li><a href="#programs" class="scroll">Programs</a></li>
					                <li><a href="#services" class="scroll">Services</a></li>
					                <li><a href="#faculty" class="scroll">Faculty</a></li>
					                <li><a href="#edifice" class="scroll">Edifices</a></li>
					                <li><a href="#project" class="scroll">Projects</a></li>
				                </ul>
		                </li>
		                <!-- //Dropdown -->

		                <li><a href="#contact" class="scroll">Contact</a></li>

		                <!-- Login-Button -->
		                <li>
			                <div class="login-pop">
				                <div id="loginpop">
					                <a href="#" id="loginButton"><span>Login</span></a>
					                <div id="loginBox">
						                <form id="loginForm" action="Login" method="post">
							                <fieldset id="body">
								                <fieldset>
									                <label for="email">Username</label>
									                <input type="text" name="username" id="email">
								                </fieldset>
								                <fieldset>
									                <label for="password">Password</label>
									                <input type="password" name="password" id="password">
								                </fieldset>
									                <input type="submit" id="login" value="LOGIN">
								            </fieldset>
							                <span><a href="#" onclick="div_show()">Forgot your password?</a></span>
						                </form>
					                </div>
				                </div>
			                </div>
			                <script src="js/menu_jquery.js"></script>
		                </li>
		                <!-- //Login-Button -->

		                <!-- Signup-Button -->
		                <li>
			                <div class="login-pop">
				                <div id="loginpop">
					                <a href="#" id="signupButton"><span>Signup</span></a>
					                <div id="signupBox">
						                <form id="signupForm" action="Registration" method="post">
							                <fieldset id="body">
								                <fieldset>
									                <label for="email">FullName</label>
									                <input type="text" name="fullname" id="email">
								                </fieldset>
								                <fieldset>
								                	<label for="email">Email</label>
								                	<input type="text" name="email" id="email">
								                </fieldset>
								                <fieldset>
								                	<label for="email">Username</label>
								                	<input type="text" name="username" id="email">
								                </fieldset>
								                <fieldset>
								                	<label for="password">Password</label>
								                	<input type="password" name="password" id="password">
								                </fieldset>
							                		<input type="submit" id="login" value="SIGNUP">
							                </fieldset>
						                </form>
					                </div>
				                </div>
			                </div>
					        <script src="js/signup_jquery.js"></script>
		                </li>
		                <!-- //Signup-Button -->

	                </ul>
	            </div>
	            <!-- //Navbar-Collapse -->

	        </div>
	    </nav>
	    <!-- //Navbar-Ends-Here -->

		<!-- Carousel-Starts-Here -->
		<div id="myCarousel" class="carousel slide" data-ride="carousel">

			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
			</ol>

			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="first-slide" src="images/0.jpg" alt="First Slide">
				</div>

				<div class="item">
					<img class="second-slide" src="images/1.jpg" alt="Second Slide">
				</div>

				<div class="item">
					<img class="second-slide" src="images/2.jpg" alt="Second Slide">
				</div>

				<div class="item">
					<img class="third-slide" src="images/3.jpg" alt="Third Slide">
				</div>

				<div class="item">
					<img class="sixth-slide" src="images/6.jpg" alt="Sixth Slide">
				</div>

				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>

				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<!-- //Carousel-Ends-Here -->

	</div>
	<!-- Header-Ends-Here -->

    <!-- Content-Starts-Here -->
    <div class="content">
    	
    	<!-- Heading --><h1 class="abbr">SCHOOL FOR STUDENT EXCHANGE, ENGINEERING & TECHNOLOGY</h1><!-- //Heading -->

    	<div class="container">
    		
    		<!-- About-Starts-Here -->
    		<div class="about slideanim" id="about">
	            <h2>ABOUT</h2>
	            <p>Online education plays an integral role in expanding educational opportunities for not only traditional students, but those starting or continuing their education and in need of greater flexibility: parents, full-time workers,military service members, and those wanting to attend a program in a location that’s physically distant. Over the past decade online education has moved from being a component part of distance education endeavors, to one of the ways to obtain a degree period. As it stands, the average student in American higher education will take at least one class online in their course of study.</p>

                <div class="about-info slideanim">
                    <div class="col-md-6 col-sm-6" id="about-pic">
                        <img src="images/9.jpg" alt="About">                   
                    </div>
                    <div class="col-md-6 col-sm-6" id="about-p">
                        <span>"At Best College Reviews (BCR) our goal is to provide quality commentary and guidance for the process of choosing and succeeding in online education. Unlike other prominent higher ed sites that focus on ranking schools based on what makes them quality non-online institutions, we strive to provide information and ranking tailored to the needs of online learners. We know that many online learners are seeking flexibility, affordability, and academic rigor in their degree programs, and have tailored our approach to online education coverage accordingly. For more detailed information, check out the methodology section of any of our rankings, as well as our feature on comparing college ranking sites, and our overview of our ranking process."</span>
                    </div>
                    <div class="clearfix"></div>
                </div>
    		</div>
    		<!-- //About-Ends-Here -->

			<!-- Admissions-Starts-Here -->
        	<div class="admissions slideanim" id="admissions">
                <h3>ADMISSIONS-2017 PROSPECTUS</h3>
                <p><B>ONLINE ADMISSION:</B> Mode of Payment - Internet Banking facility through Netbanking / Debit card / Credit card on payment of Rs.970/-. Candidates applying through Netbanking/ Debit Card / Credit need not send the hardcopy of the application form
					Demand draft mode of 50 USD for NRI candidates. DD to be drawn in favour of VIT University. Candidates are required to send the hardcopy of the application form along with the Demand Draft.</p>
            </div>
			<!-- //Admissions-Ends-Here -->

			<!-- Programs-Starts-Here -->
            <div class="programs slideanim" id="programs">
	            <h3>PROGRAMS</h3>
	            <p>Lorem Ipsum Dolor Sit Amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>

	            <div class="program-grid">
		            <div class="col-md-3 col-sm-6 p1">
		                <div class="program1">
		                    <h4>Lorem</h4>
		                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
		                </div>
		            </div>
		            <div class="col-md-3 col-sm-6 p1">
		                <div class="program2">
		                    <h4>Ipsum</h4>
		                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
		                </div>
		            </div>
		            <div class="col-md-3 col-sm-6 p1">
		                <div class="program3">
		                    <h4>Dolor</h4>
		                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
		                </div>
		            </div>
		            <div class="col-md-3 col-sm-6 p1">
		                <div class="program4">
		                    <h4>Sitamet</h4>
		                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
		                </div>
		            </div>
		            <div class="clearfix"></div>
	            </div>
        	</div>
			<!-- //Programs-Ends-Here -->

			<!-- Services-Starts-Here -->
            <div class="services slideanim" id="services">
                <h3>SERVICES</h3>
                <p>We have taken up some Social Services done by our students in the slums and backward regions so that they can not only excel in education, but also as a good human being in the society.</p>
                <div class="col-md-6 col-sm-6 s1">
                    <div class="services-info1">
                        <h4>Free Medical Services</h4>
                        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum cillum dolore eu fugiat nulla commodo.</p>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 s1">
                    <div class="services-info2">
                        <h4>Free Education</h4>
                        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum cillum dolore eu fugiat nulla commodo.</p>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 s1">
                    <div class="services-info3">
                        <h4>Free Medicine Supply</h4>
                        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum cillum dolore eu fugiat nulla commodo.</p>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 s1">
                    <div class="services-info4">
                        <h4>Social Interaction</h4>
                        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum cillum dolore eu fugiat nulla commodo.</p>
                    </div>
                </div>
		        <div class="clearfix"></div>
            </div>
			<!-- //Services-Ends-Here -->

			<!-- Faculty-Starts-Here -->
            <div class="faculty slideanim" id="faculty">
	            <h3>FACULTY</h3>
	            <div class="col-md-3 col-sm-3 team-top">
						<div class="view view-seventh">
							<a href="#"><img class="img-responsive" src="images/f1.jpg" alt="name"></a>
								<div class="mask">
									<ul class="social">
										<li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
										<li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
										<li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
									</ul>
								</div>
			                    <h6>Ross Gellar</h6>
			                    <p>But I must explain to you how all this mistaken idea of denouncing</p>
                   		</div>
					</div>
					<div class="col-md-3 col-sm-3 team-top team-in">
						<div class="view view-seventh">
							<a href="#"><img class="img-responsive" src="images/f2.jpg" alt="name"></a>
								<div class="mask">
			 						<ul class="social">
							            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
							            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
							            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
							        </ul>
			                    </div>
			                    <h6>Mike Hannigan</h6>
			                    <p>But I must explain to you how all this mistaken idea of denouncing</p>
                   		 </div>
					</div>
					<div class="col-md-3 col-sm-3 team-top">
						<div class="view view-seventh">
							<a href="#"><img class="img-responsive" src="images/f3.jpg" alt="name"></a>
								<div class="mask">
			 						<ul class="social">
							            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
							            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
							            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
							        </ul>
			                    </div>
			                    <h6>Chandler Bing</h6>
			                    <p>But I must explain to you how all this mistaken idea of denouncing</p>
                   		</div>
					</div>
					<div class="col-md-3 col-sm-3 team-top top-team">
						<div class="view view-seventh">
							<a href="#"><img class="img-responsive" src="images/f4.jpg" alt="name"></a>
								<div class="mask">
			 						<ul class="social">
							            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
							            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
							            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
							        </ul>
			                    </div>
			                    <h6>Rachel Green</h6>
			                    <p>But I must explain to you how all this mistaken idea of denouncing</p>
			            </div>
					</div>
					<div class="col-md-3 col-sm-3 team-top top-team">
						<div class="view view-seventh">
							<a href="#"><img class="img-responsive" src="images/f5.jpg" alt="name"></a>
								<div class="mask">
			 						<ul class="social">
							            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
							            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
							            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
							        </ul>
			                    </div>
			                    <h6>Janice Hank</h6>
			                    <p>But I must explain to you how all this mistaken idea of denouncing</p>
			            </div>
					</div>
					<div class="col-md-3 col-sm-3 team-top top-team">
						<div class="view view-seventh">
							<a href="#"><img class="img-responsive" src="images/f6.jpg" alt="name"></a>
								<div class="mask">
			 						<ul class="social">
							            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
							            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
							            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
							        </ul>
			                    </div>
			                    <h6>Boris Johnson</h6>
			                    <p>But I must explain to you how all this mistaken idea of denouncing</p>
			            </div>
					</div>
					<div class="col-md-3 col-sm-3 team-top top-team">
						<div class="view view-seventh">
							<a href="#"><img class="img-responsive" src="images/f7.jpg" alt="name"></a>
								<div class="mask">
			 						<ul class="social">
							            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
							            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
							            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
							        </ul>
			                    </div>
			                    <h6>Leslie Chow</h6>
			                    <p>But I must explain to you how all this mistaken idea of denouncing</p>
			            </div>
					</div>
					<div class="col-md-3 col-sm-3 team-top top-team">
						<div class="view view-seventh">
							<a href="#"><img class="img-responsive" src="images/f8.jpg" alt="name"></a>
								<div class="mask">
			 						<ul class="social">
							            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
							            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
							            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
							        </ul>
			                    </div>
			                    <h6>James May</h6>
			                    <p>But I must explain to you how all this mistaken idea of denouncing</p>
			            </div>
					</div>
					<div class="clearfix"> </div>
	        </div>
			<!-- //Faculty-Ends-Here -->

			<!-- Edifice-Starts-Here -->
	        <div class="edifice slideanim" id="edifice">
	        	<h3>INFRASTRUCTURE & FACILITIES</h3>
	            <div class="gallery-cursual">

	                <!-- requried-jsfiles-for owl -->
	                    <script src="js/owl.carousel.js"></script>
	                    <script>
		                    $(document).ready(function() {
			                    $("#owl-demo").owlCarousel ({
				                    items : 3,
				                    lazyLoad : true,
				                    autoPlay : true,
				                    pagination : false,
			                    });
		                    });
	                    </script>
	                <!-- //requried-jsfiles-for owl -->

	                <!-- start content_slider -->
	                <div id="owl-demo" class="owl-carousel text-center">
	                    <div class="item">
	                        <img class="lazyOwl" src="images/11.jpg" alt="name">
	                    </div>
	                    <div class="item">
	                        <img class="lazyOwl" src="images/12.jpg" alt="name">
	                    </div>
	                    <div class="item">
	                        <img class="lazyOwl" src="images/13.jpg" alt="name">
	                    </div>
	                    <div class="item">
	                        <img class="lazyOwl" src="images/15.jpg" alt="name">
	                    </div>
	                    <div class="item">
	                        <img class="lazyOwl" src="images/1.jpg" alt="name">
	                    </div>
	                    <div class="item">
	                        <img class="lazyOwl" src="images/2.jpg" alt="name">
	                    </div>
	                    <div class="item">
	                        <img class="lazyOwl" src="images/3.jpg" alt="name">
	                    </div>
	                    <div class="item">
	                        <img class="lazyOwl" src="images/5.jpg" alt="name">
	                    </div>
	                    <div class="item">
	                        <img class="lazyOwl" src="images/6.jpg" alt="name">
	                    </div>
	                </div>
	                <!--//sreen-gallery-cursual -->
	            </div>
	        </div>
			<!-- //Edifice-Ends-Here -->

			<!-- Projects-Starts-Here -->
	        <div class="project slideanim" id="project">
	        	<h3>PROJECTS, RESEARCH AND DEVELOPMENT</h3>

	        	<div class="project-grid">
		        	<div class="col-md-4 col-sm-4 p2">
		        		<img src="images/e1.jpg" alt="project">
		        	</div>
		        	<div class="col-md-4 col-sm-4 p2">
		        		<h4>Lorem Ipsum</h4>
		        		<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui anim id est laborum cillum dolore eu fugiat nulla commodo. Sint occaecat cupidatat non proident, sunt in culpa qui officia laborum.</p>
		        	</div>
		        	<div class="col-md-4 col-sm-4 p2 p3">
		        		<img src="images/e2.jpg" alt="project">
		        	</div>
		        	<div class="col-md-4 col-sm-4 p2 p4">
		        		<img src="images/e3.jpg" alt="project">
		        	</div>
		        	<div class="col-md-4 col-sm-4 p2 p5">
		        		<h4>Dolores Sit</h4>
		        		<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui anim id est laborum cillum dolore eu fugiat nulla commodo. Sint occaecat cupidatat non proident, sunt in culpa qui officia laborum.</p>
		        	</div>
		        	<div class="col-md-4 col-sm-4 p2 p6">
		        		<img src="images/e4.jpg" alt="project">
		        	</div>
		        	<div class="clearfix"></div>
	        	</div>
        	</div>
			<!-- //Projects-Ends-Here -->

			<!-- Contact-Starts-Here -->
        	<div class="contact slideanim" id="contact">
        		<h3>CONTACT</h3>
        		<form action="contact" method="post" class="contact_form">
        			<div class="message">
						<div class="col-md-6 col-sm-6 grid_6 c1">
							<input type="text" name = "name" class="text" value="Name" placeholder="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';} required">
							<input type="text" name = "email" class="text" value="Email" placeholder="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email'; required}">
							<input type="text" name = "phone" class="text" value="Phone" placeholder="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone'; required}">
						</div>
						
						<div class="col-md-6 col-sm-6 grid_6 c1">
							<textarea placeholder="Message" name = "message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message'; required}">Message</textarea>
						</div>
			            <div class="clearfix"> </div>
		        	</div>
					<input type="submit" class="more_btn" value="Send Message">
			 	</form>
        	</div>
			<!-- //Contact-Ends-Here -->
    	</div>

    	<!-- Map-iFrame -->
    	<div class="map slideanim">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d22702.22744502486!2d11.113366067229226!3d44.662878362361056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x477fc3eca9065c15%3A0x12ec8a03aadae866!2s40019+Sant&#39;Agata+Bolognese+BO%2C+Italy!5e0!3m2!1sen!2sin!4v1451281303075" allowfullscreen></iframe>
    	</div>
    	<!-- //Map-iFrame -->

    </div>
    <!-- Content-Ends-Here -->

    <!-- Footer-Starts-Here -->
    <div class="footer slideanim">

    	<div class="container">

	    	<div class="footer-info slideanim">
				<div class="col-md-6 col-sm-6 access f1">
					<h3 class="access-h3">Access</h3>
	    			<p class="access-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation, sed do eiusmod ullamco laboris nisi ut enim ad minim aliquip ex ea commodo consequat.</p>
				</div>
				<div class="col-md-4 col-sm-4 f2">
					<h3 class="address">Address</h3>
	    			<address>
	                    <ul>
	                    	<li>Parma Via Modena</li>
	                    	<li>40019 Sant'Agata Bolognese</li>
	                    	<li>BO, Italy</li>
	                    	<li>Telephone : +1 (734) 123-4567</li>
	                    	<li>Email : <a class="mail" href="mailto:mail@example.com">info(at)sseet.com</a></li>
	                    </ul>
	               </address>
				</div>
				<div class="col-md-2 col-sm-2 f3" id="qlinks">
	    		    <h3>Links</h3>
	    			<ul class="footer_list">
	    				<li><a href="#about" class="scroll">About</a></li>
	    				<li><a href="#programs" class="scroll">Programs</a></li>
	    				<li><a href="#services" class="scroll">Services</a></li>
	    				<li><a href="#edifice" class="scroll">Edifice</a></li>
	    				<li><a href="#project" class="scroll">Projects</a></li>
	    			</ul>
	    		</div>
	    		<div class="clearfix"></div>
			</div>

	        <ul class="social slideanim" id="follow">
	            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
	            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
	            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
	            <li><a href="#" class="instagram" title="Go to Our Instagram Account"></a></li>
	            <li><a href="#" class="youtube" title="Go to Our Youtube Channel"></a></li>
	        </ul>

        </div>

        <!-- Slide-To-Top JavaScript (No-Need-To-Change) -->
        <script type="text/javascript">
            $(document).ready(function() {
                /*
                var defaults = {
                    containerID: 'toTop', // fading element id
                    containerHoverID: 'toTopHover', // fading element hover id
                    scrollSpeed: 1200,
                    easingType: 'linear' 
                };
                */            
                $().UItoTop({ easingType: 'easeOutQuart' });            
            });
        </script>
        <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
        <!-- //Slide-To-Top JavaScript -->

    </div>
    <!-- //Footer-Ends-Here -->

    <script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Prevent default anchor click behavior
    event.preventDefault();

    // Store hash
    var hash = this.hash;

    // Using jQuery's animate() method to add smooth page scroll
    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
    $('html, body').animate({
      scrollTop: $(hash).offset().top
    }, 900, function(){
   
      // Add hash (#) to URL when done scrolling (default click behavior)
      window.location.hash = hash;
    });
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>
				<div id="abc">
				<!-- Popup Div Starts Here -->
				<div id="popupContact">
				<!-- Contact Us Form -->
					<form action="Forgot" id="form" method="post" name="form" class="popupform">
						<img id="close" src="images/3.png" onclick ="div_hide()">
						<h2 class="popuph2" >Forgot password</h2>
						<hr class="popuphr">
						<input id="name" name="username" placeholder="Enter Your UserName" type="text" class="popupinput" required>
						<input type="submit" value ="send" id="submit">
					</form>
				</div>
				</div>
</body>
<!-- Body-Ends-Here -->

</html>
<%@page import="java.sql.ResultSet"%>
<%@page import="Database.DatabaseConnection"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"></script>
<head>
<title>College Reviews</title>

<!-- For-Mobile-Apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Exchange Education a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- //For-Mobile-Apps -->

<!-- Custom Theme files -->
<!-- Bootstrap Styling -->
<link rel='stylesheet' href="../css/bootstrap.css" type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../js/jquery.min.js"></script>
<!-- Bootstrap-Working-File -->
<script src="../js/bootstrap.min.js"></script>
<!-- Index-Page-Styling -->
<link rel="stylesheet" href="../css/style.css" type="text/css"
	media="all" />
<!-- Owl-Carousel-Styling -->
<link rel="stylesheet" href="../css/owl.carousel.css" type="text/css"
	media="all">
<!-- //Custom Theme files -->

<!-- Smooth-Scrolling -->
<script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript" src="../js/move-top.js"></script>
<script type="text/javascript" src="../js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1200);
		});
	});
</script>
<!-- //Smooth-Scrolling -->

<script type="text/javascript">
	function home() {
		location = "college.jsp";
	}

	function logout() {
		location = "../logout";
	}
	
	function isNumber(evt) {
	    evt = (evt) ? evt : window.event;
	    var charCode = (evt.which) ? evt.which : evt.keyCode;
	    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
	        return false;
	    }
	    return true;
	}
</script>
<script type="text/javascript" src="js/onclick.js"></script>
</head>

<!-- Body-Starts-Here -->
<body>
	<!-- Header-Starts-Here -->
	<div class="header">

		<!-- Navbar-Starts-Here -->
		<nav class="navbar navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>

					<!-- Logo -->
					<a class="navbar-brand" href="#">CRSA</a>
					<!-- //Logo -->

				</div>

				<!-- Navbar-Collapse -->
				<div id="navbar" class="navbar-collapse collapse">

					<ul class="nav navbar-nav navbar-right">

						<li><span class="scroll">&nbsp;</span></li>

						<li><a href="#" onclick="home()" class="scroll">Home</a></li>

						<li><a href="#" onclick="logout()" class="scroll">Logout</a></li>

					</ul>
				</div>
				<!-- //Navbar-Collapse -->
			</div>
		</nav>
		<!-- //Navbar-Ends-Here -->
	</div>
	<!-- Header-Ends-Here -->

	<!-- Content-Starts-Here -->
	<div class="content">
		<div class="container">
			<br>
			<div class="bs-docs-example">
				<table id="mytable" class="table table-bordered">
					<thead>
						<tr>
							<th>SR.No.</th>
							<th>College Name</th>
							<th>Branch</th>
							<th>JEE Main</th>
							<th>CET Cutoff</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<%
								DatabaseConnection db = new DatabaseConnection();
								db.dbconnection();
								String sql = "Select * from college";
								ResultSet rs = db.getResultSet(sql);

								while (rs.next()) {
									String id = rs.getString("id");
									String name = rs.getString("name");
									String jee = rs.getString("jeemainit");
									String cutoff = rs.getString("cetcutoffit");
							%>
							<form action="../cutoff" method="post">
							<td><%=id%></td>
							<td><%=name%></td>
							<td> 
							<select id="branch<%=id %>" name="branch<%=id %>" onchange="getmarks(<%=id %>)" class="frm-field required sect">
							<option value="it">IT</option>
							<option value="cs">CS</option>
							<option value="extc">EXTC</option>
							<option value="civil">CIVIL</option>
							<option value="mech">MECHANICAL</option>
							</select>
							</td>
							<td id="jeemain<%=id %>"><input type="text" name="jeemainmarks" id="jeemainmarks<%=id %>" style = "width:100px" value="<%=jee%>" onkeypress="return isNumber(event)" ></td>
							<td id="cetcutoff<%=id %>"><input type="text" name="cutoffmarks" id="cutoffmarks<%=id %>" style = "width:100px" value="<%=cutoff%>" onkeypress="return isNumber(event)" ></td>
							<td>
								<div class="login-right">
									<div class="sign-in">
										<input type="hidden" name="cid" value="<%=id%>"> 
										<input type="button" onclick="savemarks(<%=id %>)" value="Save" >
									</div>
								</div>
							</td>
							</form>
						</tr>
						<%
							}
						%>


					</tbody>
				</table>
			</div>
			<br>
			<br>
		</div>
	</div>

	<!-- Footer-Starts-Here -->
	<div class="footer slideanim">

		<div class="container">

			<div class="footer-info slideanim">
				<div class="col-md-4 col-sm-4 f2"></div>
				<div class="col-md-4 col-sm-4 f2" id="address">
					<h3 class="address">Address</h3>
					<address>
						<ul>
							<li>Parma Via Modena</li>
							<li>40019 Sant'Agata Bolognese</li>
							<li>BO, Italy</li>
							<li>Telephone : +1 (734) 123-4567</li>
						</ul>
					</address>
				</div>
				<div class="col-md-4 col-sm-4 f2">
					<h3>Links</h3>
					<ul class="footer_list">
						<li><a href="#Infrastructure" class="scroll">Infrastructure</a></li>
						<li><a href="#Faculty" class="scroll">Faculty</a></li>
						<li><a href="#Attendance" class="scroll">Attendance</a></li>
						<li><a href="#Crowd" class="scroll">Crowd</a></li>
						<li><a href="#Placements" class="scroll">Placements</a></li>
						<li><a href="#Canteen" class="scroll">Canteen</a></li>
						<li><a href="#Fees" class="scroll">Fees</a></li>
					</ul>
				</div>
				<div class="col-md-2 col-sm-2 f3" id="qlinks"></div>
				<div class="clearfix"></div>
			</div>

			<ul class="social slideanim" id="follow">
				<li><a href="#" class="facebook"
					title="Go to Our Facebook Page"></a></li>
				<li><a href="#" class="twitter"
					title="Go to Our Twitter Account"></a></li>
				<li><a href="#" class="googleplus"
					title="Go to Our Google Plus Account"></a></li>
				<li><a href="#" class="instagram"
					title="Go to Our Instagram Account"></a></li>
				<li><a href="#" class="youtube"
					title="Go to Our Youtube Channel"></a></li>
			</ul>

			<div class="copyright">
				<p>&copy; 2017 College Reviews. All Rights Reserved</p>
			</div>

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
				$().UItoTop({
					easingType : 'easeOutQuart'
				});
			});
		</script>
		<a href="#" id="toTop" style="display: block;"> <span
			id="toTopHover" style="opacity: 1;"> </span></a>
		<!-- //Slide-To-Top JavaScript -->

	</div>
	<!-- //Footer-Ends-Here -->

	<script>
		$(document).ready(
				function() {
					// Add smooth scrolling to all links in navbar + footer link
					$(".navbar a, footer a[href='#myPage']").on('click',
							function(event) {

								// Prevent default anchor click behavior
								event.preventDefault();

								// Store hash
								var hash = this.hash;

								// Using jQuery's animate() method to add smooth page scroll
								// The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
								$('html, body').animate({
									scrollTop : $(hash).offset().top
								}, 900, function() {

									// Add hash (#) to URL when done scrolling (default click behavior)
									window.location.hash = hash;
								});
							});

					$(window).scroll(function() {
						$(".slideanim").each(function() {
							var pos = $(this).offset().top;

							var winTop = $(window).scrollTop();
							if (pos < winTop + 600) {
								$(this).addClass("slide");
							}
						});
					});
				})
	</script>
</body>
<!-- Body-Ends-Here -->
</html>
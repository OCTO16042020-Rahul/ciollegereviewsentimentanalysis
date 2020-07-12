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
<link href="criteria/css/style.css" rel="stylesheet" type="text/css" media="all" />	
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
<script type="text/javascript" src="js/feedback.js"></script>
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
function review(){
	location="reviews.jsp";
}

function home(){
	location="Criteria.jsp";
}

function logout(){
	location="../logout";
}
</script>

</head>

<!-- Body-Starts-Here -->
<body>
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
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
						
						<li><a href="#" onclick= "home()" class="scroll">Home</a></li>

						<li><a href="#" onclick= "review()" class="scroll">View Reviews</a></li>

						<!-- Dropdown -->
						<li role="presentation" class="dropdown carat1"><a
							class="dropdown-toggle" data-toggle="dropdown" href="#"
							role="button" aria-haspopup="true" aria-expanded="false">Details<span
								class="caret"></span>
						</a>
							<ul class="dropdown-menu dropdown1">
								<li><a href="#location" class="scroll">Location</a></li>
								<li><a href="#Infrastructure" class="scroll">Infrastructure</a></li>
								<li><a href="#Faculty" class="scroll">Faculty</a></li>
								<li><a href="#Attendance" class="scroll">Attendance</a></li>
								<li><a href="#Crowd" class="scroll">Crowd</a></li>
								<li><a href="#Placements" class="scroll">Placements</a></li>
								<li><a href="#Canteen" class="scroll">Canteen</a></li>
								<li><a href="#Fees" class="scroll">Fees</a></li>
							</ul></li>
						<!-- //Dropdown -->

						<li><a href="#chart" class="scroll">View Graph</a></li>
						
						<li><a href="#feedback" class="scroll">Give Review</a></li>

						<li><a href="#" onclick= "logout()" class="scroll">Logout</a></li>
						
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

		<%
		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		String id = request.getParameter("id");
		String cname = request.getParameter("cname");
		String image = request.getParameter("image");
		
		session.setAttribute("id", id);
		session.setAttribute("cname", cname);
	
// 		preprocessing p = new preprocessing();
// 		p.GiveResult(id);
		
		String collegequery = "select * from collegedetails where id ='"+id+"'";
		ResultSet rr = db.getResultSet(collegequery);
		if(rr.next()){
		%>
		
		<!-- Heading -->
		<h1 class="abbr"><%=cname%></h1>
		<!-- //Heading -->

		<div class="container">

			<!-- location-Starts-Here -->
			<div class="about slideanim" id="location">
				<h2>LOCATION</h2>
				<p><%=rr.getString("location")%></p>
			</div>
			<!-- //location-Ends-Here -->

			<!-- Infrastructure-Starts-Here -->
			<div class="about slideanim" id="Infrastructure">
				<h2>INFRASTRUCTURE</h2>
				<div class="about-info slideanim">
					<div class="col-md-6 col-sm-6" id="about-pic">
						<img src="<%=image%>" alt="About">
					</div>
					<div class="col-md-6 col-sm-6" id="about-p">
						<span><%=rr.getString("infrastructure")%></span>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //Infrastructure-Ends-Here -->

			<!-- Faculty-Starts-Here -->
			<div class="admissions slideanim" id="Faculty">
				<h3>FACULTY</h3>
				<p><%=rr.getString("faculty")%></p>
			</div>
			<!-- //Faculty-Ends-Here -->

			<!-- chart-Starts-Here -->
			<div class="admissions slideanim" id="chart">
				<h3>Chart</h3>
				<%				
			String prate = "";
			String nrate = "";
			int  nutral = 0;
			String sql = "SELECT SUM(prate) FROM commentanalysis where id ='"+id+"'";
			ResultSet rs = db.getResultSet(sql);
			if(rs.next())
			{
				prate = rs.getString(1);
			}
	
			sql = "SELECT SUM(nrate) FROM commentanalysis where id ='"+id+"'";
			 rs = db.getResultSet(sql);
			if(rs.next())
			{
				nrate = rs.getString(1);
			}
	
	
			sql = "SELECT * from commentanalysis where prate='0' and nrate='0' and id ='"+id+"'";
	 		rs = db.getResultSet(sql);
			while(rs.next())
			{
				nutral++;
			}
		%>
	<script type='text/javascript'>
	//<![CDATA[

	$(function() {

		$(document)
				.ready(
						function() {

							// Build the chart
							$('#container')
									.highcharts(
											{
												chart : {
													plotBackgroundColor : null,
													plotBorderWidth : null,
													plotShadow : false,
													type : 'pie'
												},
												title : {
													text : 'College Rating through Review Analysis'
												},
												tooltip : {
													pointFormat : '{series.name}: <b>{point.percentage:.1f}%</b>'
												},
												plotOptions : {
													pie : {
														allowPointSelect : true,
														cursor : 'pointer',
														dataLabels : {
															enabled : false
														},
														showInLegend : true
													}
												},
												series : [ {
													name : 'Rate',
													colorByPoint : true,
													data : [ {
														name : 'Positive',
														y : <%=prate%>
													}, {
														name : 'Negative',
														y : <%=nrate%>,
														sliced : true,
														selected : true
													}, {
														name : 'Neutral',
														y : <%=nutral%>
					} ]
																} ]
															});
										});
					});
					//]]>
				</script>
			<div id="container"
				style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
			</div>
			<!-- //chart-Ends-Here -->

			<!-- Attendance-Starts-Here -->
			<div class="alumnus slideanim" id="Attendance">
				<h3>Attendencs</h3>
				<p><%=rr.getString("Attendance")%></p>
			</div>
			<!-- //Attendance-Ends-Here -->

			<!-- Crowd-Starts-Here -->
			<div class="alumnus slideanim" id="Crowd">
				<h3>Crowd</h3>
				<p><%=rr.getString("Crowd")%></p>
			</div>
			<!-- //Crowd-Ends-Here -->

			<!-- Placements-Starts-Here -->
			<div class="services slideanim" id="Placements">
				<h3>Placements</h3>
				<p><%=rr.getString("Placements")%></p>
				<div class="clearfix"></div>
			</div>
			<!-- //Placements-Ends-Here -->

		<!-- Canteen-Starts-Here edifice -->
		<div class="faculty slideanim" id="Canteen">
			<h3>Canteen</h3>
			<p><%=rr.getString("Canteen")%></p>
		</div>
		<!-- //Canteen-Ends-Here -->
		
			<!-- Fees-Starts-Here -->
			<div class="faculty slideanim" id="Fees">
				<h3>Fees</h3>
				<p><%=rr.getString("fees")%></p>
			</div>
			<div class="clearfix"></div>
		
		<!-- //Fees-Ends-Here -->
		</div>
		<div class="faculty slideanim" id="feedback">
		<section class="book-a-test">
			<!--- Book-a-test ---->
			<div class="test-booking">
				<div class="container">
				<form>
					<h3 class="last-updated">Enter college Feedback Here</h3>
					<div class="text-booking-form">
						
							<label>User Email</label>
								<input type="text" style="font-size: 17px; width:600px" name="email"	value="<%=session.getAttribute("email")%>" readonly>
								
							<label>College Feedback</label>
								<textarea style="font-size: 17px; width:600px; margin-right:190px" name="feedbackdata" id="feedbackdata" placeholder="Describe your experience" required></textarea>
							
								<div class="book-submit">
							<input type="button" value="Send Feedback" onclick="getfeedback()">
						</div>
						
					</div>				
				</form>
				</div>
			</div>
		</section>
		</div>
		</div>
			<%
		}
	%>
	
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
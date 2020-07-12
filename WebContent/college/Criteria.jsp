<!DOCTYPE html>
<html>
<head>
<title></title>
<link href="criteria/css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<link href="criteria/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<link href="criteria/css/mycss.css" rel="stylesheet" type="text/css" media="all" />	
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../js/jquery.min.js"></script>
<!-- Bootstrap-Working-File -->
<script src="../js/bootstrap.min.js"></script>
<!-- Index-Page-Styling -->
<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
<!-- Owl-Carousel-Styling -->
<link rel="stylesheet" href="../css/owl.carousel.css" type="text/css"
	media="all">
<!-- //Custom Theme files -->

<script type="text/javascript">
	function home() {
		location = "#";
	}
	
	function Criteria() {
		location = "Criteria.jsp";
	}
	
	function review() {
		location = "home.jsp";
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
<script type="text/javascript">
function show_hide(str){
	if(str=="jee"){
		document.getElementById("hsc").style.display="block";
		document.getElementById("hsclable").style.display="block";
		document.getElementById("jee").style.display="block";
		document.getElementById("jeelable").style.display="block";
		
		document.getElementById("cet").style.display="none";
		document.getElementById("cetlabel").style.display="none";
	}else if(str=="cet")
	
	{
		document.getElementById("cet").style.display="block";
		document.getElementById("cetlabel").style.display="block";
		document.getElementById("hsc").style.display="none";
		document.getElementById("hsclable").style.display="none";
		document.getElementById("jee").style.display="none";
		document.getElementById("jeelable").style.display="none";
	}else{
		document.getElementById("cet").style.display="none";
		document.getElementById("cetlabel").style.display="none";
		document.getElementById("hsc").style.display="none";
		document.getElementById("hsclable").style.display="none";
		document.getElementById("jee").style.display="none";
		document.getElementById("jeelable").style.display="none";
	}
	
}

</script>
<!-- Smooth-Scrolling -->
<script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript" src="../js/move-top.js"></script>
<script type="text/javascript" src="../js/easing.js"></script>
<script type="text/javascript" src="js/onclick.js"></script>
</head>
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
						<li><a href="#" style="color:white" onclick="home()" class="scroll">Home</a></li>
						<li><a href="#" style="color:white" onclick="Criteria()" class="scroll">Select Criteria</a></li>
						<li><a href="#" style="color:white" onclick="review()" class="scroll">Reviews Based</a></li>
						<li><a href="#" style="color:white" onclick="logout()" class="scroll">Logout</a></li>

					</ul>
				</div>
				<!-- //Navbar-Collapse -->
			</div>
		</nav>
		<!-- //Navbar-Ends-Here -->
	</div>
	<!-- Header-Ends-Here -->

		<!-- Book-a-test-section -->
		<section class="book-a-test">
			<!--- Book-a-test ---->
			<div class="test-booking">
				<div class="container">
				<form>
					<h3 class="last-updated">Enter Student Criteria Details Here</h3>
					<div class="text-booking-form">
						<div class="col-md-6 text-booking-form-left">
							<label>Select Criteria <span>*</span></label>
								<select name="criteria" id="criteria" onchange="show_hide(this.value)" required>
									<option value="">Select Criteria</option>
									<option value="jee">JEE Main</option>
									<option value="cet">CET Marks</option>
								</select>
								<div class="clearfix"></div>
							<label id="hsclable" style="display: none">HSC Score <span>*</span></label>
								<input type="text" id="hsc" name="hsc"
								onkeypress="return isNumber(event)" autocomplete="off" style="display: none" required>
								<div class="clearfix"></div>
							
							<label id="cetlabel" style="display: none">CET Score <span>*</span></label>
								<input type="text" id="cet" name="cet"
								onkeypress="return isNumber(event)" autocomplete="off" style="display: none" required>
								<div class="clearfix"></div>
						</div>
						<div class="col-md-6 text-booking-form-right">
							<label>Select Branch <span>*</span></label>
								<select name="branch" id="branch" required>
									<option value="">Select Branch</option>
									<option value="it">Information Technology</option>
									<option value="cs">Computer Science</option>
									<option value="civil">CIVIL</option>
									<option value="mech">MECHANICAL</option>
									<option value="extc">Electronics & Telecommunication</option>
								</select>
								<label id="jeelable" style="display: none">JEE Score <span>*</span></label>
								<input type="text" id="jee" name="jee"
								onkeypress="return isNumber(event)" autocomplete="off" style="display: none" required>
								<div class="clearfix"></div>
						</div>
						
						
						<div class="col-md-6 text-booking-form-right">
							<label>Infrastructure <span>*</span></label>
								<select name="infra" id="infra" required>
									<option value="">Select Option</option>
									<option value="vhigh">Excellent</option>
									<option value="high">Good</option>
									<option value="medium">Satisfactory</option>
									<option value="low">Affordable</option>
								</select>
						</div>
						
						<div class="col-md-6 text-booking-form-right">
							<label>Placements <span>*</span></label>
								<select name="placement" id="placement" required>
									<option value="">Select Option</option>
									<option value="vhigh">Excellent</option>
									<option value="high">Good</option>
									<option value="medium">Satisfactory</option>
									<option value="low">Affordable</option>
								</select>
						</div>
						
						<div class="col-md-6 text-booking-form-right">
							<label>Library <span>*</span></label>
								<select name="library" id="library" required>
									<option value="">Select Option</option>
									<option value="vhigh">Excellent</option>
									<option value="high">Good</option>
									<option value="medium">Satisfactory</option>
									<option value="low">Affordable</option>
								</select>
						</div>
						<div class="col-md-6 text-booking-form-right">
							<label>Crowd <span>*</span></label>
								<select name="crowd" id="crowd" required>
									<option value="">Select Option</option>
									<option value="vhigh">Excellent</option>
									<option value="high">Good</option>
									<option value="medium">Satisfactory</option>
									<option value="low">Affordable</option>
								</select>
						</div>

						<div class="clearfix"></div>	
					</div>
					<br>
					<div id="loadsubject">

					</div>
					<div class="c-lang">
						<div class="book-submit">
							<input type="button" value="View Colleges" onclick="getcolleges()">
						</div>
					</div>					
				</form>
				</div>
			</div>
		</section>
<link rel="stylesheet" href="css/app.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/angucomplete-alt.min.css">
<link rel="stylesheet" href="css/jquery-ui.min.css">
<link rel="stylesheet" href="css/collections.min.css">
	<div id="getdata">
	</div>
<!-- //CV-section -->		
</body>
</html>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" href="college/css/style1.css" type="text/css" media="all" />
<!-- jQuery -->
<script src="college/js/jquery.min.js"></script>
</head>
<body>

				<a class="popup-with-zoom-anim" href="#small-dialog">BUY</a>

	<!--pop-up-grid-->
	<script src="college/js/jquery.magnific-popup.js" type="text/javascript"></script>

	<script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
					});
				</script>
				
	<div id="popup">
		<div id="small-dialog" class="mfp-hide">
			<div class="pop_up">
				<div class="payment-online-form-left">
					<form>
						<h4>
							Enter Your User name
						</h4>
						<ul>
							<li><input class="text-box-dark" type="text"
								value="User Name" onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'User Name';}"></li>
						</ul>
						<ul class="payment-sendbtns">
							<li><a href="#" class="order">Send</a></li>
						</ul>
						<div class="clear"></div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--pop-up-grid-->
</body>
</html>
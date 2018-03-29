<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<meta charset="utf-8">
		<meta name="viewport" content="width=device-width">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="">
		<meta name="author" content="">

		<title>Make your dream come true</title>
<link rel="stylesheet" href="css/font.css">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/bootstrap-select.min.css">
		<link rel="stylesheet" href="css/bootstrap-slider.min.css">
		<link rel="stylesheet" href="css/jquery.scrolling-tabs.min.css">
		<link rel="stylesheet" href="css/bootstrap-checkbox.css">
		<link rel="stylesheet" href="css/flexslider.css">
		<link rel="stylesheet" href="css/featherlight.min.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link rel="stylesheet" href="css/bootstrap.offcanvas.min.css">
		<link rel="stylesheet" href="css/core.css">
	  

		<!-- Custom styles for this template -->
		<link rel="stylesheet" href="css/style.css" >
		<link rel="stylesheet" href="css/responsive.css" >

		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="http://cdnjs.cloudflare.com/ajax/libs/selectivizr/1.0.2/selectivizr-min.js"></script>
			<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		<script src="js/jquery-3.2.0.min.js"></script>
		<script src="js/bootstrap-slider.min.js"></script>
		<script src="js/bootstrap-select.min.js"></script>
		<script src="js/jquery.scrolling-tabs.min.js"></script>
		<script src="js/jquery.countdown.min.js"></script>
		<script src="js/jquery.flexslider-min.js"></script>
		<script src="js/jquery.imagemapster.min.js"></script>
		<script src="js/tooltip.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/featherlight.min.js"></script>
		<script src="js/featherlight.gallery.min.js"></script>
		<script src="js/bootstrap.offcanvas.min.js"></script>
		<script src="js/main.js"></script>
		
<style>
.hero-1{
	position:relative;
	background:url(hero-1-img.jpg) no-repeat center center;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	height:500px;
}

.top-header .top-right ul li:first-child a{
	color:#b3b3b3;
	font-weight:500;
}
</style>
</head>
<body>
<header id="masthead" class="site-header fix-header header-1">
			<div class="top-header top-header-bg">
				<div class="container">
					<div class="row">
						<div class="top-left">
							<ul>
								<li>
									<a href="#">
										<i class="fa fa-phone"></i>
										+15185308322
									</a>
								</li>
								<li>
									<a href="mailto:pkpatel@albany.edu"> 
										<i class="fa fa-envelope-o"></i>
										pkpatel@albany.edu
									</a>
								</li>
							</ul>
						</div>
						<div class="top-right">
							<ul>
								<li>
									<a href="signin.jsp">Sign In</a>
								</li>
								<li>
									<a href="signup.jsp">Sign Up</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="main-header">
				<div class="container">
					<div class="row">
						<div class="site-branding col-md-3">
							<h1 class="site-title"><a href="index.jsp" title="UAlbany-Hangouts" rel="home"><img src="images/loggg.png" alt="logo" width="400" height="60"></a></h1>
						</div>

						<div class="col-md-9">
							<nav id="site-navigation" class="navbar">
								<div class="navbar-header">
									<div class="mobile-cart" ><a href="#">0</a></div>
									<button type="button" class="navbar-toggle offcanvas-toggle pull-right" data-toggle="offcanvas" data-target="#js-bootstrap-offcanvas">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
								</div>
								<div class="navbar-offcanvas navbar-offcanvas-touch navbar-offcanvas-right" id="js-bootstrap-offcanvas">
									<button type="button" class="offcanvas-toggle closecanvas" data-toggle="offcanvas" data-target="#js-bootstrap-offcanvas">
									   <i class="fa fa-times fa-2x" aria-hidden="true"></i>
									</button>
									<ul class="nav navbar-nav navbar-right">
										<li class="active"><a href="full-event-schedule.html">Schedule</a></li>
										<li><a href="artist-page.html">Concerts</a></li>
										<li><a href="upcoming-events.html">Sports</a></li>
										<li><a href="order-ticket-without-seat.html">Parties</a></li>
										<li><a href="event-by-category.html">Theater</a></li>
										<li><a href="gallery.html">Gallery</a></li>
										<li><a href="select-seat-2.html">Ticekts</a></li>
										<li class="cart"><a href="#">0</a></li>
									</ul>
								</div>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</header>
		
		<section class="hero-1">
			<div class="container">
				<div class="row">
					<div class="hero-content">
						<h1 class="hero-title">Make Your Dream Come True</h1>
						<p class="hero-caption">Hangout with people having same interests as you</p>
						
					</div>
				</div>
			</div>
		</section>
		
		<section class="section-todays-schedule">
			<div class="container">
				<div class="row">
					<div class="section-header">
						<h2>Today's Schedule</h2>
						<span class="todays-date"><i class="fa fa-calendar" aria-hidden="true"></i> <%= (new java.util.Date()).toString()%> </span>
					</div>
					<div class="section-content">
						<ul class="clearfix">
							<li class="event-1">
								<span class="event-time">08:00 <strong>AM</strong></span>
								<strong class="event-name">Kiai Kanjeng Orchestra</strong>
								<a href="signin.jsp" class="get-ticket">RSVP</a>
							</li>
							<li class="event-2">
								<span class="event-time">08:00 <strong>AM</strong></span>
								<strong class="event-name">Envato Author Meetup</strong>
								<a href="signin.jsp" class="get-ticket">RSVP</a>
							</li>
							<li class="event-3">
								<span class="event-time">10:00 <strong>AM</strong></span>
								<strong class="event-name">BMW Open Championship</strong>
								<a href="signin.jsp" class="get-ticket">RSVP</a>
							</li>
							<li class="event-4">
								<span class="event-time">09:00 <strong>PM</strong></span>
								<strong class="event-name">UEFA Champions League: Barca v Arsenal</strong>
								<a href="signin.jsp" class="get-ticket">RSVP</a>
							</li>	
						</ul>
						<strong class="event-list-label">Full Hangouts Schedules</strong>
					</div>
				</div>
			</div>
		</section>
		
		<section class="section-upcoming-events">
			<div class="container">
				<div class="row">
					<div class="section-header">
						<h2>Upcoming Hangouts</h2>
						<p>Hangouts going to occur shortly in UAlbany </p>
						<a href="signin.jsp">See all upcoming events</a>
					</div>
					<div class="section-content">
						<ul class="clearfix">
							<li>
								<div class="date">
									<a href="#">
										<span class="day">25</span>
										<span class="month">August</span>
										<span class="year">2016</span>
									</a>
								</div>
								
									<img src="images/upcoming-event-1.jpg" alt="image">
								
								<div class="info">
									<p>BMW Open Championship </p>
									<a href="signin.jsp" class="get-ticket">RSVP</a>
								</div>
							</li>
							<li>
								<div class="date">
									
										<span class="day">26</span>
										<span class="month">August</span>
										<span class="year">2016</span>
								
								</div>
									<img src="images/upcoming-event-2.jpg" alt="image">
								<div class="info">
									<p>Kiai Kanjeng Orchestra </p>
									<a href="signin.jsp" class="get-ticket">RSVP</a>
								</div>
							</li>
							<li>
								<div class="date">
									
										<span class="day">27</span>
										<span class="month">August</span>
										<span class="year">2016</span>
									
								</div>
								
									<img src="images/upcoming-event-3.jpg" alt="image">
								
								<div class="info">
									<p>Envato Author SF Meetup </p>
									<a href="signin.jsp" class="get-ticket">RSVP</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		
		<section class="section-event-category">
			<div class="container">
				<div class="row">
					<div class="section-header">
						<h2>Hangouts by Categories</h2>
					</div>
					<div class="section-content">
						<ul class="row clearfix">
							<li class="category-1 col-sm-4">
								<img src="images/event-category-1.jpg" alt="image">
								<a href="signin.jsp"><span>Concerts</span></a>
							</li>
							<li class="category-2 col-sm-4">
								<img src="images/event-category-2.jpg" alt="image">
								<a href="signin.jsp"><span>Sports</span></a>
							</li>
							<li class="category-3 col-sm-4">
								<img src="images/event-category-3.jpg" alt="image">
								<a href="signin.jsp"><span>Threaters</span></a>
							</li>
							<li class="category-4 col-sm-4">
								<img src="images/event-category-4.jpg" alt="image">
								<a href="signin.jsp"><span>Parties</span></a>
							</li>
							<li class="category-5 col-sm-4">
								<img src="images/event-category-5.jpg" alt="image">
								<a href="signin.jsp"><span>Communities</span></a>
							</li>
							<li class="category-6 col-sm-4">
								<img src="images/event-category-6.jpg" alt="image">
								<a href="signin.jsp"><span>Classes</span></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		
		<section class="section-stats">
			<div class="container">
				<div class="row">
					<div class="section-content">
						<ul class="row clearfix">
							<li class="col-sm-4">
								<span class="count">598</span>
								<hr>
								<p>Events Active</p>
							</li>
							<li class="col-sm-4">
								<span class="count">16,173</span>
								<hr>
								<p>Active User</p>
							</li>
							<li class="col-sm-4">
								<span class="count">136,874</span>
								<hr>
								<p>RSVP</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		
		
		
		
		<footer id="colophon" class="site-footer">
			<div class="top-footer">
				<div class="container">
					<div class="row">
						
						<div class="col-md-8">
							<a href="#"><img src="images/footerlogo.png" alt="logo"></a>
						</div>
						<div class="col-md-4">
						
						<p>&copy; UAlbany Hangouts. ALL RIGHTS RESEVED</p>
						</div>
					</div>
					
				</div>
			</div>
			<div class="main-footer">
				<div class="container">
					<div class="row">
						<div class="footer-1">
							<div class="social clearfix">
								<h3>Stay Connected</h3>
								<ul>
									<li class="facebook">
										<a href="#">
											<i class="fa fa-facebook" aria-hidden="true"></i>
											Facebook
										</a>
									</li>
									<li class="twitter">
										<a href="#">
											<i class="fa fa-twitter" aria-hidden="true"></i>
											Twitter
										</a>
									</li>
									<li class="linkedin">
										<a href="#">
											<i class="fa fa-linkedin-square" aria-hidden="true"></i>
											LinkedIn
										</a>
									</li>
									<li class="google">
										<a href="#">
											<i class="fa fa-google-plus-square" aria-hidden="true"></i>
											Google+
										</a>
									</li>
									
								</ul>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</footer>
		
			

</body>
</html>
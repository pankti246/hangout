<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
	height:110px;
}

.top-header .top-right ul li:first-child a{
	color:#b3b3b3;
	font-weight:500;
}
</style>
</head>
<body>
<% if(session.getAttribute("email")==null){
 response.sendRedirect("signin.jsp");
}%>



<% String id = request.getParameter("id"); 
   String email =(String) session.getAttribute("email");
%>
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
									<a href="logout.jsp">Log Out</a>
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
										<li><a href="categories.jsp">Categories</a></li>
										<li><a href="Profile.jsp">Profile</a></li>
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
						
					</div>
				</div>
			</div>
		</section>
			
			
			<section class="section-upcoming-events">
			<div class="container">
				<div class="row">
					<div class="section-header">
						<h2>Hangouts you are going to!</h2>
						</div>
		
					<div class="section-content">
<%Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ualbanyhangouts", "icsi518", "secretICSI518");
Statement st=con.createStatement();

   ResultSet rs=st.executeQuery("select * from event_details where cate_id="+id);
   System.out.println(id);
   %>

                 <ul class="clearfix">
							<%
							while(rs.next())
							   {
								  String hangout_id = rs.getString(1);
								  String name = rs.getString(2);
								  String organizer_email = rs.getString(3);
								  String cate_id = rs.getString(4);
								  String img = rs.getString(5);
								  String day = rs.getString(6);
								  String month = rs.getString(7);
								  String year = rs.getString(8);
								  String venue = rs.getString(10); %>
							
							<li> 
								<div class="date">
									
										
										
										<span class="day"><%=day %></span>
										<span class="month"><%=month %></span>
										<span class="year"><%=year %></span>
								
								</div>
								
									<img src="<%=img %>" alt="image">
								<div class="info">
									<p><%=name %> </p>
							
							<%
							System.out.println(email);
							Statement st1 = con.createStatement();
							ResultSet rs1 = st1.executeQuery("select * from rsvp_event where user_email='"+email+"' and hangout_id="+hangout_id);
						if(rs1.next()){
							%>
							<a href="delRSVPServlet?id=<%=hangout_id %>" class="get-ticket">Cancel RSVP</a>
							<%}
							else{ %>
							<a href="RSVPServlet?id=<%=hangout_id %>" class="get-ticket">RSVP</a>
							<%} %>		
								</div>
								
							</li>
						<% } %>	
							<br/>
							<br/>
							<br/>
						</ul>
						
					</div>
				</div>
			</div>
		</section>
		


	  
	 
		
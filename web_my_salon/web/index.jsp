<%-- 
    Document   : index
    Created on : Sep 22, 2020, 9:55:59 AM
    Author     : Ukdmp Kasun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            response.setHeader("Pragma","no-cache");
            response.setHeader("Expires","0");
  
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

String id = request.getParameter("id");
String time = request.getParameter("time");
    HttpSession session2=request.getSession(false);  
        String name=(String)session2.getAttribute("name"); 
        
           HttpSession session4=request.getSession(false);  
        String phone=(String)session4.getAttribute("phone"); 
        
        HttpSession session1=request.getSession(false);  
        String uid=(String)session1.getAttribute("id"); 
       

            %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>My Saloon</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Vogue template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
</head>
<body>

    
<div class="super_container">
	
	<!-- Header -->

	<header class="header trans_400">
		<div class="header_content d-flex flex-row align-items-center justify-content-center trans_400">

			<!-- Logo -->
			<div class="logo">
				<a href="#">
					<div>V<span>o</span>black</div>
					<div>hair</div>
				</a>
				<div class="hamburger"><div></div><div></div><div></div></div>
			</div>

			<!-- Main Navigation -->
			<nav class="main_nav">
				<ul class="d-flex flex-row align-items-start justify-content-start">
					<li class="active"><a href="index.jsp">Home<div><div></div><div></div><div></div></div></a></li>
					<li><a href="#services">Services<div><div></div><div></div><div></div></div></a></li>
					<li><a href="myReservations.jsp" >My Reservations<div><div></div><div></div><div></div></div></a></li>
					<li><a href="contact.html">Contact<div><div></div><div></div><div></div></div></a></li>
                                        <% if(session1.getAttribute("id")!= null )
                                        {
                                        %>
                                         <li><a href="./LogOut">Log Out</a></li>
                                         <%
                                             }
else
{
%>
      <li><a href="Auth/login.jsp">Login</a></li>                                    
                                         <%}   %>
				</ul>
			</nav>

			<!-- Appointment -->
			<a href="./book.jsp">
			<div class="app trans_400">
				<div class="app_button_container d-flex flex-row align-items-center justify-content-start">
					<div class="app_button trans_400 d-flex flex-row align-items-center justify-content-start">
						<div class="app_button_icon"><img src="images/woman.svg" alt="https://www.flaticon.com/authors/freepik"></div>
						<div>Book an Appointment</div>
					</div>

				</div>
			</div>
			</a>
		</div>
	</header>

	<!-- Menu -->
	
	<div class="menu">
		<nav class="menu_nav">
			<ul class="d-flex flex-column align-items-start justify-content-start">
				<li class="active"><a href="index.html">Home</a></li>
				<li><a href="#services">Services</a></li>
				<li><a href="myreservations.jsp">My Reservations</a></li>
				<li><a href="contact.html">Contact</a></li>
                                <li><a href="Auth/login.jsp">Login</a></li>
			</ul>
		</nav>
	</div>

	<!-- Home -->

	<div class="home">

		<!-- Home Slider -->
		<div class="home_slider_container">
			<div class="owl-carousel owl-theme home_slider">
				
				<!-- Slide -->
				<div class="owl-item home_slide">
					<div class="background_image" style="background-image:url(images/index.jpg)"></div>
					<div class="slide_text" data-animation-in="fadeIn" data-animation-out="animate-out fadeOut">
						<div class="slide_title">Our best offers</div>
						<div class="slide_subtitle">Lorem ipsum dolor sit amet, consectetur</div>
					</div>
					<div class="slide_container">
						<div class="container">
							<div class="row">
								<div class="col-lg-11">
									<div class="slide_content" data-animation-in="fadeInRight" data-animation-out="animate-out fadeOut">
										<div class="home_title"><h1>The <span>hair</span> that you dream</h1></div>
										<div class="home_text">
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris sceleri sque, at rutrum nulla dictum. Ut ac ligula sapien cursus faucibus finibus.</p>
										</div>
										<div class="home_link"><a href="#">View our offers</a></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Slide -->
				<div class="owl-item home_slide">
					<div class="background_image" style="background-image:url(images/index.jpg)"></div>
					<div class="slide_text" data-animation-in="fadeIn" data-animation-out="animate-out fadeOut">
						<div class="slide_title">Our best offers</div>
						<div class="slide_subtitle">Lorem ipsum dolor sit amet, consectetur</div>
					</div>
					<div class="slide_container">
						<div class="container">
							<div class="row">
								<div class="col-lg-11">
									<div class="slide_content" data-animation-in="fadeInRight" data-animation-out="animate-out fadeOut">
										<div class="home_title"><h1>The <span>hair</span> that you dream</h1></div>
										<div class="home_text">
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris sceleri sque, at rutrum nulla dictum. Ut ac ligula sapien cursus faucibus finibus.</p>
										</div>
										<div class="home_link"><a href="#">View our offers</a></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Slide -->
				<div class="owl-item home_slide">
					<div class="background_image" style="background-image:url(images/index.jpg)"></div>
					<div class="slide_text" data-animation-in="fadeIn" data-animation-out="animate-out fadeOut">
						<div class="slide_title">Our best offers</div>
						<div class="slide_subtitle">Lorem ipsum dolor sit amet, consectetur</div>
					</div>
					<div class="slide_container">
						<div class="container">
							<div class="row">
								<div class="col-lg-11">
									<div class="slide_content" data-animation-in="fadeInRight" data-animation-out="animate-out fadeOut">
										<div class="home_title"><h1>The <span>hair</span> that you dream</h1></div>
										<div class="home_text">
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris sceleri sque, at rutrum nulla dictum. Ut ac ligula sapien cursus faucibus finibus.</p>
										</div>
										<div class="home_link"><a href="#">View our offers</a></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

		<!-- Scroll Down -->
		<div class="scroll_down scroll_to d-flex flex-column align-items-center justify-content-center" data-scroll-to="#services">
			<div class="scroll_icon"></div>
			<div>Scroll Down</div>
		</div>

		<!-- Slider Progress -->
		<div class="slide_progress">
			<div class="slide_num">01.</div>
			<div class="slide_bar"><div></div></div>
		</div>
	</div>

	<!-- Services -->

	<div class="services" id="services">
		<div class="parallax_background" data-image-src="images/services.jpg"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-9">
					<div class="section_title_container">
						<div class="section_title"><h1>Our Services</h1></div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris sceleri sque.</p>
					</div>
				</div>
			</div>
			<div class="row services_row">
				<div class="col">
					<div class="section_expander">

						<!-- Services Slider -->
						<div class="services_slider_container">
							<div class="owl-carousel owl-theme services_slider">
								
								<!-- Slide -->
								<div class="owl-item">

									<!-- Service -->
									<div class="service d-flex flex-row align-items-center justify-content-start trans_200">
										<div class="service_icon"><div><img src="images/mirror.svg" class="svg" alt="https://www.flaticon.com/authors/freepik"></div></div>
										<div class="service_content">
											<div class="service_title trans_200">Hair Dressing</div>
											<div class="service_text trans_200">
												<p>In vitae nisi aliquam, scelerisque leo a, volutpat sem. Vivamus rutrum dui ferme ntum eros hendrerit, id lobortis.</p>
											</div>
										</div>
									</div>

									<!-- Service -->
									<div class="service d-flex flex-row align-items-center justify-content-start trans_200">
										<div class="service_icon"><div><img src="images/facial-mask.svg" class="svg" alt="https://www.flaticon.com/authors/freepik"></div></div>
										<div class="service_content">
											<div class="service_title trans_200">Ombre Hair</div>
											<div class="service_text trans_200">
												<p>In vitae nisi aliquam, scelerisque leo a, volutpat sem. Vivamus rutrum dui ferme ntum eros hendrerit, id lobortis.</p>
											</div>
										</div>
									</div>

								</div>

								<!-- Slide -->
								<div class="owl-item">
									
									<!-- Service -->
									<div class="service d-flex flex-row align-items-center justify-content-start trans_200">
										<div class="service_icon"><div><img src="images/makeup.svg" class="svg" alt="https://www.flaticon.com/authors/freepik"></div></div>
										<div class="service_content">
											<div class="service_title trans_200">Hair Coloring</div>
											<div class="service_text trans_200">
												<p>In vitae nisi aliquam, scelerisque leo a, volutpat sem. Vivamus rutrum dui ferme ntum eros hendrerit, id lobortis.</p>
											</div>
										</div>
									</div>

									<!-- Service -->
									<div class="service d-flex flex-row align-items-center justify-content-start trans_200">
										<div class="service_icon service_icon_2"><div><img src="images/cream.svg" class="svg" alt="https://www.flaticon.com/authors/freepik"></div></div>
										<div class="service_content">
											<div class="service_title trans_200">Treatments</div>
											<div class="service_text trans_200">
												<p>In vitae nisi aliquam, scelerisque leo a, volutpat sem. Vivamus rutrum dui ferme ntum eros hendrerit, id lobortis.</p>
											</div>
										</div>
									</div>

								</div>

								<!-- Slide -->
								<div class="owl-item">
									
									<!-- Service -->
									<div class="service d-flex flex-row align-items-center justify-content-start trans_200">
										<div class="service_icon service_icon_flip"><div><img src="images/make-up.svg" class="svg" alt="https://www.flaticon.com/authors/freepik"></div></div>
										<div class="service_content">
											<div class="service_title trans_200">Cutting & Trimming</div>
											<div class="service_text trans_200">
												<p>In vitae nisi aliquam, scelerisque leo a, volutpat sem. Vivamus rutrum dui ferme ntum eros hendrerit, id lobortis.</p>
											</div>
										</div>
									</div>

									<!-- Service -->
									<div class="service d-flex flex-row align-items-center justify-content-start trans_200">
										<div class="service_icon service_icon_3"><div><img src="images/cream-2.svg" class="svg" alt="https://www.flaticon.com/authors/freepik"></div></div>
										<div class="service_content">
											<div class="service_title trans_200">Keratin Streightening</div>
											<div class="service_text trans_200">
												<p>In vitae nisi aliquam, scelerisque leo a, volutpat sem. Vivamus rutrum dui ferme ntum eros hendrerit, id lobortis.</p>
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
<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap-4.1.2/popper.js"></script>
<script src="styles/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/progressbar/progressbar.min.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>


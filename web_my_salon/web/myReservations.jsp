<%-- 
    Document   : myReservations
    Created on : Sep 22, 2020, 12:24:35 PM
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

    HttpSession session2=request.getSession(false);  
        String name=(String)session2.getAttribute("name"); 
        
           HttpSession session4=request.getSession(false);  
        String phone=(String)session4.getAttribute("phone"); 
        
        HttpSession session1=request.getSession(false);  
        String id=(String)session1.getAttribute("id"); 
        if(session1.getAttribute("id")!= null  ){  
         
      
        
        }  
       
        else{
           response.sendRedirect("../Auth/login.jsp");  
        }

            %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
					<li ><a href="index.jsp">Home<div><div></div><div></div><div></div></div></a></li>
					<li><a href="index.jsp">Services<div><div></div><div></div><div></div></div></a></li>
					<li><a href="contact.html">Contact<div><div></div><div></div><div></div></div></a></li>
                                          <li><a href="./LogOut">Log Out</a></li>
				</ul>
			</nav>

			<!-- Appointment -->
			
		</div>
	</header>

	<!-- Menu -->
	
	<div class="menu">
		<nav class="menu_nav">
			<ul class="d-flex flex-column align-items-start justify-content-start">
				<li class="active"><a href="index.jsp">Home</a></li>
				<li><a href="#services">Services</a></li>
				<li><a href="myreservations.jsp">My Reservations</a></li>
				<li><a href="contact.html">Contact</a></li>
                                <li><a href="./LogOut">Log Out</a></li>
			</ul>
		</nav>
	</div>
        <div class="main" style="width: 100%; height: 100px"></div>
        <div class="container" style="margin-top: 20px" >
        <div class="card">
  <div class="card-body">
      <br>
    			<table class="table">
  <thead class="thead-dark">
  
    <tr>
     
      <th scope="col">Name</th>
       <th scope="col">Time Slot</th>
       <th scope="col">Status</th>
      <th scope="col">Action</th>
    </tr>
   
  </thead>
  <tbody>
      
       <%
       
try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/saloon","root","");
statement=connection.createStatement();
String sql ="select * from reserved where contact = '"+phone+"' ";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%> 
    <tr>
      <td><%=resultSet.getString(2)%></td>
      <td><%=resultSet.getString(3)%></td>
      <td><%=resultSet.getString(5)%></td>
      <td> <form action="./canselReservation" method="POST">
                                            <input type='hidden' name="id" value="<%=resultSet.getString(1)%>">
                                             <input type='hidden' name="time" value="<%=resultSet.getString(3)%>">
                                            <input type="submit" value="Cancel" class="btn btn-warning">
                                        </form></td>
    </tr>

                             <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
  </tbody>
</table>
  </div>
</div></div>
    </body>
</html>

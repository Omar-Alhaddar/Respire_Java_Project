<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Page</title>
 <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
         <script
      src="https://code.jquery.com/jquery-3.6.0.js"
      integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
      crossorigin="anonymous"
    ></script>
<link rel="stylesheet" type="text/css" href="css/omar.css">
<script type="text/javascript" src="js/admin.js"></script>
</head>
<body>

    
  
     <header>
     
             
            <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav" style="
         background-color: rgb(0, 0, 0);
            /* background-image: linear-gradient(45deg, rgba(228, 0, 228, 0.651), transparent); */
            height: 90px;
            margin: 0px;
        "
        >
             <a href="/home">   <img   src="assets/img/project_logo.png" alt="Here is an inage" > </a>
             
                <div class="container">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                         <h2 style= "color:white">Welcome to the Admin Page <c:out value="${currentUser.username}"></c:out></h2>
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="/home">Home</a></li>
                            <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="/logout">Logout</a></li>
                        </ul>
       
                    </div>
                </div>
            </nav>
        </header>
<%--           <form id="logoutForm" method="POST" action="/logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" value="Logout!" />
    </form> --%>
       
    <br>
     <section class="page-section cta">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 mx-auto">
                        <div class="cta-inner bg-faded text-center rounded">
                            <h2 class="section-heading mb-5">
                                <span class="section-heading-upper">Trips and Hikes</span>
                            </h2>
                            <c:forEach items="${trips}" var="trip">
                            <div class="requests">
                                <a href="/trip/${trip.id}">${trip.name}</a>
                                <div class="inner-buttons">
                                    <a href=  "/approvedTripEmail/${trip.id}" class="hide">Approve</a>
                                    <p style="display:inline ; color:#333333"> | </p>
                                    <a href= "/declinedTripEmail/${trip.id}" class="hide">Decline</a>
                                </div>
                            </div>
                                
                                </c:forEach>
                        </div>
                        <div class="cta-inner bg-faded text-center rounded">
                            <h2 class="section-heading mb-5">
                                <span class="section-heading-upper">Events and Concerts</span>
                            </h2>
						<c:forEach items="${events}" var="event">
                            <div class="requests">
                            <a href="/event/${event.id}">${event.name}</a>
                            <div class="inner-buttons">
                                 <a href= "/approvedEventEmail/${event.id}" class="hide">Approve</a>
                                 <p style="display:inline; color:#333333"> | </p>
                                 <a href= "/declinedEventEmail/${event.id}" class="hide">Decline</a>
                            </div>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</body>
</html>
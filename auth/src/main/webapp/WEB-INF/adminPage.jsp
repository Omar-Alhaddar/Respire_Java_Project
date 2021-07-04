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
<link rel="stylesheet" type="text/css" href="css/omar.css">
</head>
<body>
    <h1>Welcome to the Admin Page <c:out value="${currentUser.username}"></c:out></h1>
    
    <form id="logoutForm" method="POST" action="/logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" value="Logout!" />
    </form>
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
                                <a href="#">"${trip.name}"</a>
                                <div class="inner-buttons">
                                    <input type="submit" value="Approve"/>
                                    <input type="submit" value="Decline"/>
                                </div>
                                </c:forEach>
                        </div>
                        <div class="cta-inner bg-faded text-center rounded">
                            <h2 class="section-heading mb-5">
                                <span class="section-heading-upper">Events and Concerts</span>
                            </h2>
						<c:forEach items="${events}" var="event">
                            <div class="requests">
                            <a href="#">"${event.name}"</a>
                            <div class="inner-buttons">
                                <input type="submit" value="Approve"/>
                                <input type="submit" value="Decline"/>
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
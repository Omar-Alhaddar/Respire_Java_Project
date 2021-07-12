<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
			rel="stylesheet" 
			integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
			crossorigin="anonymous">
		<link rel="stylesheet" href="/css/omar.css" />
		<meta charset="ISO-8859-1">
	<title>Show Event/Concert</title>
	<style>
	img{
	width:100px;
	
	}
	</style>

</head>
	<body>
  <header>
     
             
            <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav" style="background-color: rgb(0, 0, 0);
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
		<div class="container" style="
    background-image: linear-gradient(45deg, black, transpearnt);
    opacity: 0.8;
    background-image: linear-gradient(45deg, black, transparent);
    width: 100%;
    width: 4000px;
  
    padding-left: 0px;
    padding: 0px;
">
		
			
			<div class="event-details-side"  style="
    padding-top: 228px;
    margin-left: 40%;
    color:white;
">			<h2 style="color:white;">Host:${ event.host.username}</h2>
		  <%-- <h4><strong>Host:</strong> ${ event.host.username }</h4> --%>
		  <h4><strong>Name:</strong> ${ event.name }</h4>
				<%-- <h4><strong>Date:</strong> ${ event.date }</h4> --%>
			<h4><strong>Date:</strong>	<fm:formatDate value="${ event.date }" pattern="MMM dd,yyyy"/></h4>
				<h4><strong>city:</strong> ${ event.city }</h4>
				<h4><strong>Capacity:</strong> ${ event.capacity }</h4>
				<h4><strong>Description:</strong> ${ event.description }</h4>
				<%-- <h4><strong></strong> <img src="${event.photosImagePath}" /></h4>  --%> 
				
			</div>
	
		</div>
	</body>
</html>
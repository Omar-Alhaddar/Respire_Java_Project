<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
       
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <link rel="stylesheet" href="css/tablecss.css">
        <link rel="stylesheet" href="css/stylezz.css">
<meta charset="ISO-8859-1">
<title>All trips and hikes</title>

<style>
      img{
          height: 200px;
      }
      
         body{
background-image:linear-gradient(rgba(47, 23, 15, 0.65), rgba(47, 23, 15, 0.65)), url("../assets/img/bg8.jpg")
}
</style>

</head>

<body>
  <header>
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
                        
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="/home">Home</a></li>
                          
                            <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="/login">Sign Up</a></li>
                            <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="/logout">Logout</a></li>
                            <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="about.html">About</a></li>
                        </ul>
       
                    </div>
                </div>
            </nav>
        </header>

        
        <section class="page-section about-heading">
            <div class="container">
             
                <div class="about-heading-content">
                    <div class="row">
                        <div class="col-xl-9 col-lg-10 mx-auto">
                            <section class="ftco-section">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12 text-center mb-2">
                                            <h2 class="heading-section">Upcoming Trips and Hikes</h2>
                                          <div class="mmoo"> <a href="trips">  <button type="button" class="btn btn-primary btn-lg">Add New Trip/Hike</button></a> </div>
                                          
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            
                                            <div class="table-wrap">
                                                <table class="table">
                                                <thead class="thead-primary">
                                                  <tr>
                                                    <th>Name</th>
                                                    <th>Description</th>
                                                    <th>Price</th>
                                                    <th>Capacity</th>
                                                    <th>Register</th>
                                                  </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${events}" var="trip">
                                                  <tr>
                                                    <th scope="row" class="scope"><a href="/trip/${trip.id }">  ${trip.name}</a></th>
                                                    <td>${trip.description}</td>
                                                    <td>${trip.price}</td>
                                                    <td>${trip.getUsers().size()} / ${trip.capacity}</td>
                                                   	
											<c:choose>
	                                                    		
																    <c:when test="${trip.getUsers().contains(user) }">
																   <td> <a href="unjoinTrip/${trip.id }" class="btn btn-primary">cancel</a></td>
																       
																        <br />
																    </c:when>    
																    <c:otherwise>
																    
																       <td>  <a href="joinTrip/${trip.id }" class="btn btn-primary">Join</a> </td>
																        <br />
																    </c:otherwise>
																      
																</c:choose> 
											
                                                  </tr>
                                                  </c:forEach>
                                                  <tr>
                                                                                                     </tr>
                                                </tbody>
                                              </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        
                        </div>
                    </div>
                </div>
            </div>
        </section>
       
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
</body>
</html>
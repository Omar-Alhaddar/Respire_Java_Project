

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style1.css">
     
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
             <a href="index.html">   <img   src="assets/img/project_logo.png" alt="Here is an inage" > </a>
             
                <div class="container">
                   
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="/">Home</a></li>
                          
                            <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="/login">Sgin Up</a></li>
                            <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="/logout">Logout</a></li>
                            <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="about.html">About</a></li>
                        </ul>
       
                    </div>
                </div>
            </nav>
        </header>
  <div class="container">
    <div class="inner">
      <div class="panel panel-left">
        <div class="panel-content">
          <div class="image-background">
          </div>
        </div>
      </div>
      <div class="panel panel-right">
        <div class="panel-content">
          <div class="form">
            <%--  <p><form:errors path="user.*"/></p> --%>
                    <form:form class="sign-back" method="POST" action="/addall" modelAttribute="trip"  enctype="multipart/form-data">
                    <form:hidden value = "${keko}" path="host" />  
                    <h1>Create your Trip</h1>
            <div class="group">      
                <p>
                   <%--  <form:label path="name">Name your Trip:</form:label> --%>
                    <form:input path="name"  placeholder="Name your Trip"/>
                </p>
              <span class="highlight"></span>
            </div>
            <div class="group">      
                <p>
                   <%--  <form:label path="description">The Description:</form:label> --%>
                    <form:textarea  cols="30" rows="5" path="description" placeholder="The Description:"/>
                </p>
              <span class="highlight"></span>
            </div>
            <!-- ******************* -->
            <div class="group">      
                <p>
                    <%-- <form:label path="price">The Price:</form:label> --%>
                    <form:input type="number" path="price" placeholder="The Price:"/>
                </p>
              <span class="highlight"></span>
            </div>
            <div class="group">      
                <p>
                    <%-- <form:label path="capacity">The Capacity:</form:label> --%>
                    <form:input type="number" path="capacity" placeholder="The Capacity:"/>
                </p>
              <span class="highlight"></span>
            </div>
            <div class="group">      
                <p>
                    <%-- <form:label path="price">The Price:</form:label> --%>
                    <form:input type="text" path="city" placeholder="city"/>
                </p>
              <span class="highlight"></span>
            </div>
             <div class="group">      
                <p>
                    <%-- <form:label path="price">The Price:</form:label> --%>
                    <form:input type="date" path="date" placeholder="city"/> 
                </p>
              <span class="highlight"></span>
            </div>
            <div class="group">      
                <p>
                  
                  <input type="file" name="image" path="img" accept="image/png, image/jpeg" />
                </p>
              <span class="highlight"></span>
            </div>
            
             <input type="submit" value="Login!"/>
<!-- <button class="send-btn" type="submit">Enjoy your own trip</button> -->
</form:form>  
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="menu"></div>
   <script type="text/javascript" src="js/main.js"></script>
       <!-- End Scripts -->
    </body>
    </html>
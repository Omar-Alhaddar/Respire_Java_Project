

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
<div class="nav">
    <a href="#" class="menu-activator"><i class="ion-ios-more"></i></a>
    <i class="ion-cube"></i>
    <a href="#" class="white link"><i class="ion-ios-redo-outline"></i><i class="ion-ios-redo hidden"></i></a>
  </div>
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
                    <form:form class="sign-back" method="POST" action="/createTrip" modelAttribute="trip">
                    <form:hidden value = "${username}" path="host" />  
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
                   <%--  <form:label path="img">Download a photo:</form:label> --%>
                    <form:input type="file" path="img" placeholder="Download a photo:"/> 
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html lang="en">
    
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Business Casual - Start Bootstrap Theme</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet/less" type="text/css" href="scss/bootstrap/kk.scss" />
        <link rel="stylesheet/less" type="text/css" href="scss/bootstrap/kk.scss" />
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
        <!-- <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style1.css"> -->

        <style>
           
      
      html, body {
      min-height: 100%;
      }
      body, div, form, input, select, textarea, p { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 18px;
      color: #666;
      line-height: 22px;
      }
      h1 {
      position: absolute;
      margin: 0;
      font-size: 32px;
      color: #fff;
      z-index: 2;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      }
      form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 20px 0 #a82877; 
      }
      .banner {
      position: relative;
      height: 210px;
      background-image: url("/uploads/media/default/0001/02/8ca4045044162379597641472fa0bb5489ba418f.jpeg");      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.5); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      input, textarea, select {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      select {
      width: 100%;
      padding: 7px 0;
      background: transparent;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder {
      color: #a82877;
      }
      .item input:hover, .item select:hover, .item textarea:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 6px 0 #a82877;
      color: #a82877;
      }
      .item {
      position: relative;
      margin: 10px 0;
      }
      input[type="date"]::-webkit-inner-spin-button {
      display: none;
      }
      .item i, input[type="date"]::-webkit-calendar-picker-indicator {
      position: absolute;
      font-size: 20px;
      color: #a9a9a9;
      }
      .item i {
      right: 1%;
      top: 30px;
      z-index: 1;
      }
      [type="date"]::-webkit-calendar-picker-indicator {
      right: 0;
      z-index: 2;
      opacity: 0;
      cursor: pointer;
      }
      input[type="time"]::-webkit-inner-spin-button {
      margin: 2px 22px 0 0;
      }
      input[type=radio], input.other {
      display: none;
      }
      label.radio {
      position: relative;
      display: inline-block;
      margin: 5px 20px 10px 0;
      cursor: pointer;
      }
      .question span {
      margin-left: 30px;
      }
      label.radio:before {
      content: "";
      position: absolute;
      top: 2px;
      left: 0;
      width: 15px;
      height: 15px;
      border-radius: 50%;
      border: 2px solid #ccc;
      }
      #radio_5:checked ~ input.other {
      display: block;
      }
      input[type=radio]:checked + label.radio:before {
      border: 2px solid #a82877;
      background: #a82877;
      }
      label.radio:after {
      content: "";
      position: absolute;
      top: 7px;
      left: 5px;
      width: 7px;
      height: 4px;
      border: 3px solid #fff;
      border-top: none;
      border-right: none;
      transform: rotate(-45deg);
      opacity: 0;
      }
      input[type=radio]:checked + label:after {
      opacity: 1;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px; 
      background: #274134;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      background: #bf1e81;
      }
      @media (min-width: 568px) {
      .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .name-item input, .city-item input {
      width: calc(50% - 20px);
      }
      .city-item select {
      width: calc(50% - 8px);
      }
      }
    
        </style>
    </head>
    <body>
      
        <!-- Navigation-->
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
                    <a class="navbar-brand text-uppercase fw-bold d-lg-none" href="index.html">Start Bootstrap</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="index.html">Home</a></li>
                          
                            <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="/login">Sgin Up</a></li>
                            <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="/logout">Logout</a></li>
                            <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="about.html">About</a></li>
                        </ul>
       
                    </div>
                </div>
            </nav>
        </header>
    <!--   addd here -->

    <body>
    <div class="testbox">
        <form:form class="sign-back" method="POST" action="/createEvent" modelAttribute="event">
         <form:hidden value = "${username}" path="host" /> 
         <div class="banner" style="background-image: url(https://media-exp3.licdn.com/dms/image/C561BAQE-51J-8KkMZg/company-background_10000/0/1548357920228?e=1625529600&v=beta&t=p_SaDEB6BKoDjl6CYEXegkwRhNQqtvFMe2-yxdT-Y8o);">
          <h1>Made your own Events with Respire</h1>
        </div> 
        <div class="item">
            <p>The name of your Event</p>
            <form:input type="text" path="name" />
          </div>
        
        
        <div class="item">
          <p>Description of Event</p>
          <form:textarea  rows="3" path="description" />
        </div>
        <div class="item">
          <p>Price of the ticket</p>
          <form:input type="number" path="price" />
        </div>
        <div class="item">
          <p> Trip Capacity</p>
          <form:input type="number" path="capacity" />
        </div>
        
        <div class="item">
          <p>City</p>
          <form:input type="text" path="city" />
        </div>

<div class="item">
          <p>Date of Event </p>
          <form:input type="date" path="date" /> 
          <i class="fas fa-calendar-alt"></i>
        </div>
        <div class="item">
          <p>Download a photo</p>
          <form:input type="file" path="img" /> 
        </div>
        
        
        <button class="send-btn" type="submit">SEND your own Event</button> 
</form:form>  
        
        </div>
    </div>
        
 
    
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="http://iamdustan.com/smoothscroll/"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

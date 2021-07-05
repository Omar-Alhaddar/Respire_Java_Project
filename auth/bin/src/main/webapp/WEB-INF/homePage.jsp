<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet/less" type="text/css" href="scss/bootstrap/kk.scss" />
        <link rel="stylesheet/less" type="text/css" href="scss/bootstrap/kk.scss" />

        <style>
            *{box-sizing: border-box; -webkit-box-sizing: border-box; }
html, body { height: 100%; }
body { margin: 0; font: 16px/1.3 sans-serif; }

/*
PURE RESPONSIVE CSS3 SLIDESHOW GALLERY by Roko C. buljan
http://stackoverflow.com/a/34696029/383904
*/

.CSSgal {
	position: relative;
	overflow: hidden;
	height: 100%; /* Or set a fixed height */
}

/* SLIDER */

.CSSgal .slider {
	height: 100%;
	white-space: nowrap;
	font-size: 0;
	transition: 0.8s;
}

/* SLIDES */

.CSSgal .slider > * {
	font-size: 1rem;
	display: inline-block;
	white-space: normal;
	vertical-align: top;
	height: 100%;
	width: 100%;
	background: none 50% no-repeat;
	background-size: cover;
}

/* PREV/NEXT, CONTAINERS & ANCHORS */

.CSSgal .prevNext {
	position: absolute;
	z-index: 1;
	top: 50%;
	width: 100%;
	height: 0;
}

.CSSgal .prevNext > div+div {
	visibility: hidden; /* Hide all but first P/N container */
}

.CSSgal .prevNext a {
	background: #fff;
	position: absolute;
	width:       60px;
	height:      60px;
	line-height: 60px; /* If you want to place numbers */
	text-align: center;
	opacity: 0.7;
	-webkit-transition: 0.3s;
					transition: 0.3s;
	-webkit-transform: translateY(-50%);
					transform: translateY(-50%);
	left: 0;
}
.CSSgal .prevNext a:hover {
	opacity: 1;
}
.CSSgal .prevNext a+a {
	left: auto;
	right: 0;
}

/* NAVIGATION */

.CSSgal .bullets {
	position: absolute;
	z-index: 2;
	bottom: 0;
	padding: 10px 0;
	width: 100%;
	text-align: center;
}
.CSSgal .bullets > a {
	display: inline-block;
	width:       30px;
	height:      30px;
	line-height: 30px;
	text-decoration: none;
	text-align: center;
	background: rgba(255, 255, 255, 1);
	-webkit-transition: 0.3s;
					transition: 0.3s;
}
.CSSgal .bullets > a+a {
	background: rgba(255, 255, 255, 0.5); /* Dim all but first */
}
.CSSgal .bullets > a:hover {
	background: rgba(255, 255, 255, 0.7) !important;
}

/* NAVIGATION BUTTONS */
/* ALL: */
.CSSgal >s:target ~ .bullets >* {      background: rgba(255, 255, 255, 0.5);}
/* ACTIVE */
#s1:target ~ .bullets >*:nth-child(1) {background: rgba(255, 255, 255,   1);}
#s2:target ~ .bullets >*:nth-child(2) {background: rgba(255, 255, 255,   1);}
#s3:target ~ .bullets >*:nth-child(3) {background: rgba(255, 255, 255,   1);}
#s4:target ~ .bullets >*:nth-child(4) {background: rgba(255, 255, 255,   1);}
/* More slides? Add here more rules */

/* PREV/NEXT CONTAINERS VISIBILITY */
/* ALL: */
.CSSgal >s:target ~ .prevNext >* {      visibility: hidden;}
/* ACTIVE: */
#s1:target ~ .prevNext >*:nth-child(1) {visibility: visible;}
#s2:target ~ .prevNext >*:nth-child(2) {visibility: visible;}
#s3:target ~ .prevNext >*:nth-child(3) {visibility: visible;}
#s4:target ~ .prevNext >*:nth-child(4) {visibility: visible;}
/* More slides? Add here more rules */

/* SLIDER ANIMATION POSITIONS */

#s1:target ~ .slider {transform: translateX(   0%); -webkit-transform: translateX(   0%);}
#s2:target ~ .slider {transform: translateX(-100%); -webkit-transform: translateX(-100%);}
#s3:target ~ .slider {transform: translateX(-200%); -webkit-transform: translateX(-200%);}
#s4:target ~ .slider {transform: translateX(-300%); -webkit-transform: translateX(-300%);}
/* More slides? Add here more rules */


/* YOU'RE THE DESIGNER! 
   ____________________
   All above was mainly to get it working :)
   CSSgal CUSTOM STYLES / OVERRIDES HERE: */

.CSSgal{
	color: #fff;	
	text-align: center;
}
.CSSgal .slider h2 {
	margin-top: 40vh;
	font-weight: 200;
	letter-spacing: -0.06em;
	word-spacing: 0.2em;
	font-size: 3em;
}
.CSSgal a {
	border-radius: 50%;
	margin: 0 3px;
	color: rgba(0,0,0,0.8);
	text-decoration: none;
}
            /*______________________________****************************************************** */
           

            :root {
        --container-bg-color: revert;
        --left-bg-color: revert;
        --left-button-hover-color: rgba(92, 92, 92, 0.3);
        --right-bg-color: rgba(43, 43, 43, 0.8);
        --right-button-hover-color: rgba(92, 92, 92, 0.3);
        --hover-width: 75%;
        --other-width: 25%;
        margin-top: 0px;
        --speed: 1000ms;
      }
      
      html, body {
        padding:0;
        margin:0;
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        width: 100%;
        height: 100%;
        
      }
      
      h1 {
        font-size: 4rem;
        color: #fff;
        position: absolute;
        left: 50%;
        top: 10%;
        transform: translateX(-50%);
        white-space: nowrap;
      }
      h4 {
        font-size: 1rem;
        color: #fff;
        position: absolute;
        left: 50%;
        top: 30%;
        transform: translateX(-50%);
        text-align: center;
        white-space: nowrap;
      }
    
      
      .button {
        display: block;
        position: absolute;
        left: 50%;
        top: 40%;
        height: 2.5rem;
        padding-top: 1.3rem;
        width: 15rem;
        text-align: center;
        color: #fff;
        border: #fff solid 0.2rem;
        font-size: 1rem;
        font-weight: bold;
        text-transform: uppercase;
        text-decoration: none;
        transform: translateX(-50%);
      }
      
      .split.left .button:hover {
        background-color: var(--left-button-hover-color);
        border-color: var(--left-button-hover-color);
      }
      
      .split.right .button:hover {
        background-color: var(--right-button-hover-color);
        border-color: var(--right-button-hover-color);
      }
      
      .container {
        position: relative;
        width: 100%;
        height: 100%;
        background: var(--container-bg-color);
      }
      
      .split {
        position: absolute;
        width: 50%;
        height: 100%;
        overflow: hidden;
      }
      
      .split.left {
        left:0;
        background: url('https://media.self.com/photos/5be0a54f7942032dd55da480/master/pass/woman-hiking.jpg') center center no-repeat;
        background-size: cover;
      }
      
      .split.left:before {
        position:absolute;
        content: "";
        width: 100%;
        height: 100%;
        background: var(--left-bg-color);
      }
      
      .split.right {
        right:0;
        background: url('https://www.djmagitalia.com/wp-content/uploads/2017/04/%C2%A9AnthonyGhnassia-531-1024x681.jpg') center center no-repeat;
        background-size: cover;
      }
      
    
      
      .split.left, .split.right, .split.right:before, .split.left:before {
        transition: var(--speed) all ease-in-out;
      }
      
      .hover-left .left {
        width: var(--hover-width);
      }
      
      .hover-left .right {
        width: var(--other-width);
      }
      
      .hover-left .right:before {
        z-index: 2;
      }
      
      
      .hover-right .right {
        width: var(--hover-width);
      }
      
      .hover-right .left {
        width: var(--other-width);
      }
      
      .hover-right .left:before {
        z-index: 2;
      }
      
      @media(max-width: 800px) {
        h1 {
          font-size: 2rem;
        }
      
        .button {
          width: 12rem;
        }
      }
      
      @media(max-height: 700px) {
        .button {
            padding-top: 5px;
          top: 100%;
        }
      }
      a{
      background-color:black;}
 
     .navbar  {
        padding: 0px;
    height: 117px;
    background-color:red;
    /* margin: 10px; */
    margin-bottom: 192px;
      }
      img{
          height: 200px;
      }
      html {
  overflow-x: initial !important;
}
.xo img{
    width: 100%;
    height: 100%;
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
        <div class="CSSgal">

            <!-- Don't wrap targets in parent -->
            <s id="s1"></s> 
            <s id="s2"></s>
            <s id="s3"></s>
            <s id="s4"></s>
          
            <div class="slider">
              <div class="xo">
                <img src="assets/img/products-02.jpg"> 
                  </div>
              <div class="xo">
            <img src="assets/img/bg.jpg">                  </div>
              <div class="xo">
                <img src="assets/img/nye-thumbnail3.jpg"> 
                  </div>
              <div class="xo">
                <img src="assets/img/bg.jpg"> 
                  </div>
                
            </div>
     
            
            <div class="prevNext">
              <div><a href="#s4"></a><a href="#s2"></a></div>
              <div><a href="#s1"></a><a href="#s3"></a></div>
              <div><a href="#s2"></a><a href="#s4"></a></div>
              <div><a href="#s3"></a><a href="#s1"></a></div>
            </div>
          
            <div class="bullets">
              <a href="#s1">1</a>
              <a href="#s2">2</a>
              <a href="#s3">3</a>
              <a href="#s4">4</a>
            </div>
          
          </div>


        

        
        <div class="container1">
            <div class="split left">
                <h1>Trips And Hikes</h1>
                <h4>Nature can be the best medicine. Study after study has shown that it’s<br> simply better for us to be surrounded by     
                    wildflowers and trees than by computers <br>and stressed-out coworkers.<br>
                 Consider joining us on a beautiful trip to one of the most famous sites, 
                 and cities in Palestine. <br>If you are looking for a more vigorous event, 
                 then you can join us on a hike,<br> there you will improve your trip planning, lightweight backpacking<br> techniques,
                  and improving your wilderness skill set.</h4>
    
              <a href="#" class="button" style="
    margin-top: -154px;
">Show All</a>
            </div>
            <div class="split right">
              <h1>Events And Concerts</h1>
              <h4>Are you an outgoing person? looking to meet people with similar hobbies, tastes, and interests,<br> or just trying to have fun with your peers and family?<br>
                   Consider joining a night party that is organised by our valuable clients, and approved by us.<br>
                   You also have the option to join a formal event or a gathering if available.</h4>
              <p></p>
              <a href="#" class="button" style="
    margin-top: -154px;
">Show All</a>
          </div>
        </div>
        
        <!-- <footer class="footer text-faded text-center py-5">
            <div class="container1"><p class="m-0 small">Copyright &copy; Your Website 2021</p></div>
        </footer> -->
          <script>
              const left = document.querySelector(".left");
            const right = document.querySelector(".right");
            const container = document.querySelector(".container1");
    
    left.addEventListener("mouseenter", () => {
      container.classList.add("hover-left");
    });
    
    left.addEventListener("mouseleave", () => {
      container.classList.remove("hover-left");
    });
    
    right.addEventListener("mouseenter", () => {
      container.classList.add("hover-right");
    });
    
    right.addEventListener("mouseleave", () => {
      container.classList.remove("hover-right");
    });
    
        </script>







    
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="http://iamdustan.com/smoothscroll/"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

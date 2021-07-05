<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Page</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
 

</head>
 <body>
<h2>Weekly Coding Challenge #1: Sign in/up Form</h2>
<div class="container" id="container" style="min-height: 720px;">
	<div class="form-container sign-up-container">
		<form:form method="POST" action="/registration" modelAttribute="user">
			<h1>Create Account</h1>
            <p><form:errors path="user.*"/></p>
			<span>or use your email for registration</span>
			<p>
                <form:label path="username">Username:</form:label>
                <form:input path="username"/>
            </p>
			<p>
                <form:label path="email">Email:</form:label>
                <form:input type="email"  path="email"/>
            </p>
			<p>
                <form:label path="password">Password:</form:label>
                <form:password path="password"/>
            </p>
            <p>
                <form:label path="passwordConfirmation">Password Confirmation:</form:label>
                <form:password path="passwordConfirmation"/>
            </p>
			<button type="submit">Sign Up</button>
        </form:form>
	</div>
	<div class="form-container sign-in-container">
	 <c:if test="${logoutMessage != null}">
        <c:out value="${logoutMessage}"></c:out>
    </c:if>
    <h1>Login</h1>
    <c:if test="${errorMessage != null}">
        <c:out value="${errorMessage}"></c:out>
    </c:if>
    <form method="POST" action="/login">
        <p>
            <label for="username">Username</label>
            <input type="text" id="username" name="username"/>
        </p>
        <p>
            <label for="password">Password</label>
            <input type="password" id="password" name="password"/>
        </p>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" value="Login!"/>
    </form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				<button class="ghost" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Hello, Friend!</h1>
				<p>Enter your personal details and start journey with us</p>
				<button class="ghost" id="signUp">Sign Up</button>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript" src="js/app.js"></script>
</body> 

</html>
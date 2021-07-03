<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registeration</title>
</head>
<body>
<div >
    <h1>Register</h1>
    
    <p><form:errors path="user.*"/></p>
    
    <form:form method="POST" action="/registration" modelAttribute="user">
        <p>
            <form:label path="firstname">First Name: </form:label>
            <form:input path="firstname"/>
        </p>
           <p>
            <form:label path="middlename">Middle Name: </form:label>
            <form:input path="middlename"/>
        </p>
         <p>
            <form:label path="lastname">last Name: </form:label>
            <form:input path="lastname"/>
        </p>
         <p>
            <form:label path="username">National Number: </form:label>
            <form:input path="username"/>
        </p>
         <p>
            <form:label path="email">Email: </form:label>
            <form:input path="email"/>
        </p>
        <p>
            <form:label path="password">Password:</form:label>
            <form:password path="password"/>
        </p>
        <p>
            <form:label path="passwordConfirmation">Password Confirmation:</form:label>
            <form:password path="passwordConfirmation"/>
        </p>
        <input type="submit" value="Register"/>
    </form:form>
    </div>
    
</body>
</html>
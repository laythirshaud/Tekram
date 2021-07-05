<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
<body>
  <div style="width: 500px; margin: auto;">
  <form:form method="POST" action="/new" modelAttribute="water">
    <div class="row">
        <div class="col">
            <div class="form-group">
                <form:label path="firstname">First Name</form:label>
                <form:label path="firstname" type="text"
                    class="form-control is-valid"> layth</form:label>
            </div>
        </div>
        <div class="col">
            <div class="form-group">
<<<<<<< HEAD
                <form:label path="" >National ID</form:label> 
                <form:label path="" type="text"
=======
                <form:label path="username" >${National ID}</form:label> 
                <form:label path="username" type="text"
>>>>>>> 7cf4afcc55e15c686dc07e773032efd876d76423
                    class="form-control is-valid"> 987654321</form:label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-group">
                <form:label path="middlename" >Middle Name</form:label> 
                <form:label path="middlename" type="text"
                    class="form-control is-valid"> fouad</form:label>
            </div>
        </div>
        <div class="col">
            <div class="form-group">
                <form:label path="address" for="">Address</form:label>
                <form:label path="address" type="text"
                    class="form-control is-valid"> Ramallah</form:label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-group">
                <form:label path="lastname">Last Name</form:label>
                <form:label path="lastname" type="text"
                    class="form-control is-valid"> irshaid</form:label>
            </div>
        </div>
        <div class="col">
            <div class="form-group">
                <form:label path="buildinglicense">Bilding license</form:label>
                <form:input path="buildinglicense" type="text" class="form-control is-invalid" placeholder="Enter the Bilding license" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-group">
                <form:label path="phonenumber">Phone Number</form:label> 
                <form:label path="phonenumber" type="text"
                    class="form-control is-valid"> 0595958344</form:label>
            </div>
        </div>
        <div class="col">
            <div class="form-group"></div>
        </div>
    </div>
    <button type="button" class="btn btn-primary btn-lg">Send</button>
  </form:form>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Welcome Page</title>
</head>
<body>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Ramallah Municipality</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/home">Home <span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Our Services
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/water">Water Services</a>
          <a class="dropdown-item" href="/tax">Pay Taxes</a>
           <a class="dropdown-item" href="/quittance">Quittance Request</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="/suggestion">Suggestions and Complaints</a>
        </div>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="/municipality">About Us</a>
      </li>
    
    </ul>
      <form class="form-inline my-2 my-lg-0" id="logoutForm" method="POST" action="/logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input class="btn btn-outline-success my-2 my-sm-0" type="submit" value="Logout" />
    </form>

  </div>
</nav>
<div class="cardstyle">
	<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="img/water.png" alt="Water Services">
  <div class="card-body">
    <p class="card-header"> Water Services</p>
  </div>
</div>
	<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="img/tax.jpg" alt="Pay Taxes">
  <div class="card-body">
    <p class="card-header"> Pay Taxes</p>
  </div>
</div>
</div>
<div class="cardstyle">
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="img/quit.png" alt="Pay Taxes">
  <div class="card-body">
    <p class="card-header"> Request Quittance</p>
  </div>
</div>
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="img/suggestion.jpg" alt="Pay Taxes">
  <div class="card-body">
    <p class="card-header"> Suggestions and Complaints</p>
  </div>
</div>
</div>



	<footer class="container-fluid text-center">
	<div class="bottom">
		<div class="part">
			<h5>Contact Us</h5>
			<p>P.O Box: 3 - Ramallah - Palestine</p>
			<p>Tel: 00970 2 294 5555</p>
			<p>Fax: 00970 2 296 3214</p>
			<p>Email: info@ramallah.ps</p>
		</div>
		<div class="part">
			<h5>
				<a href="/muncipality">About Municipality 
			</h5>
			</p>
		</div>
		<div class="part">
			<h5>
				<a href="/municipality">About Ramallah 
			</h5>
			</p>
		</div>
	</div>
	<h6>Copyright 2021 AXSOS AG</h6>


	</footer>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>



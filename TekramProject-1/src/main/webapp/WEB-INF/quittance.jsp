<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a
		class="navbar-brand" href="https://www.ramallah.ps/ar_page.aspx?id=d4yPuGa3060837648ad4yPuG">Ramallah Municipality</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="/home">Home<span
					class="sr-only">(current)</span></a></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Our Services </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="/water">Water Services</a> <a
						class="dropdown-item" href="/tax">Pay Taxes</a> <a
						class="dropdown-item" href="/quittance">Quittance Request</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="/suggestion">Suggestions and
						Complaints</a>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="https://www.ramallah.ps/ar_page.aspx?id=d4yPuGa3060837648ad4yPuG">About
					Us</a></li>

		</ul>
		<form class="form-inline my-2 my-lg-0" id="logoutForm" method="POST"
			action="/logout">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" /> <input
				class="btn btn-outline-success my-2 my-sm-0" type="submit"
				value="Logout" />
		</form>

	</div>
	</nav>
	<div style="width: 500px; margin: auto;">
		<form:form method="POST" action="/quittance/new"
			modelAttribute="quittance">
			<div class="row">
				<div class="col">
					<div class="form-group">
						<label>First Name</label> <label type="text"
							class="form-control is-valid">${currentUser.firstname}</label>

					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label>National ID</label> <label type="text"
							class="form-control is-valid"> ${currentUser.username}</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group">
						<label>Middle Name</label> <label type="text"
							class="form-control is-valid"> ${currentUser.middlename}</label>

					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<form:label path="signature">Signature</form:label>
						<form:input path="signature" type="text"
							class="form-control is-invalid" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group">
						<label path="">Last Name</label> <label type="text"
							class="form-control is-valid"> ${currentUser.lastname}</label>

					</div>
				</div>
				<div class="col">
					<div class="form-group"></div>
				</div>
			</div>
			<input type="submit" class="btn btn-primary btn-lg" value="Send" />
		</form:form>
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
				<a href="https://www.ramallah.ps/ar_page.aspx?id=d4yPuGa3060837648ad4yPuG">About Municipality 
			</h5>
			</p>
		</div>
		<div class="part">
			<h5>
				<a href="http://ramallahcity.ramallah.ps/ar_category.aspx?id=BsWK2ma1027893240aBsWK2m">About Ramallah 
			</h5>
			</p>
		</div>
	</div>
	<h6>Copyright 2021 AXSOS AG</h6>
	


	</footer>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
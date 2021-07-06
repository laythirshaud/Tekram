<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
<title>Hello, world!</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<img class="navbar-brand" src="/img/logo.png" alt="Logo" width="60"
					height="60">
			</div>

			<form id="logoutForm" method="POST" action="/admin">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" /> <input type="submit" value="Back" />
			</form>
			<form id="logoutForm" method="POST" action="/logout">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" /> <input type="submit" value="Logout!" />
			</form>

		</div>
	</nav>

	<h1>Water Requests</h1>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">#ID</th>
				<th scope="col">Requester Name</th>
				<th scope="col">Request Status</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${allwater}" var="water">
				<tr>
					<td scope="row">${water.request.id}</td>
					<td><a href="/request/${water.request.id}">${water.request.user.firstname }</a></td>
					<td>${water.request.status }</td>
					
				</tr>
			</c:forEach>
			
		</tbody>
	</table>
	
	<h1>Quittance Requests</h1>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">#ID</th>
				<th scope="col">Requester Name</th>
				<th scope="col">Request Status</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${allquit}" var="quit">
				<tr>
					<td scope="row">${quit.request.id}</td>
					<td><a href="/request/${quit.request.id}">${quit.request.user.firstname }</a></td>
					<td>${quit.request.status }</td>
					
				</tr>
			</c:forEach>
			
		</tbody>
	</table>
	
		<h1>Tax Requests</h1>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">#ID</th>
				<th scope="col">Requester Name</th>
				<th scope="col">Request Status</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${alltax}" var="tax">
				<tr>
					<td scope="row">${tax.request.id}</td>
					<td><a href="/request/${tax.request.id}">${tax.request.user.firstname }</a></td>
					<td>${tax.request.status }</td>
					
				</tr>
			</c:forEach>
			
		</tbody>
	</table>
	
	
		<h1>Suggestion Requests</h1>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">#ID</th>
				<th scope="col">Requester Name</th>
				<th scope="col">Request Status</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${allsug}" var="sug">
				<tr>
					<td scope="row">${sug.request.id}</td>
					<td><a href="/request/${sug.request.id}">${sug.request.user.firstname }</a></td>
					<td>${sug.request.status }</td>
					
				</tr>
			</c:forEach>
			
		</tbody>
	</table>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
    -->
</body>
</html>
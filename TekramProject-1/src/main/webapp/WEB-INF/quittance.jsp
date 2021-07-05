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
</head>
<body>
	<div style="width: 500px; margin: auto;">
		<form:form method="POST" action="quittance/new"
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
</body>
</html>
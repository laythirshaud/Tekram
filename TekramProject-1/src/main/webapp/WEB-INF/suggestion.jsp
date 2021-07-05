<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<form:form action="/suggestion/new" method="POST"  modelAttribute="suggestion" style="width: 500px; margin: auto;">
		<div class="row">


			<div class="col">
				<div class="form-group">
					<label >First Name</label> <label  type="text"
						class="form-control is-valid">${currentUser.firstname}</label>

				</div>
			</div>
			<div class="col">
				<div class="form-group">
					<label >National ID</label> <label  type="text"
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
					<label>Address</label> <label type="text"
						class="form-control is-valid"> ${currentUser.address}</label>

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
				<div class="form-group">
					<form:label path="title">Title</form:label> 
					<form:input path="title"  type="text"
						class="form-control is-invalid" placeholder="Enter the title"/>


				</div>
			</div>


		</div>

		<div style="width: 500px;">
			<div class="form-group">
				<form:label path="description">Discription</form:label>
				<form:input path="description" type="text" rows="3" cols="8" class="form-control is-invalid" placeholder="Enter your sugistion or complaint"/>

			</div>
		</div>


		<input type="submit" class="btn btn-primary btn-lg" value="Send">

	</form:form>
</body>
</html>
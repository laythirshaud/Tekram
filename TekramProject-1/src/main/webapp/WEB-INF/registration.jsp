<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registeration</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>
<body>
<<<<<<< HEAD
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
            <form:label path="lastname">Last Name: </form:label>
            <form:input path="lastname"/>
        </p>
        <p>
            <form:label path="address">Address: </form:label>
            <form:input path="address"/>
        </p>
           <p>
            <form:label path="phonenumber">Phone Number: </form:label>
            <form:input path="phonenumber"/>
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
    
=======
	<section>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-md-8 col-lg-8 col-xl-6">
				<div class="row">
					<div class="col text-center">
						<h1>Register</h1>
					</div>
				</div>
				<div class="row align-items-center">
					<div class="col mt-4">
						<p>
							<form:errors path="user.*" />
						</p>

						<form:form method="POST" action="/registration"
							modelAttribute="user">
							<p>
								<form:label path="firstname">First Name: </form:label>
								<form:input class="form-control" path="firstname" />
							</p>
							<p>
								<form:label path="middlename">Middle Name: </form:label>
								<form:input class="form-control" path="middlename" />
							</p>
							<p>
								<form:label path="lastname">last Name: </form:label>
								<form:input class="form-control" path="lastname" />
							</p>
							<p>
								<form:label path="username">National Number: </form:label>
								<form:input class="form-control" path="username" />
							</p>
							<p>
								<form:label path="email">Email: </form:label>
								<form:input class="form-control" path="email" />
							</p>
							<p>
								<form:label path="address">Address: </form:label>
								<form:input class="form-control" path="address" />
							</p>
							<p>
								<form:label path="phonenumber">Phone Number: </form:label>
								<form:input class="form-control" path="phonenumber" />
							</p>
							<p>
								<form:label path="password">Password:</form:label>
								<form:password class="form-control" path="password" />
							</p>
							<p>
								<form:label path="passwordConfirmation">Password Confirmation:</form:label>
								<form:password class="form-control" path="passwordConfirmation" />
							</p>
							<input class="btn btn-primary mt-4" type="submit"
								value="Register" />
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
>>>>>>> a8e890cd2f949f082213779f69146de671138569
</body>
</html>
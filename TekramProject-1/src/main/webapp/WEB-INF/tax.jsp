<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form:form action="tax/new" method="POST" modelAttribute="tax" style="width: 500px; margin:auto;">
        <div class="row">
        
        
            <div class="col">
                 <div class="form-group">
                     <label for="">First Name</label>
                     <label type="text"  class="form-control is-valid"> Ahmad</label>
                     
                 </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="">National ID</label>
                    <label type="text"  class="form-control is-valid"> 8531324582</label>
                    
                </div>
           </div>
           
           
        </div>
        <div class="row">
        
        
            <div class="col">
                 <div class="form-group">
                     <label for="">Middle Name</label>
                     <label type="text"  class="form-control is-valid"> Moayyad</label>
                     
                 </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="">Phone Number</label>
                    <label type="text"  class="form-control is-valid"> 0568 000 000</label>
                    
                </div>
           </div>
           
           
        </div>
        <div class="row">
        
        
            <div class="col">
                 <div class="form-group">
                     <label for="">Last Name</label>
                     <label type="text"  class="form-control is-valid"> Albzoor</label>
                     
                 </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <form:label path="cost">Cost</form:label>
                    <form:input  path="cost" type="text"  class="form-control is-invalid"/> 
                    <small class="invalid-feedback">
                        The cost will be in NIS
                    </small>
                    
                </div>
           </div>
           
           
        </div>
        <div class="row">
        
        
            <div class="col"style="width:237px; margin:-25px 0 0 0;"   >
                 <div class="form-group">
                     <label for="">Address</label>
                     <label type="text" style="width:237px;"  class="form-control is-valid"> Ramallah</label>
                     
                 </div>
            </div>
          
           
           
        </div>
        <input type="submit" value="Send" class="btn btn-primary btn-lg">

     </form:form>
</body>
</html>
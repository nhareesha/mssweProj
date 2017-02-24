<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    
    <link rel="stylesheet" href="css/style-2.css" />
    <link rel="icon" href="media/logo.jpg">
  </head>
  <body class="body-bg">
    <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
			<ul class="nav justify-content-end">
				<li class="nav-item"><a class="nav-link active" href="#">Active</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
				</li>
			</ul>
		</nav>
    <div class="container vcenter">
    <div class="row">
 		<div class="col-sm-2"></div>
 			<div class="col-sm-8 custom-box-1">
 			<h2 class="text-center">Sign Up</h2>
 			<p class="text-muted text-center text-success">Its free, and always be.</p>
 			<hr>
    			<form:form name="register" method="POST" action="handleRegistration" modelAttribute="registerUser" onsubmit="return validate();">
				
				<div class="form-group row">
					<form:label for="fname" class="col-sm-3 col-form-label" path="fname">First Name:</form:label>
					 <div class="col-sm-9">
						<form:input type="text" class="form-control" id="fname" placeholder="First Name" path="fname" required="required"></form:input>
					</div>
				</div>
				
				
				<div class="form-group row">
					<form:label for="lname" class="col-sm-3 col-form-label" path="lname">Last Name:</form:label>
					<div class="col-sm-9">
						<form:input type="text" class="form-control" id="lname" placeholder="Last Name" path="lname" required="required"></form:input>
					</div>
				</div>
				
				<div class="form-group row">
					<form:label for="email" class="col-sm-3 col-form-label" path="email">Your Email:</form:label>
					<div class="col-sm-9">
						<form:input type="email" class="form-control" id="email" placeholder="Email" path="email" required="required"></form:input>
						<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					</div>
				</div>
				
				<div class="form-group row">
					<label for="re-email" class="col-sm-3 col-form-label">Re-enter Email:</label>
					<div class="col-sm-9">
						<input type="email" class="form-control" id="re-email" placeholder="Re enter Email" required="required"></input>
					</div>
				</div>
					
				<div class="form-group row">
					<form:label for="psw" class="col-sm-3 col-form-label" path="psw">New Password</form:label>
					<div class="col-sm-9">
						<form:input type="password" class="form-control" id="psw" placeholder="Password" path="psw" required="required"></form:input>
					</div>
				</div>
				
				
				<div class="form-group row">
     				 <div class="offset-sm-5">
       				 <button type="submit" class="btn btn-primary">Sign Up</button><span>&nbsp;&nbsp;If you are already a user, login </span>
      				</div>
    			</div>
				</form:form>
				
				<div  class="row">
					<div  class="offset-sm-3">
						<ol id="errors">
						
						</ol>
					</div>
				</div>
			</div>
		<div class="col-sm-2"></div>
	</div>
	
  </div>
    
    <script type="text/javascript">
    	function validate(){
    		document.getElementById("errors").innerHTML = "";
    		var err = new Array();
    		
    		if(document.getElementById("email").value != document.getElementById("re-email").value){
    			var listEle = document.createElement("li");
    			var node = document.createTextNode(" email and re-enter email are not matching");
    			listEle.appendChild(node);
    			document.getElementById("re-email").focus();
    			err.push(listEle);
    		}
    		
    		
    		if(err.length!=0){
    			
    			var list = document.getElementById("errors");
    			for(var i=0;i < err.length;i++){
    				list.appendChild(err[i]);
    			}
    			return false;
    		}
    		return true;
    	}
    
    </script>	
    

    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
  </body>
</html>
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
  </head>
  <body>
    <h1>Hello, world!</h1>
    
    <div class="container">
    	<div class="row">
    		<div class="col-sm-6 col-md-6">
    			<form:form method="POST" action="handleLogin" modelAttribute="loginUser">
				<div class="form-group row">
					<form:label for="uname" class="col-sm-2 col-md-3 col-form-label" path="uname">UserName</form:label>
					<div class="col-sm-4 col-md-5">
						<form:input type="text" class="form-control" id="uname" placeholder="Enter email" path="uname"></form:input>
					</div>		
				</div>
					
				<div class="form-group row">
					<form:label for="psw" class="col-sm-2 col-md-3 col-form-label" path="psw">Password</form:label>
					<div class="col-sm-4 col-md-5">
						<form:input type="password" class="form-control" id="psw" placeholder="Password" path="psw"></form:input>
					</div>
				</div>
				<div class="form-group row">
     				 <div class="offset-sm-2 col-sm-4 offset-md-3 col-md-5">
       				 <button type="submit" class="btn btn-primary">Sign in</button>
      				</div>
    			</div>
				</form:form>
    		
    		</div>
    	
    	</div>
    
    </div>
    
    
    
    

    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
  </body>
</html>
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
  </head>
  <body>
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
    		<div class="col-sm-3"></div>
    		
    		<div class="col-md-6 custom-box">
    			<form:form method="POST" action="handleLogin" modelAttribute="loginUser">
				<div class="form-group row">
					<form:label for="uname" class="col-form-label col-sm-3" path="uname">UserName</form:label>
					<div class="col-sm-9">
					<form:input type="text" class="form-control" id="uname" placeholder="Enter Username" path="uname"></form:input>
					</div>
				</div>
					
				<div class="form-group row">
					<form:label for="psw" class="col-form-label col-sm-3" path="psw">Password</form:label>
						<div class="col-sm-9">
						<form:input type="password" class="form-control" id="psw" placeholder="Password" path="psw"></form:input>
						</div>
				</div>
				<div class="form-group row">
     				 <div class="offset-sm-5">
       				 <button type="submit" class="btn btn-primary">Sign in</button>
      				</div>
    			</div>
				</form:form>
    		</div>
    		<div class="col-sm-3"></div>
    	</div>
    </div>

    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
  </body>
</html>
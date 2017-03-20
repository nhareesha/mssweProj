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
    
    <script src="js/commons.js"></script>
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
    		<div class="col-sm-3"></div>
    		
    		<div class="col-md-6 custom-box-1">
    		
	    		<div class="row">
	    			<div class="col-sm-12">
	    				<h2 class="text-center"><span><img src="media/logo.jpg" class="img-thumbnail rounded" style="width:50px;height:50px"></span>&nbsp;&nbsp;Sign In</h2>
	    				<hr>
	    				<div>&nbsp;</div>
	    				<div><button type="button" class="btn btn-success btn-sm btn-block">SIGN &nbsp;IN &nbsp;WITH &nbsp;FACEBOOK</button></div>
	    				<p class="text-center text-muted">OR</p>
	    				<p class="text-center text-primary">Sign in with your <i>MUSIC ANALYZER </i> id and password</p>
	    				<hr>
	    			</div>
	    		</div>
    			<form:form method="POST" action="handleLogin" modelAttribute="loginUser">
				<div class="form-group row">
					<form:label for="uname" class="col-form-label col-sm-3 text-center" path="uname">UserName</form:label>
					<div class="col-sm-9">
					<form:input type="text" class="form-control " id="uname" placeholder="Enter Username" path="uname"></form:input>
					</div>
				</div>
					
				<div class="form-group row">
					<form:label for="psw" class="col-form-label col-sm-3 text-center" path="psw">Password</form:label>
						<div class="col-sm-9">
						<form:input type="password" class="form-control" id="psw" placeholder="Password" path="psw"></form:input>
						</div>
				</div>
				<div class="form-group row">
     				 <div class="offset-sm-5">
       				 <button type="submit" class="btn btn-primary ">SIGN IN</button>
      				</div>
    			</div>
				</form:form>
				
				<div class="row">
					<div class="col-sm-12">
						<p class="text-danger text-center">${errorMag}</p>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<p class="text-center text-success">Don't have an account yet ? <span><a href="register" >Sign Up</a></span></p>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<p class="text-muted" style="font-size:12px">We may use your email for updates and tips on <i>Music Analyzer's</i> products and services. You can unsubscribe for free at any time in your notification preferences.</p>
						<p class="text-center" style="font-size:12px">By signing in, you agree to our <span><a href="">Terms of Use.</a></span></p>
					</div>
				</div>
				
    		</div>
    		<div class="col-sm-3"></div>
    	</div>
    </div>
		
	<script type="text/javascript">
	
	
	</script>
    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
  </body>
</html>
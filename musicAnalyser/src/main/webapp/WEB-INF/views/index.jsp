<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
	integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
	crossorigin="anonymous">

<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300" rel="stylesheet">

<%--  <spring:url value="/resources/css/style.css" var="mainCss" />
    <link rel="stylesheet" href="${maincss}"/> --%>

<link rel="stylesheet" href="css/style.css" />
<link rel="icon" href="media/logo.jpg">

<script src="js/commons.js"></script>

</head>
<body class="body-bg">
	<div class="pattern-overlay">
		<video id="bgp" src="media/bg.mp4" loop autoplay="autoplay"
			poster="/media/bg-pic.jpg"></video>
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
		

		<div class="container" id="body-content">
			
			<div class="row">
				<div class="col-md-12 vcenter" >
					 <h1 id="lead-txt">Music Analyser and more</h1>
					<h3>Any text goes here..</h3>
				</div>

				<div class="col-md-12 vcenter">
					<button type="button" class="btn btn-success btn-lg" id="login" onclick="return login_onclick()">Login</button>
					<button type="button" class="btn btn-primary btn-lg" id="register" onclick="reg_onclick('register')">Register</button>
				</div>
				
			</div>
		</div>

	</div>
	
	

	<!-- jQuery first, then Tether, then Bootstrap JS. -->
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"
		integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
		integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
		integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"
		crossorigin="anonymous"></script>
</body>
</html>
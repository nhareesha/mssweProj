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
	Hi we are in dash board : ${successMsg}	
	
    <div class="container">
    	<div class="row">
    		<div class="col-sm-12">
    		
	    		<!-- container for single song -->
	    		<div class="container-fluild">
	    			<!-- song heading -->
	    			<div class="row">
	    				<div class="col-sm-12">
	    					<h2>"Track1" - click play</h2>
	    					<hr>
	    				</div>
	    			</div>
	    			<!-- song picture And Player -->
	    			<div class="row">
	    				<!-- for song cover -->
	    				<div class="col-sm-3 col-xs-12 col-xs-no-pad-r col-no-pad-l">
	    					Song cover goes here
	    				</div>
	    				<!-- for song player -->
	    				<div class="col-sm-9 col-xs-12 col-no-pad-l">
	    					player goes here
	    					<button class="btn-success" id="music">Play</button>
	    				</div>
	    			</div>
	    		</div>
	    		
    		</div>
    	</div>
    </div>
    
	<script type="text/javascript">
		document.getElementById("music").onclick = function(){
		console.log("audio function");
		var audio = new Audio('music/track1.wav');
		audio.play();
	};
	</script>
    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
  </body>
</html>
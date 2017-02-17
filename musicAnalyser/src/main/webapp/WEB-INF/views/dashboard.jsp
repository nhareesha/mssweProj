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
    		<h2 class="text-center">Top ten songs</h2>
    		<hr>
	    		<!-- container for single song -->
	    		<div class="container-fluid">
	    			<!-- 1st row Top songs -->
	    			<div class="row">
	    				<!-- 1st song -->
	    				<div class="col-sm-1"></div>
	    				<div class="col-sm-2">
	    					<h6 class="text-center">"Track1"-click play</h6>
	    					<div class="text-center" style="position:relative;">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude" onmouseover="javascript:playSprite();">
								<button class="btn-success rounded" >Play</button>
							</div>
	    				</div>
	    				<!-- 2ns song -->
	    				<div class="col-sm-2">
	    					<h6 class="text-center">"Track2"-click play</h6>
	    					<div class="text-center">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude">
							</div>
							
	    				</div>
	    				<!-- 3rd song -->
	    				<div class="col-sm-2">
	    					<h6 class="text-center">"Track3"-click play</h6>
	    					<div class="text-center">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude">
							</div><div class="text-center">
								<button class="btn-success rounded" id="music">Play</button>
							</div>
	    				</div>
	    				<!-- 4th song -->
	    				<div class="col-sm-2">
	    					<h6 class="text-center">"Track4"-click play</h6>
	    					<div class="text-center">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude">
							</div>
							<div class="text-center">
								<button class="btn-success rounded">Play</button>
							</div>
	    				</div>
	    				
	    				<!-- 5th song -->
	    				<div class="col-sm-2">
	    					<h6 class="text-center">"Track5"-click play</h6>
	    					<div class="text-center">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude">
							</div>
							<div class="text-center">
								<button class="btn-success rounded">Play</button>
							</div>
	    				</div>
	    				<div class="col-sm-1"></div>
	    			</div>
	    			
	    			<!-- 2nd row Top songs -->
	    			<div class="row">
	    				<!-- 1st song -->
	    				<div class="col-sm-1"></div>
	    				<div class="col-sm-2">
	    					<h6 class="text-center">"Track1"-click play</h6>
	    					<div class="text-center">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude">
							</div>
							<div class="text-center">
								<button class="btn-success rounded">Play</button>
							</div>
	    				</div>
	    				<!-- 2ns song -->
	    				<div class="col-sm-2">
	    					<h6 class="text-center">"Track2"-click play</h6>
	    					<div class="text-center">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude">
							</div>
							<div class="text-center">
								<button class="btn-success rounded">Play</button>
							</div>
	    				</div>
	    				<!-- 3rd song -->
	    				<div class="col-sm-2">
	    					<h6 class="text-center">"Track3"-click play</h6>
	    					<div class="text-center">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude">
							</div><div class="text-center">
								<button class="btn-success rounded" id="music">Play</button>
							</div>
	    				</div>
	    				<!-- 4th song -->
	    				<div class="col-sm-2">
	    					<h6 class="text-center">"Track4"-click play</h6>
	    					<div class="text-center">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude">
							</div>
							<div class="text-center">
								<button class="btn-success rounded">Play</button>
							</div>
	    				</div>
	    				
	    				<!-- 5th song -->
	    				<div class="col-sm-2">
	    					<h6 class="text-center">"Track5"-click play</h6>
	    					<div class="text-center">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude">
							</div>
							<div class="text-center">
								<button class="btn-success rounded">Play</button>
							</div>
	    				</div>
	    				<div class="col-sm-1"></div>
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
	
	function playSprite(){
		console.log("hi");
	}
	
	</script>
    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
  </body>
</html>



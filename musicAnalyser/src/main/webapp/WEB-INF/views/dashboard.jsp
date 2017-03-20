<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
	
    <div class="container-fluid">
    <!-- Welcomemessage -->
    <div class="row">
    	<div class="col-sm-12 col-md-12" style="padding-top:30px;padding-bottom:30px;">
    		<p class="text-center"> Hi ${successMsg}.Welcome to Music Analyser ! </p>
    	</div>
    </div>
    <!-- Top ten songs -->
    	<div class="row">
    		<div class="col-sm-12 col-md-12">
    		<h2 class="text-center">Top Ten Songs</h2>
    	
	    		<!-- container for single song -->
	    		<div class="container">
	    			<hr>
	    			<!-- 1st row Top songs -->
	    			<div class="row" style="padding-bottom:70px">
	    			
	    				<!-- 1st song -->
	    				<div class="col-sm-1 col-md-1"></div>
	    				<div class="col-sm-2 col-md-2">
	    					<h6 id="test" class="text-center">Track1</h6> <!--is to test similar links concept  -->
	    					<div class="text-center img-container">
  								<a href="visualiseSong?catg=Top&tp=1" target="_blank"><img src="posters/Track1.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp1');" onmouseout="javascript:hideOverLay('tp1');">
								<button id="tp1" class="btn-success rounded btn-overlay">Play</button></a>
								<h6><spring:message code='top.Track1'/></h6>
							</div>
	    				</div>
	    				<!-- 2ns song -->
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">Track2</h6>
	    					<div class="text-center img-container">
  								<a href="visualiseSong?catg=Top&tp=2" target="_blank"><img src="posters/Track2.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp2');" onmouseout="javascript:hideOverLay('tp2');">
								<button id="tp2" class="btn-success rounded btn-overlay">Play</button></a>
								<h6><spring:message code='top.Track2'/></h6>
							</div>
							
	    				</div>
	    				<!-- 3rd song -->
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">Track3</h6>
	    					<div class="text-center img-container">
  								<a href="visualiseSong?catg=Top&tp=3" target="_blank"><img src="posters/Track3.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp3');" onmouseout="javascript:hideOverLay('tp3');">
								<button id="tp3" class="btn-success rounded btn-overlay">Play</button></a>
								<h6><spring:message code='top.Track3'/></h6>
							</div>
	    				</div>
	    				<!-- 4th song -->
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">Track4</h6>
	    					<div class="text-center img-container">
  								<a href="visualiseSong?catg=Top&tp=4" target="_blank"><img src="posters/Track4.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp4');" onmouseout="javascript:hideOverLay('tp4');">
								<button id="tp4" class="btn-success rounded btn-overlay">Play</button></a>
								<h6><spring:message code='top.Track4'/></h6>
							</div>
	    				</div>
	    				
	    				<!-- 5th song -->
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">Track5</h6>
	    					<div class="text-center img-container">
  								<a href="visualiseSong?catg=Top&tp=5" target="_blank"><img src="posters/Track5.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp5');" onmouseout="javascript:hideOverLay('tp5');">
								<button id="tp5" class="btn-success rounded btn-overlay">Play</button></a>
								<h6><spring:message code='top.Track5'/></h6>
							</div>
	    				</div>
	    				<div class="col-sm-1 col-md-1"></div>
	    			</div>
	    			
	    			<!-- 2nd row Top songs -->
	    			<div class="row" style="padding-bottom:120px">
	    				<!-- 1st song -->
	    				<div class="col-sm-1 col-md-1"></div>
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">Track6</h6>
	    					<div class="text-center img-container">
  								<a href="visualiseSong?catg=Top&tp=6" target="_blank"><img src="posters/Track6.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp6');" onmouseout="javascript:hideOverLay('tp6');">
								<button id="tp6" class="btn-success rounded btn-overlay">Play</button>
								<h6><spring:message code='top.Track6'/></h6></a>
							</div>
	    				</div>
	    				<!-- 2ns song -->
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">Track7</h6>
	    					<div class="text-center img-container">
  								<a href="visualiseSong?catg=Top&tp=7" target="_blank"><img src="posters/Track7.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp7');" onmouseout="javascript:hideOverLay('tp7');">
								<button id="tp7" class="btn-success rounded btn-overlay">Play</button></a>
								<h6><spring:message code='top.Track7'/></h6>
							</div>
	    				</div>
	    				<!-- 3rd song -->
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">Track8</h6>
	    					<div class="text-center img-container">
  								<a href="visualiseSong?catg=Top&tp=8" target="_blank"><img src="posters/Track8.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp8');" onmouseout="javascript:hideOverLay('tp8');">
								<button id="tp8" class="btn-success rounded btn-overlay">Play</button></a>
								<h6><spring:message code='top.Track8'/></h6>
							</div>
	    				</div>
	    				<!-- 4th song -->
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">Track9</h6>
	    					<div class="text-center img-container">
  								<a href="visualiseSong?catg=Top&tp=9" target="_blank"><img src="posters/Track9.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp9');" onmouseout="javascript:hideOverLay('tp9');">
								<button id="tp9" class="btn-success rounded btn-overlay">Play</button></a>
								<h6><spring:message code='top.Track9'/></h6>
							</div>
	    				</div>
	    				
	    				<!-- 5th song -->
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">Track10</h6>
	    					<div class="text-center img-container">
  							<a href="visualiseSong?catg=Top&tp=10" target="_blank">	<img src="posters/Track10.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp10');" onmouseout="javascript:hideOverLay('tp10');">
								<button id="tp10" class="btn-success rounded btn-overlay">Play</button></a>
								<h6><spring:message code='top.Track10'/></h6>
							</div>
	    				</div>
	    				<div class="col-sm-1 col-md-1"></div>
	    			</div>
	    		</div>
    		</div>
    	</div>
    </div>
    
    <div class="container-fluid grey-bg" style="padding-top:70px">
    	<div class="row">
    		<div class="col-sm-12 col-md-12">
    			<div class="container" >
						    	<!--New songs section  -->
						    	<div class="row" >
						    		<div class="col-sm-8 col-md-8">
						    			<h2>New Songs</h2>
						    		</div>
						    		<div class="col-sm-4 col-md-4">
						    			<h2 class="text-right">All Songs &rsaquo;</h2>
						    		</div>	
						    	</div>
						    	<hr style="padding-bottom:20px">
						    	<!-- row to display new songs - poster and overlay -->
						    	<div class="row-fluid" style="overflow:auto">
						    		<!-- overflow-x scroll -->
							    			<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    				<img src="posters/New1.jpg" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw1');" onmouseout="javascript:hideOverLay('nw1');">
			  											<p class="text-center"><spring:message code='new.Track1'/></p>
			  											<button id="nw1" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
								    		<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    				<img src="posters/New2.jpg" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw2');" onmouseout="javascript:hideOverLay('nw2');">
			  											<p class="text-center"><spring:message code='new.Track2'/></p>
			  											<button id="nw2" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
								    		
								    		<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    				<img src="posters/New3.jpg" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw3');" onmouseout="javascript:hideOverLay('nw3');">
			  											<p class="text-center"><spring:message code='new.Track3'/></p>
			  											<button id="nw3" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
								    		
								    		<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    				<img src="posters/New4.jpg" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw4');" onmouseout="javascript:hideOverLay('nw4');">
			  											<p class="text-center"><spring:message code='new.Track4'/></p>
			  											<button id="nw4" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
								    		
								    		<div class="col-sm-2 col-md-2 ">
									    			<div class="img-container">
									    				<img src="posters/New5.jpg" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw5');" onmouseout="javascript:hideOverLay('nw5');">
			  											<p class="text-center"><spring:message code='new.Track5'/></p>
			  											<button id="nw5" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
								    		<div class="col-sm-2 col-md-2 ">
									    			<div class="img-container">
									    				<img src="posters/New6.jpg" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw6');" onmouseout="javascript:hideOverLay('nw6');">
			  											<p class="text-center"><spring:message code='new.Track6'/></p>
			  											<button id="nw6" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
								    		
								    		<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    				<img src="posters/New7.jpg" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw7');" onmouseout="javascript:hideOverLay('nw7');">
			  											<p class="text-center"><spring:message code='new.Track7'/></p>
			  											<button id="nw7" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
								    		
								    		<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    				<img src="posters/New8.png" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw8');" onmouseout="javascript:hideOverLay('nw8');">
			  											<p class="text-center"><spring:message code='new.Track8'/></p>
			  											<button id="nw8" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
								    		
								    			<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    				<img src="posters/New9.jpg" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw9');" onmouseout="javascript:hideOverLay('nw9');">
			  											<p class="text-center"><spring:message code='new.Track9'/></p>
			  											<button id="nw9" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
								    		
								    			<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    				<img src="posters/New10.jpg" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw10');" onmouseout="javascript:hideOverLay('nw10');">
			  											<p class="text-center"><spring:message code='new.Track10'/></p>
			  											<button id="nw10" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
						    		</div>
				</div>	 
			</div>
    	</div>
    </div>
    
    <!-- ----------------------------------------------------------------------------- -->
	
	<script src="js/similarSongs.js"></script>
    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
  </body>
</html>



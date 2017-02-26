<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	    					<h6 id="test" class="text-center">"Track1"</h6> <!--is to test similar links concept  -->
	    					<div class="text-center img-container">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp1');" onmouseout="javascript:hideOverLay('tp1');">
								<button id="tp1" class="btn-success rounded btn-overlay">Play</button>
							</div>
	    				</div>
	    				<!-- 2ns song -->
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">"Track2"</h6>
	    					<div class="text-center img-container">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp2');" onmouseout="javascript:hideOverLay('tp2');">
								<button id="tp2" class="btn-success rounded btn-overlay">Play</button>
							</div>
							
	    				</div>
	    				<!-- 3rd song -->
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">"Track3"</h6>
	    					<div class="text-center img-container">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp3');" onmouseout="javascript:hideOverLay('tp3');">
								<button id="tp3" class="btn-success rounded btn-overlay">Play</button>
							</div>
	    				</div>
	    				<!-- 4th song -->
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">"Track4"</h6>
	    					<div class="text-center img-container">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp4');" onmouseout="javascript:hideOverLay('tp4');">
								<button id="tp4" class="btn-success rounded btn-overlay">Play</button>
							</div>
	    				</div>
	    				
	    				<!-- 5th song -->
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">"Track5"</h6>
	    					<div class="text-center img-container">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp5');" onmouseout="javascript:hideOverLay('tp5');">
								<button id="tp5" class="btn-success rounded btn-overlay">Play</button>
							</div>
	    				</div>
	    				<div class="col-sm-1 col-md-1"></div>
	    			</div>
	    			
	    			<!-- 2nd row Top songs -->
	    			<div class="row" style="padding-bottom:120px">
	    				<!-- 1st song -->
	    				<div class="col-sm-1 col-md-1"></div>
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">"Track1"</h6>
	    					<div class="text-center img-container">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp6');" onmouseout="javascript:hideOverLay('tp6');">
								<button id="tp6" class="btn-success rounded btn-overlay">Play</button>
							</div>
	    				</div>
	    				<!-- 2ns song -->
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">"Track2"</h6>
	    					<div class="text-center img-container">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp7');" onmouseout="javascript:hideOverLay('tp7');">
								<button id="tp7" class="btn-success rounded btn-overlay">Play</button>
							</div>
	    				</div>
	    				<!-- 3rd song -->
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">"Track3"</h6>
	    					<div class="text-center img-container">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp8');" onmouseout="javascript:hideOverLay('tp8');">
								<button id="tp8" class="btn-success rounded btn-overlay">Play</button>
							</div>
	    				</div>
	    				<!-- 4th song -->
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">"Track4"</h6>
	    					<div class="text-center img-container">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp9');" onmouseout="javascript:hideOverLay('tp9');">
								<button id="tp9" class="btn-success rounded btn-overlay">Play</button>
							</div>
	    				</div>
	    				
	    				<!-- 5th song -->
	    				<div class="col-sm-2 col-md-2">
	    					<h6 class="text-center">"Track5"</h6>
	    					<div class="text-center img-container">
  								<img src="posters/hey-jude.jpg" class="rounded img-fluid" alt="hey-jude" 
  								onmouseover="javascript:showOverLay('tp10');" onmouseout="javascript:hideOverLay('tp10');">
								<button id="tp10" class="btn-success rounded btn-overlay">Play</button>
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
									    				<img src="posters/shake-it-off.jpg" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw1');" onmouseout="javascript:hideOverLay('nw1');">
			  											<p class="text-center">Title</p>
			  											<button id="nw1" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
								    		<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    				<img src="posters/shake-it-off.jpg" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw2');" onmouseout="javascript:hideOverLay('nw2');">
			  											<p class="text-center">Title</p>
			  											<button id="nw2" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
								    		
								    		<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    				<img src="posters/shake-it-off.jpg" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw3');" onmouseout="javascript:hideOverLay('nw3');">
			  											<p class="text-center">Title</p>
			  											<button id="nw3" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
								    		
								    		<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    				<img src="posters/shake-it-off.jpg" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw4');" onmouseout="javascript:hideOverLay('nw4');">
			  											<p class="text-center">Title</p>
			  											<button id="nw4" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
								    		
								    		<div class="col-sm-2 col-md-2 ">
									    			<div class="img-container">
									    				<img src="posters/shake-it-off.jpg" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw5');" onmouseout="javascript:hideOverLay('nw5');">
			  											<p class="text-center">Title</p>
			  											<button id="nw5" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
								    		<div class="col-sm-2 col-md-2 ">
									    			<div class="img-container">
									    				<img src="posters/shake-it-off.jpg" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw6');" onmouseout="javascript:hideOverLay('nw6');">
			  											<p class="text-center">Title</p>
			  											<button id="nw6" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
								    		
								    		<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    				<img src="posters/shake-it-off.jpg" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw7');" onmouseout="javascript:hideOverLay('nw7');">
			  											<p class="text-center">Title</p>
			  											<button id="nw7" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
								    		
								    		<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    				<img src="posters/shake-it-off.jpg" class="rounded img-fluid" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw8');" onmouseout="javascript:hideOverLay('nw8');">
			  											<p class="text-center">Title</p>
			  											<button id="nw8" class="btn-success rounded btn-overlay">Play</button>
									    			</div>
								    		</div>
						    		</div>
				</div>	 
			</div>
    	</div>
    </div>
    
    <!-- ----------------------------------------------------------------------------- -->
	<div class="container" style="padding-top:70px">
	<!-- SimilarSongButton -->
		<div class="row">
			<div class="col-sm-12">
				<form:form method="post" action="similarSongs" modelAttribute="songDetails" name="theForm">
					<form:hidden path="track" id="hidden"/>
					<button type="submit" class="btn btn-success btn-lg" id="similar" onclick="return addDetails()">click here similar songs</button> 
					<!--  <input type="submit" value="Similar Songs" onclick="javascript:addDetails()"/>-->	
				</form:form>
			</div>
		</div>
		
		<div class="row">
			<div class="col-sm-12 col-md-12">
				<div class="container">
					<div class="row">
						<!-- Current song -->
						<div class="col-sm-2 col-md-2" id="currentSong">
							<p>Current Song : ${currentSong}</p>
							<img src="posters/${currentSong.songName}.jpg" class="rounded img-fluid" alt="${currentSong.songName}" 
			  											onmouseover="javascript:showOverLay('cs1');" onmouseout="javascript:hideOverLay('cs1');">
			  				<p class="text-center"><b>${currentSong.songName}</b></p>
						</div>
						<div class="col-sm-4 col-md-4"></div>
						<!-- Similar song list -->
						<div class="col-sm-2 col-md-2" id="similarSongs">
							<p>Song List Object : ${smlrsongList}</p>
							<c:forEach items="${smlrsongList}" var="song">
								<div>
									<img src="posters/${song.songName}.jpg" class="rounded img-fluid" alt="${song.songName}" 
			  											onmouseover="javascript:showOverLay('cs1');" onmouseout="javascript:hideOverLay('cs1');">
									<p class="text-center"><b>${song.songName}</b></p>
								</div>
        					</c:forEach>
						</div>
						<div class="col-sm-2 col-md-2"></div>
						<div class="col-sm-2 col-md-2"></div>
					</div>
				</div>
			</div>
		</div>
		
		
		<!-- ----------------------------------------------------------- -->
		<%-- <div class="row">
			<div class="col-sm-12">
			<p>Song List Object : ${smlrsongList}</p>
				<table>
       				 <c:forEach items="${smlrsongList}" var="song">
           			 <tr>
               		 	<td>${song.songName}</td>
               		 	<td>${song.pattern}</td>
               		 	<td>${song.track}</td>
            		</tr>
        			</c:forEach>
    			</table>
				
				<hr>
			<p>Current Song : ${currentSong}</p>
			<table>
           			 <tr>
               		 	<td>${currentSong.songName}</td>
               		 	<td>${currentSong.pattern}</td>
               		 	<td>${currentSong.track}</td>
            		</tr>
    			</table>
					
			<p>Message : ${listEmpty}</p>
			</div>
		</div>
		 --%>
		
	</div>
	
	
	
	<script type="text/javascript">
		/* document.getElementById("music").onclick = function(){
		console.log("audio function");
		var audio = new Audio('music/track1.wav');
		audio.play();
	}; */
	
	function showOverLay(bn){
		var btn = document.getElementById(bn);
		btn.style.left="40%";
		btn.style.top="40%";
		btn.style.zIndex = "1";
	}
	
	function hideOverLay(bn){
		var btn = document.getElementById(bn);
		btn.style.left="0";
		btn.style.top="0";
		btn.style.zIndex="-1";
	}
	
	function addDetails(){
		var songName = document.getElementById("test").innerHTML; // this gets the song name from the heading
		console.log(songName);
		document.getElementById("hidden").value = songName;
		document.theForm.submit();
	}
	
	function onload(){
		var data = document.getElementById("currentSong").innerHTML;
		if(data==null){
			document.getElementById("currentSong").style.display = "hidden";
		}
	}
	
	</script>
    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
  </body>
</html>



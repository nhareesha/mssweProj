<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Music Visualizer</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
	integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
	crossorigin="anonymous">
<link rel="icon" href="media/logo.jpg">
<link rel="stylesheet" href="css/style-2.css" />
<link rel="stylesheet" href="css/style_m.css" />
<script src="js/similarSongs.js"></script>


</head>
<body class="body-bg">
	<jsp:include page='navigation.jsp'><jsp:param name="nav" value="" /></jsp:include>
	
	<!-- Bootstrap Remade -->
	<div class="container" style="margin-top:70px;background-color:#C6E2FF;border-radius:40px;">
	<!-- This row is to display the image and Track name -->
		<div class="row">
			<!-- This col display image and track name -->
			<div class="col-sm-12">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-4 " style="margin-top:70px;">
							<img src="${imgsrc}" alt="track playing" class="rounded img-responsive" style="margin:0 auto;width:200px;height:200px">
						</div>
						<div class="col-sm-4" style="padding-top:100px">
							<h4 class="text-center">Now Playing</h4>
							<h3 class="text-center" id="test">Track${number}</h3>
							<h3 class="text-center">From Album &nbsp; <i><spring:message code='top.Track${number}'/></i></h3>  
						</div>
				
						<!-- similar songs link -->
						<div class="col-sm-4" style="margin-top:100px;">
							<h4 class="text-center">Please use the below link of the similar songs</h4>
							<a href="" onclick="addDetails()">similarSongs</a>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<!-- Row 2 displays the equalizer and iframe  -->
		<div class="row">
			<div class="col-sm-8">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-12">
							<div style='margin:0 auto;' class="text-center"><canvas id="equaliser"></canvas></div>
							<div class="text-center" id="audioframe"></div>
							<div style="background:#C6E2FF;">
									<iframe id="iFrame" src="${chordsrc}" style="border:none;width:600px;height:100px;"></iframe>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-4"></div>
		</div>
		
	
	</div>
	
	
<script>

	var audio = new Audio();
	audio.src = "${songsrc}";
	audio.controls = "true";
	audio.loop = "true";
	audio.autoplay = "true";

	audio.onpause = function() {
		var e = document.getElementById("iFrame");
		e.style.visibility = 'hidden';
	};

	audio.onplay = function() {
		var e = document.getElementById("iFrame");
		e.style.visibility = 'visible';
	};

	var analyser, canvas, ctx, context, source, fbc_array, bars, bar_x, bar_width, bar_height;

	window.addEventListener("load", audioPlayer, false);

	function audioPlayer() {
		document.getElementById('audioframe').appendChild(audio);
		context = new AudioContext();
		analyser = context.createAnalyser();
		canvas = document.getElementById('equaliser');
		ctx = canvas.getContext('2d');
		source = context.createMediaElementSource(audio);
		source.connect(analyser);
		analyser.connect(context.destination);
		visualiser();
	}

	function visualiser() {

		requestAnimationFrame(visualiser);
		fbc_array = new Uint8Array(analyser.frequencyBinCount);
		analyser.getByteFrequencyData(fbc_array);
		ctx.clearRect(0, 0, canvas.width, canvas.height);

		//ctx.fillStyle = '#00FF00';
		ctx.fillStyle = '#FF00FF';
		bars = 100;
		for (var i = 0; i < bars; i++) {
			bar_x = i * 3;
			bar_width = 2;
			bar_height = -(fbc_array[i] / 2);

			ctx.fillRect(bar_x, canvas.height, bar_width, bar_height);
			ctx.strokeRect(bar_x, canvas.height, bar_width, bar_height);

		}

	}
	
	
</script>

	
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
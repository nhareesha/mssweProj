var analyser,canvas,ctx;

window.onload = function(){
	canvas= document.createElement('canvas');
	canvas.width= window.innerWidth;
	canvas.height= window.innerHeight;
	document.body.appendChild(canvas);
	ctx = canvas.getContext('2d');
	testbrowser();
	setupWebAudio();
	draw();
};
 
function setupWebAudio(){

	//var audio = document.createElement('audio');
	var audio = new Audio();
	audio.src = 'Bulleya.mp3';
	audio.controls = 'true';
	document.body.appendChild(audio);
	audio.style.width = window.innerWidth + 'px';
	var audioContext = new AudioContext();
	analyser = audioContext.createAnalyser();
	var source = audioContext.createMediaElementSource(audio);
	
	source.connect(analyser);
	analyser.connect(audioContext.destination);
	audio.play();	
}

function draw(){
	requestAnimationFrame(draw);
	var freqByteData = new Uint8Array(analyser.frequencyBinCount);
	analyser.getByteFrequencyData(freqByteData);
	ctx.clearRect(0, 0, canvas.width, canvas.height );
	for (var i = 1; i < freqByteData.lenght; i+= 10){
		var random = Math.random,
		red = random() + 255 >>0,
		green = random() + 255 >>0,
		blue = random() + 255 >>0;
		 
		 ctx.fillStyle = 'rgb(' + red + ',' + green + ',' + blue + ')';
		 //ctx.fillStyle = 'rgb(0,0,0)';
		 ctx.fillRect(i, canvas.height - freqByteData[i],10,canvas.height );
		 ctx.strokeRect(i, canvas.height - freqByteData[i],10,canvas.height );
		 
	}
}	
	

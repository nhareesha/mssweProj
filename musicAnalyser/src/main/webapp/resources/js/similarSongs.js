/*function addDetails() {
	var trackName = document.getElementById("test").innerHTML; // this gets the song name from the heading
	console.log(trackName);
	document.getElementById("hidden").value = trackName;
	document.theForm.submit();
}*/

function addDetails() {
	var trackName = document.getElementById("test").innerHTML; // this gets the song name from the heading
	console.log(trackName);
	var path = 'similarSongsLink?track=' + trackName;
	window.open(path, 'popup', 'width=600,height=600,left=200');
	return false;
}

function closeWin() {
    this.close();   // Closes the new window
}

function onload() {
	var data = document.getElementById("currentSong").innerHTML;
	if (data == null) {
		document.getElementById("currentSong").style.display = "hidden";
	}
}

function showOverLay(bn) {
	var btn = document.getElementById(bn);
	btn.style.left = "40%";
	btn.style.top = "40%";
	btn.style.zIndex = "1";
}

function hideOverLay(bn) {
	var btn = document.getElementById(bn);
	btn.style.left = "0";
	btn.style.top = "0";
	btn.style.zIndex = "-1";
}
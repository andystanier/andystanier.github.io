$(document).ready(function(){
	
	var artistNum = $('#artists li').length.toString();
	$('#artistCount').html(artistNum);
	
	var trackNum = $('#tracks li').length.toString();
	$('#trackCount').html(trackNum);
	
	var albumNum = $('#albums li').length.toString();
	$('#albumCount').html(albumNum);
	
	var kpNum = $('#kpList li').length.toString();
	$('#kpCount').html(kpNum);
	
	var tsNum = $('#tsList li').length.toString();
	$('#tsCount').html(tsNum);
	
	var egNum = $('#egList li').length.toString();
	$('#egCount').html(egNum);
	
});
	

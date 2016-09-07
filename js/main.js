$(document).ready(function(){
	
	// to change which tab you're looking at
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	});

	// When there's an internal link, go to that tab
	$('.intLink').click(function(){
		var fromTab = $('.tab-content.current').attr('id');
		var toTab = $(this).attr('data-tab');

		$('#'+fromTab).removeClass('current');
		$('#'+fromTab+'Tab').removeClass('current');

		$('#'+toTab).addClass('current');
		$('#'+toTab+'Tab').addClass('current');
	});
	
	// shows some info about the think you're mousing over
	$('td').mouseenter(function(){
		var tableId = $(this).attr('id');  //java
		var textLabel = tableId+"Text"; //javaText
		var html = $('#'+textLabel).html();
		$('.explainText').html(html);
	});



	//Details page
	$('#personalStatement').html(cvData.personalStatement);
	//Skills page
	$('#skillsText').html(cvData.skillsText);
	$('#transferSkills').html(cvData.transferSkills);
	//Experience
	$('#molplexExpBody').html(cvData.molplexExpBody);
	$('#betweenChemJobsExpBody').html(cvData.betweenChemJobsExpBody);
	$('#eisaiExpBody').html(cvData.eisaiExpBody);
	$('#charnwoodExpBody').html(cvData.charnwoodExpBody);
	$('#alderleyExpBody').html(cvData.alderleyExpBody);
	//Education
	$('#uohEd').html(cvData.uohEd);
	$('#uoyEd').html(cvData.uoyEd);
	$('#tythEd').html(cvData.tythEd);
	//Projects
	$('#oscarProj').html(cvData.oscarProj);
	$('#musicProj').html(cvData.musicProj);
	$('#rodentProj').html(cvData.rodentProj);
	$('#evoteProj').html(cvData.evoteProj);
	$('#votewsProj').html(cvData.votewsProj);
	$('#yahtzeeProj').html(cvData.yahtzeeProj);

});


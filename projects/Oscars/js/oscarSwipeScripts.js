//http://www.java2s.com/Tutorials/jQuery_Mobile/Example/Page/Swipe_left_to_go_to_next_page.htm
//http://api.jquerymobile.com/jquery.mobile.changepage/
//https://api.jquerymobile.com/swipeleft/


$(document).on("swipeleft", function(){
	var yearId = localStorage.getItem("yearId");
	if(yearId == 87)
	{
		alert("You have reached the end");
	}
	else
	{
		// update the yearId and reload the page with new data
		localStorage.setItem("yearId", Number(yearId)+1);
		$.mobile.changePage("years.html" ,{
				allowSamePageTransition: true,
				reloadPage : true,
				transition : 'slide',
			});
		location.reload();
	}
});

$(document).on("swiperight", function(){
	var yearId = localStorage.getItem("yearId");
	if(yearId == 0)
	{
		alert("You have reached the start");
	}
	else
	{
		// update the yearId and reload the page with new data
		localStorage.setItem("yearId", Number(yearId)-1);
		$.mobile.changePage("years.html" ,{
				allowSamePageTransition: true,
				reloadPage : true,
				transition : 'slide',
				reverse : true,
			});
		location.reload();
	}
});

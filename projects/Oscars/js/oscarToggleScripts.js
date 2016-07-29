function myToggleYear()
{ 
	//http://stackoverflow.com/questions/22238099/jqm-event-for-flipswitch-and-how-to-get-the-value
	var yearId = localStorage.getItem("yearId");
	var switchId = "#seenSwitch"+(Number(yearId)+1928);
	
	// if switchId is checked return 1, otherwise 0
	var a = $(switchId).prop("checked") ? 1 : 0;
	
	// create local storage with value of a
	var LSswId = "sw"+(Number(yearId)+1928);
	localStorage.setItem(LSswId, a);
	
	alterStorage(a);
	alterProgBar();
}
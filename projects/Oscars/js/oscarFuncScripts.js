var max = 88;	
var percent;	// the percentage of checkboxes checked
var value;	 // the number of checkboxes that are checked


function alterProgBar() 
{
	//http://html5doctor.com/the-progress-element/
	//http://stackoverflow.com/questions/7803784/using-jquery-with-html5-progress-bar
	//W3Schools.com
	
	// calculate how far complete
	value = Number(localStorage.value);
	percent = Math.floor((value / max) * 100);
	
	// update the html accordingly
	$("#progPC").html(percent);
	$("#progress").val(value);
}

function clearProg() 
{
	//http://stackoverflow.com/questions/5229023/jquery-check-uncheck-all-checkboxes-with-a-button
	//http://stackoverflow.com/questions/5404839/how-can-i-refresh-a-page-with-jquery
	//http://stackoverflow.com/questions/12531324/javascript-or-jquery-are-you-sure-dialog-for-a-link
	
	var input = window.confirm("This will clear your progress. Are you sure?");
	if (input == 1)
	{
		// set number checked to zero
		localStorage.setItem("checked", "0");
		alterProgBar();
		
		// for each switch item in storage, set to zero
		for(var i = 0; i < max; i++)
		{
			var yearStr = "sw"+(i+1928);
			var yearCode = localStorage.getItem(yearStr);
			if(yearCode != 0)
			{	
				localStorage.setItem(yearStr, "0");
			}
		}
		location.reload();
		
	}
	else
	{
		return;
	}
}

function alterStorage(val)
{
	if (val == 1)
	{
		// if toggled to on, add one to number checked
		localStorage.checked = Number(localStorage.checked) + 1;
		localStorage.value = Number(localStorage.checked);
		value = Number(localStorage.value);
		// update percentage
		percent = Math.floor((value / max) * 100);
	}
	else
	{
		// if toggled to on, subtract one from number checked
		localStorage.checked = Number(localStorage.checked) - 1;
		localStorage.value = Number(localStorage.checked);
		value = Number(localStorage.value);
		// update percentage
		percent = Math.floor((value / max) * 100);
	}
}


//W3Schools.com
if (localStorage.checked)
{
	var LSchecked = localStorage.getItem("checked");
	localStorage.setItem("value", LSchecked);
	
	$(document).on("pagecreate","#home",alterProgBar);	
}
else 
{
	localStorage.setItem("checked", "0");		
}	

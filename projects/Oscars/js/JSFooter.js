//W3Schools
$(document).ready(myFooter());
$(document).ready(getId());

function myFooter() 
{
	$out = $(
				'<div data-role="footer" data-position="fixed" data-tap-toggle="false">'+
				'<!-- http://stackoverflow.com/questions/11827622/data-position-fixed-doesnt-work-using-jquery-mobile  -->'+
				'    <div data-role="navbar">'+
				'        <ul>'+
				'            <li><a href="#" data-rel="back" data-icon="arrow-l" ></a></li>'+
				'            <li><a href="home.html" rel="external" data-role="button" data-icon="home"></a></li>'+
				'            <li><a href="info.html" rel="external" data-icon="info"></a></li>'+
				'        </ul>'+
				'    </div>'+
				'</div>');
	
	$('.footer').html($out);
}

function getId()
{
	// store the id of the link into storage.
	$('.yearLink').click(function(){
		localStorage.setItem("yearId", this.id);
	});
}
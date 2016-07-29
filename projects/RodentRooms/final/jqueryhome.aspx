<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jqueryhome.aspx.cs" Inherits="WebScriptingStartup.jqueryhome2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
    <title>jQuery Experiments</title>
    <!-- Include the jQuery library -->
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <!-- Include the jQuery Mobile library -->
    <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    <script type="text/javascript" src="http://dev.jtsage.com/cdn/spinbox/latest/jqm-spinbox.min.js"></script>
    <script>
        function doGoogleMapsSearch() {
            var inputText = $("#search").val();
            var googleMapsSearch = "http://www.maps.google.co.uk/?q=";
            var fullMapSearch = googleMapsSearch + inputText;
            window.location.href = fullMapSearch;
        }
    </script>
</head>
<body>

<!-- ************** Page 1 *************** -->
    <div data-role="page" id="pageone">
        <div data-role="header">
            <a href="#pageone" data-role="button" data-icon="home">Home</a>
            <h1>Summary Of Me</h1>
            <a href="#settings" data-role="button" data-icon="gear">Settings</a>
        </div>

        <div data-role="main" class="ui-content">
            <h2>Page 1</h2>
             <p>My name is Andy Stanier and here is a mini-site about me</p>
        </div>

        <div data-role="footer" data-position="fixed">
            <div data-role="navbar">
                <ul>
                    <li><a href="#" data-icon="arrow-l" class="ui-disabled">Prev</a></li>
                    <li><a href="#toc" data-rel="dialogue" data-icon="grid">Contents</a></li>
                    <li><a href="#pagetwo" data-icon="arrow-r">Next</a></li>
                </ul>
            </div>
        </div>
    </div> 

<!-- ************** Page 2 *************** -->
    <div data-role="page" id="pagetwo">
        <div data-role="header">   
            <a href="#pageone" data-role="button" data-icon="home">Home</a>   
            <h1>Something Interesting</h1>
            <a href="#settings" data-role="button" data-icon="gear">Settings</a>
        </div>

        <div data-role="main" class="ui-content">
            <h2>Page 2</h2>
            <p>I'm 36 and did my first degree in Chemistry, I'm now studying computer science</p>
        </div>

        <div data-role="footer" data-position="fixed">
            <div data-role="navbar">
                <ul>
                    <li><a href="#pageone" data-icon="arrow-l">Prev</a></li>
                    <li><a href="#toc" data-rel="dialogue" data-icon="grid">Contents</a></li>
                    <li><a href="#pagethree" data-icon="arrow-r">Next</a></li>
                </ul>
            </div>
        </div>
    </div> 

<!-- ************** Page 3 *************** -->
    <div data-role="page" id="pagethree">
        <div data-role="header">
            <a href="#pageone" data-role="button" data-icon="home">Home</a>
            <h1>Computer Programming</h1>
            <a href="#settings" data-role="button" data-icon="gear">Settings</a>
        </div>

        <div data-role="main" class="ui-content">
            <h2>Page 3</h2>
            <p>Although I've learned much about building a website, I find the design aspect a bit annoying</p>
            <p>Now here is a form with which you can search Google Maps using a postcode</p>
            <form>
                <div class="ui-field-contain">
                    <label for="search">Your Postcode:</label>
                    <input type="search" name="search" id="search" placeholder="Search for your postcode..."/>
                </div>
                    <input type="button" value="Find Postcode" onclick="doGoogleMapsSearch()"/>
            </form> 


        </div>


        <div data-role="footer" data-position="fixed">
            <div data-role="navbar">
                <ul>
                    <li><a href="#pagetwo" data-icon="arrow-l">Prev</a></li>
                    <li><a href="#toc" data-rel="dialogue" data-icon="grid">Contents</a></li>
                    <li><a href="#pagefour" data-icon="arrow-r">Next</a></li>
                </ul>
            </div>
        </div>
    </div> 

<!-- ************** Page 4 *************** -->
    <div data-role="page" id="pagefour">
        <div data-role="header">
            <a href="#pageone" data-role="button" data-icon="home">Home</a>
            <h1>Pets</h1>
            <a href="#settings" data-role="button" data-icon="gear">Settings</a>
        </div>

        <div data-role="main" class="ui-content">
            <h2>Page 4</h2>
            <p>I have 10 rodents as pets.</p>
                <ul>
                    <li>2 Rabbits</li>
                    <li>2 Guinea Pigs</li>
                    <li>3 Gerbils</li>
                    <li>2 Dwarf Hamsters</li>
                    <li>1 Syrian Hamster</li>
                </ul>
        </div>

        <div data-role="footer" data-position="fixed">
            <div data-role="navbar">
                <ul>
                    <li><a href="#pagethree" data-icon="arrow-l">Prev</a></li>
                    <li><a href="#toc" data-rel="dialogue" data-icon="grid">Contents</a></li>
                    <li><a href="#pagefive" data-icon="arrow-r">Next</a></li>
                </ul>
            </div>
        </div>
    </div> 

<!-- ************** Page 5 *************** -->
    <div data-role="page" id="pagefive">
        <div data-role="header">
            <a href="#pageone" data-role="button" data-icon="home">Home</a>
            <h1>Home Life</h1>
            <a href="#settings" data-role="button" data-icon="gear">Settings</a>
        </div>

        <div data-role="main" class="ui-content">
            <h2>Page 5</h2>
            <p>I live in Cheshire with my animals and my girlfriend</p>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d9546.890537368781!2d-2.1305758639894212!3d53.25867076390657!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487a360893626711%3A0xc1e264929f078e99!2sMacclesfield%2C+Cheshire+East!5e0!3m2!1sen!2suk!4v1448969941491" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>

        <div data-role="footer" data-position="fixed">
            <div data-role="navbar">
                <ul>
                    <li><a href="#pagefour" data-icon="arrow-l">Prev</a></li>
                    <li><a href="#toc" data-rel="dialogue" data-icon="grid">Contents</a></li>
                    <li><a href="#" data-icon="arrow-r" class="ui-disabled">Next</a></li>
                </ul>
            </div>
        </div>
     </div>     
    
<!-- ************** Table of Contents *************** -->
    <div data-role="page" id="toc">
        <div data-role="header">
            <a href="#pageone" data-role="button" data-icon="home">Home</a>
            <h1>Table of Contents</h1>
            <a href="#settings" data-role="button" data-icon="gear">Settings</a>
        </div>

        <div data-role="main" class="ui-content">
            <ul>
                <li><a href="#pageone" data-role="button">Summary Of Me</a></li>
                <li><a href="#pagetwo" data-role="button">Something Interesting</a></li>
                <li><a href="#pagethree" data-role="button">Computer Programming</a></li>
                <li><a href="#pagefour" data-role="button">Pets</a></li>
                <li><a href="#pagefive" data-role="button">Home Life</a></li>
                <li><a href="#settings" data-role="button">Settings</a></li>
            </ul>
        </div>

        <div data-role="footer" data-position="fixed">
            <div data-role="navbar">
                <ul>
                    <li><a href="#" data-rel="back" data-icon="back">Back</a></li>
                    <li><a href="#toc" data-icon="grid">Contents</a></li>
                    <li><a href="#" data-icon="arrow-r" class="ui-disabled">Next</a></li>
                </ul>
            </div>
        </div>
     </div>     

<!-- ************** Settings *************** -->
    <div data-role="page" id="settings">
        <div data-role="header">   
            <a href="#pageone" data-role="button" data-icon="home">Home</a>   
            <h1>Settings</h1>
            <a href="#" data-role="button" data-icon="gear">Settings</a>
        </div>

        <div data-role="main" class="ui-content">
            <h2>Settings Page</h2>
            <p>Change Your Home Settings</p>

            <label for="flipswitch">Controls:</label>
            <input type="checkbox" data-role="flipswitch" name="switch" id="flipswitch" data-wrapper-class="custom-size-flipswitch"/>

            <label for="temp">Temperature:</label>
            <input type="range" name="temp" id="temp" value="20" min="10" max="30"/>

            <label for="startAuto">Start Automation:</label>
            <input type="date" name="startAuto" id="startAuto" data-inline="true"/>

            <label for="endAuto">Start Automation:</label>
            <input type="date" name="endAuto" id="endAuto" data-inline="true"/>

            <fieldset class="ui-field-contain">
                <label for="day">Select Day</label>
                <select name="day" id="day" multiple="multiple" data-native-menu="false">
                    <option>Day</option>
                    <option value="mon">Monday</option>
                    <option value="tue">Tuesday</option>
                    <option value="wed">Wednesday</option>
                    <option value="thu">Thursday</option>
                    <option value="fri">Friday</option>
                    <option value="sat">Saturday</option>
                    <option value="sun">Sunday</option>
                </select>
            </fieldset>

            

            <fieldset data-role="controlgroup">
                <legend>Turn on Lights:</legend>
                <label for="outside">Outside</label>
                <input type="checkbox" name="lights" id="outside" value="outside"/>
                <label for="living">Living Room</label>
                <input type="checkbox" name="lights" id="living" value="living"/>
                <label for="kitchen">Kitchen</label>
                <input type="checkbox" name="lights" id="kitchen" value="kitchen"/> 
            </fieldset>


        </div>

        <div data-role="footer" data-position="fixed">
            <div data-role="navbar">
                <ul>
                    <li><a href="#" data-rel="back" data-icon="back">Back</a></li>
                    <li><a href="#toc" data-icon="grid">Contents</a></li>
                    <li><a href="#" data-icon="arrow-r" class="ui-disabled">Next</a></li>
                </ul>
            </div>
        </div>
    </div> 
</body>
</html>

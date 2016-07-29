<%@ Page Title="What is Near Me" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NearMe.aspx.cs" Inherits="WebScriptingStartup.NearMe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div class="row">
        <div class="col-sm-3 sidebar">
            <div class="nav nav-sidebar leftNavBar">
                <!-- http://www.w3schools.com/bootstrap/bootstrap_ref_js_collapse.asp -->
                <ul class="nav nav-sidebar lNavBar">
                    <li><a data-toggle="collapse" href="#collapse1">Care Advice</a></li>
                </ul>
                <div id="collapse1" class="panel-collapse collapse">
                    <ul class="nav nav-sidebar list-group lNavBar">
                        <li class="list-group-item lNavBar"><a href="HamCareAdvice.aspx">&nbsp Hamster Advice Articles</a></li>
                        <li class="list-group-item lNavBar"><a href="GerbCareAdvice.aspx">&nbsp Gerbil Advice Articles</a></li>
                        <li class="list-group-item lNavBar"><a href="GPCareAdvice.aspx">&nbsp Guinea Pig Advice Articles</a></li>
                    </ul> 
                </div>
                <ul class="nav nav-sidebar lNavBar">
                    <li><a data-toggle="collapse" href="#collapse2">Product Reviews</a></li>
                </ul>
                <div id="collapse2" class="panel-collapse collapse">
                    <ul class="nav nav-sidebar list-group lNavBar">
                        <li class="list-group-item lNavBar"><a href="HamProductReview.aspx">&nbsp Hamster Products</a></li>
                        <li class="list-group-item lNavBar"><a href="GerbProductReview.aspx">&nbsp Gerbil Products</a></li>
                        <li class="list-group-item lNavBar"><a href="GPProductReview.aspx">&nbsp Guinea Pig Products</a></li>
                    </ul> 
                </div>
                <ul class="nav nav-sidebar">
                    <li><a href="NearMe.aspx">Near Me</a></li>
                </ul>
            </div>
        </div>
       

        <div class="col-sm-9">
            <div class="jmbtAnimal jumbotron">
                <h1>Near Me</h1>
                <p class="lead">What Can I Find Near Me?</p>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-3 sidebar">
        </div>
        <div class="col-sm-9">
            <h3>Find Pet Stores By Postcode</h3>
            <asp:TextBox runat="server" ID="pcSearch" Text=""></asp:TextBox>
            <asp:Button ID="btnSortStores" runat="server" Text="Find Stores" OnClick="btnSortStores_Click" />
            <h5> Use wildcard % for wider search results.</h5>
            <asp:GridView ID="GridView1" class="gvStores" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="StoreName" HeaderText="Store Name" SortExpression="StoreName" />
                    <asp:BoundField DataField="StorePC" HeaderText="Postcode" SortExpression="StorePC" />
                    <asp:BoundField DataField="StorePhone" HeaderText="Phone Number" SortExpression="StorePhone" />
                    <asp:BoundField DataField="StoreDescription" HeaderText="Description" SortExpression="StoreDescription" />
                </Columns>
            </asp:GridView>
            <!-- Filtering taken from http://www.aspsnippets.com/Articles/Filter-GridView-with-TextBox-using-FilterExpression-in-SqlDataSource-in-ASPNet.aspx -->
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbas15aicConnectionString %>" SelectCommand="SELECT Id, StoreName, StorePC, StorePhone, StoreDescription FROM Stores" FilterExpression="StorePC LIKE '{0}%'">
                <FilterParameters>
                    <asp:ControlParameter Name="PostCode" ControlID="pcSearch" PropertyName="Text" />
                </FilterParameters>
            </asp:SqlDataSource>

        </div>
    </div>

    <div class="row">
        <div class="col-sm-3 sidebar">
        </div>
        <div class="col-sm-9">
            <h3>Add New Pet Stores</h3>
            <table class="submitPetStoreTable">
                <tr>
                    <th>Store Name:</th> 
                    <td><asp:TextBox ID="tbStoreName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Postcode:</th>
                    <td><asp:TextBox ID="tbStorePC" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Phone Number:</th>
                    <td><asp:TextBox ID="tbStorePhone" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Description:</th>
                    <td><asp:TextBox ID="tbStoreDesc" height="100px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <th><asp:Button ID="btnAddStore" runat="server" width="100%" Text="Add Store" OnClick="btnAddStore_Click" /></th>
                    <td>
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </div>


    <div class="row">
        <div class="col-sm-3 sidebar">
            <img src="http://rlv.zcache.com/cartoon_syrian_hamster_photo_sculpture_magnet-rb12e9ee8507e46289cef8a4b452e321d_x7sai_8byvr_512.jpg" width="250" height="200"/>
        </div>
        <div class="col-sm-9">
            
            <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>

            
            <h2>Some recommended sites to buy online</h2>
            <div>
                <table>
                    <tr class="petShopLinks">
                        <td><a href="http://www.petsathome.com"><img src="http://media.petsathome.com/wcsstore/pah-as01/images/creatives/logo.png" /></a></td>
                        <td><a href="https://www.jollyes.co.uk/small-pet.html"><img src="https://www.jollyes.co.uk/skin/frontend/rwd/jollyes/images/media/logo.png" /></a></td>
                        <td><a href="https://www.viovet.co.uk/small-pets"><img src="https://static1.viovet.co.uk/layout/Viovet/logo.gif" /></a></td>
                        <td><a href="http://www.petplanet.co.uk/dept.asp?dept_id=381&NavSource=TN"><img src="http://www.petplanet.co.uk/images/sprites/new_pplogo_182x95.png" /></a></td>
                        <td><a href="http://pets.petsmart.com/guides/small-pets/"><img src="http://pets.petsmart.com/_common/images/_header-footer/petsmart-header__logo.png" /></a></td>
                    </tr>
                </table>
           </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-3 sidebar">
        </div>
        <div class="col-sm-9">
            <article>
                <span id="status">checking...</span>
                        <!-- Found at http://html5demos.com/geo and http://stackoverflow.com/questions/5015070/using-iframes-in-asp-net -->
            </article>
        </div>
    </div>


    <script>
        function success(position) {
            var s = document.querySelector('#status');
            if (s.className == 'success') {  
                return;
            }
            s.innerHTML = "";
            s.className = 'success';
  
            var mapcanvas = document.createElement('div');
            mapcanvas.id = 'mapcanvas';
            mapcanvas.style.height = '150px';
            mapcanvas.style.width = '900px';
    
            document.querySelector('article').appendChild(mapcanvas);
  
            var latlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
            var myOptions = {
                zoom: 15,
                center: latlng,
                mapTypeControl: false,
                navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL},
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("mapcanvas"), myOptions);
  
            var marker = new google.maps.Marker({
                position: latlng, 
                map: map, 
                title:""
            });
        }
    function error(msg) {
        var s = document.querySelector('#status');
        s.innerHTML = typeof msg == 'string' ? msg : "failed";
        s.className = 'fail'; 
    }
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(success, error);
    }
    else {
        error('not supported');
    }
    </script>


 
       
</asp:Content>

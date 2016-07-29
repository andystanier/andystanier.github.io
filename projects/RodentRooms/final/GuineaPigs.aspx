<%@ Page Title="Guinea Pigs" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GuineaPigs.aspx.cs" Inherits="WebScriptingStartup.GuineaPigs" %>
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
                        <li class="list-group-item lNavBar"><a href="GPCareAdvice.aspx">&nbsp Read Advice Articles</a></li>
                        <li class="list-group-item lNavBar"><a href="Users/AddNewGPAdvice.aspx">&nbsp Add New Care Advice</a></li>
                    </ul> 
                </div>
                <ul class="nav nav-sidebar">
                    <li><a href="GPProductReview.aspx">Product Reviews</a></li>
                    <li><a href="NearMe.aspx">Near Me</a></li>
                </ul>
            </div>
        </div>

        <div class="col-sm-9">
            <div class="jmbtAnimal jumbotron">
                <h1>Guinea Pigs</h1>
                <p class="lead">For all your guinea pig advice and products</p>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-3 sidebar">
             <img src="https://s-media-cache-ak0.pinimg.com/736x/f2/30/d0/f230d0bfa775ba553b74510c0c2d260a.jpg" width="250" height="280"/>
        </div>
        <div class="col-sm-3">
            <div>
                <img class="animalpagepic" alt="guineas1" src="http://petguineapigcare.com/wp-content/uploads/2009/11/guinea-pig-6.jpg" />
            </div>
        </div>
        <div class="col-sm-3">
            <div>
                <img class="animalpagepic" alt="guineas2" src="http://www.vetedit.com/clientFiles/images/advice/20105_guinea-pig_129446679596507488.jpg" />      
            </div>
        </div>
        <div class="col-sm-3">
            <div>
                <img class="animalpagepic" alt="guineas3" src="http://animals.mom.me/DM-Resize/photos.demandstudios.com/60/138/fotolia_8608327_XS.jpg?w=600&h=600&keep_ratio=1&webp=1" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 sidebar">
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3 sidebar">
        </div>
        <div class="col-sm-3">
            <div class="jumbotron jmbtFront jmbtGP">
                <a href="GPCareAdvice.aspx"><h2>Care Advice</h2></a>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="jumbotron jmbtFront jmbtGP">
                <a href="GPProductReview.aspx"><h2>Product Review</h2></a>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="jumbotron jmbtFront jmbtGP">
                <a href="NearMe.aspx"><h2>Near<br /> Me</h2></a>
            </div>
        </div>
    </div>
</asp:Content>

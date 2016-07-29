<%@ Page Title="Hamsters" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hamsters.aspx.cs" Inherits="WebScriptingStartup.Hamsters" %>
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
                        <li class="list-group-item lNavBar"><a href="HamCareAdvice.aspx">&nbsp Read Advice Articles</a></li>
                        <li class="list-group-item lNavBar"><a href="Users/AddNewHamAdvice.aspx">&nbsp Add New Care Advice</a></li>
                    </ul> 
                </div>
                <ul class="nav nav-sidebar">
                    <li><a href="HamProductReview.aspx">Product Reviews</a></li>
                    <li><a href="NearMe.aspx">Near Me</a></li>
                </ul>
            </div>
        </div>
       

        <div class="col-sm-9">
            <div class="jmbtAnimal jumbotron">
                <h1>Hamsters</h1>
                <p class="lead">For all your hamster advice and products</p>
            </div>
        </div>
    </div>
    
    <div class="row">
        <div class="col-sm-3 sidebar">
            <img src="http://rlv.zcache.com/cartoon_syrian_hamster_photo_sculpture_magnet-rb12e9ee8507e46289cef8a4b452e321d_x7sai_8byvr_512.jpg"/>
        </div>
        <div class="col-sm-3">
            <div>
                <img class="animalpagepic" alt="hamsters1" src="http://www.thurnscoe-exotics.co.uk/hamster52-120216-bg.jpg" />
            </div>
        </div>
        <div class="col-sm-3">
            <div>
                <img class="animalpagepic" alt="hamsters2" src="http://emptysqua.re/blog/media/2012/11/hamster-1.jpg" />      
            </div>
        </div>
        <div class="col-sm-3">
            <div>
                <img class="animalpagepic" alt="hamsters3" src="http://i267.photobucket.com/albums/ii319/leedsgurl_photos/MAH/Poppy/075_650x433.jpg" />
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
            <div class="jumbotron jmbtFront jmbtHam">
                <a href="HamCareAdvice.aspx"><h2>Care Advice</h2></a>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="jumbotron jmbtFront jmbtHam">
                <a href="HamProductReview.aspx"><h2>Product Review</h2></a>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="jumbotron jmbtFront jmbtHam">
                <a href="NearMe.aspx"><h2>Near<br /> Me</h2></a>
            </div>
        </div>
    </div>
</asp:Content>

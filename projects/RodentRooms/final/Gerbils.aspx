<%@ Page Title="Gerbils" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gerbils.aspx.cs" Inherits="WebScriptingStartup.Gerbils" %>
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
                        <li class="list-group-item lNavBar"><a href="GerbCareAdvice.aspx">&nbsp Read Advice Articles</a></li>
                        <li class="list-group-item lNavBar"><a href="Users/AddNewGerbAdvice.aspx">&nbsp Add New Care Advice</a></li>
                    </ul> 
                </div>
                <ul class="nav nav-sidebar">
                    <li><a href="GerbProductReview.aspx">Product Reviews</a></li>
                    <li><a href="NearMe.aspx">Near Me</a></li>
                </ul>
            </div>
        </div>
        <div class="col-sm-9">
            <div class="jmbtAnimal jumbotron">
                <h1>Gerbils</h1>
                <p class="lead">For all your gerbil advice and products</p>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-3 sidebar">
            <img src="http://rlv.zcache.co.uk/gerbil_postcard-re2467ccc53b9497ab221cd7e78bdb258_vgbaq_8byvr_324.jpg" width="250" height="280"/>
        </div>
        <div class="col-sm-3">
            <div>
                <img class="animalpagepic" alt="gerbils1" src="http://dora.missouri.edu/wp-content/uploads/2012/09/Gerbils.jpg" />
            </div>
        </div>
        <div class="col-sm-3">
            <div>
                <img class="animalpagepic" alt="gerbils2" src="http://www.factzoo.com/sites/all/img/mammals/rodents/grey-brown-gerbil.jpg" />      
            </div>
        </div>
        <div class="col-sm-3">
            <div>
                <img class="animalpagepic" alt="gerbils3" src="http://www.petsworld.co.uk/images/gerbil.jpg" />
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
            <div class="jumbotron jmbtFront jmbtGerb">
                <a href="GerbCareAdvice.aspx"><h2>Care Advice</h2></a>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="jumbotron jmbtFront jmbtGerb">
                <a href="GerbProductReview.aspx"><h2>Product Review</h2></a>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="jumbotron jmbtFront jmbtGerb">
                <a href="NearMe.aspx"><h2>Near<br /> Me</h2></a>
            </div>
        </div>
    </div>

    
</asp:Content>

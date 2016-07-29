<%@ Page Title="Rodents" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebScriptingStartup.Rodents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-sm-2">
         
        </div>
        <div class="col-sm-8 bannerImg">
            <img src="http://petdoctor911.com/wordpress/wp-content/uploads/2013/08/small-animals.jpg" />
        </div>
        <div class="col-sm-2">
         
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12 bannerText">
            Rodent Rooms
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4 frontPagePic">
            <a href="Hamsters.aspx" style="text-decoration:none">
                <div class="jumbotron jmbtFront jmbtFrontHam"></div>
                <h2>Hamsters</h2>
            </a>
        </div>
        <div class="col-sm-4 frontPagePic">
            <a href="Gerbils.aspx" style="text-decoration:none">
                <div class="jumbotron jmbtFront jmbtFrontGerb"></div>
                <h2>Gerbils</h2>
            </a>
        </div>
        <div class="col-sm-4 frontPagePic">
            <a href="GuineaPigs.aspx" style="text-decoration:none">
                <div class="jumbotron jmbtFront jmbtFrontGP"></div>
                <h2>Guinea Pigs</h2>
            </a>
        </div>
    </div>


    
    
</asp:Content>

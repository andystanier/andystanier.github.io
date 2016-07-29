<%@ Page Title="Rodents" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rodents.aspx.cs" Inherits="WebScriptingStartup.Rodents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-4">
            <div>
                <img class="frontpagepic" alt="hamsterpic" src="http://img.thesun.co.uk/aidemitlum/archive/01722/SNN0409HAMS---620_1722095a.jpg"/>
            </div>
        </div>
        <div class="col-md-4">
            <div>
                <img class="frontpagepic" alt="gerbilpic" src="http://www.petresearch.net/sites/default/files/Gerbil.jpg?1313603021"/>
            </div>
        </div>
        <div class="col-md-4">
            <div>
                <img class="frontpagepic" alt="guineapigpic" src="http://valevets.co.uk/dursley/wp-content/uploads/2013/11/fluffy_guineapig.jpg"/>
            </div>
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-4">
            <div class="jumbotron jmbtFront">
                <a href="Hamsters.aspx"><h2>Hamsters</h2></a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="jumbotron jmbtFront">
                <a href="Gerbils.aspx"><h2>Gerbils</h2></a>
            </div>
        </div>
         <div class="col-md-4">
            <div class="jumbotron jmbtFront">
                <a href="GuineaPigs.aspx"><h2>Guinea Pigs</h2></a>
            </div>
        </div>
    </div>

    
    
</asp:Content>

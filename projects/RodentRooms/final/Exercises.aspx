<%@ Page Title="Andy's Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Exercises.aspx.cs" Inherits="WebScriptingStartup._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    

    <div class="jumbotron titlepage">
        <h1>Web Scripting Project</h1>
        <p class="lead">This is the frontpage that provides links to the projects I've done so far</p>
    </div>

    <div class="row">
        <div class="col-md-6">
            <h2>Calculator</h2>
            <p>
                Replicates the calculator used as an example in the videos.
            </p>
            <br />
            <p>
                <a href="calculate.aspx" class="btn btn-warning btn-md">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-6">
            <h2>Plumber's Mate</h2>
            <p>
                Calculates the amount a plumber should charge without added VAT.  Uses Javascript for client-side calculations.
            </p>
            <p>
                <a href="plumberjs.aspx" class="btn btn-warning btn-md">Learn more &raquo;</a>
            </p>
        </div>
   </div>
   <div class="row">
        <div class="col-md-6">
            <h2>Cash Converter</h2>
            <p>
                Converts from GBP into a few different currencies using C# to peform server-side calculations.
            </p>
            <p>
                <a href="cashconverter.aspx" class="btn btn-warning btn-md">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-6">
            <h2>Rodents</h2>
            <p>
                Starting Point for a Website about Gerbils, Hamsters and Guinea Pigs.
            </p>
            <br />
            <p>
                <a href="rodents.aspx" class="btn btn-warning btn-md">Learn more &raquo;</a>
            </p>
        </div>
   </div>
    <div class="row">
        <div class="col-md-6">
            <h2>Find Us</h2>
            <p>
                A fake 'find us' page for the University
            </p>
            <br />
            <p>
                <a href="/FindUs" class="btn btn-warning btn-md">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-6">
            <h2>JQuery Practice</h2>
            <p>
                Place to practice using JQuery
            </p>
            <br />
            <p>
                <a href="jqueryhome.aspx" class="btn btn-warning btn-md">Learn more &raquo;</a>
            </p>
        </div>
   </div>
    <div class="row">
        <div class="col-md-6">
            <h2>Placeholder</h2>
            <p>
                Placeholder for even more interesting projects!
            </p>
            <br />
            <p>
                <a href="#" class="btn btn-warning btn-md">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-6">
            <h2>Placeholder</h2>
            <p>
                Placeholder for even more interesting projects!
            </p>
            <br />
            <p>
                <a href="#" class="btn btn-warning btn-md">Learn more &raquo;</a>
            </p>
        </div>
   </div>
   <div class="row">
       <div class="col-md-12">
            <br />
            <p>Last updated 30 November 2015</p>
        </div>
   </div>
</asp:Content>

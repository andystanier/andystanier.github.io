<%@ Page Title="Hamster Care Advice" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HamCareAdvice.aspx.cs" Inherits="WebScriptingStartup.CareAdvice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- *********** Side Bar ************** -->
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
                <h1>Hamster Care Advice</h1>
                <p class="lead">Share your problems and experiences</p>
            </div>
        </div>
    </div>

    <!-- *********** Picture ************** -->
    <div class="row">
        <div class="col-sm-3 sidebar">
            <img src="http://rlv.zcache.com/cartoon_syrian_hamster_photo_sculpture_magnet-rb12e9ee8507e46289cef8a4b452e321d_x7sai_8byvr_512.jpg"/>
        </div>
        <div class="col-sm-9">
            
        </div>
    </div>

    <!-- *********** Table of Advice Articles ************** -->
    <div class="row">
        <div class="col-sm-3 sidebar">
        </div>
        <div class="col-sm-9">
            <h2>Advice Articles</h2>
            <table class="adviceTable" style="width:100%">
                <tr>
                    <th style="width:40%;">Title</th> 
                    <th style="width:25%;">Author</th>
                    <th style="width:25%;">Date Submitted</th>
                    <th style="width:10%;">Picture</th>
                </tr>
            </table>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <table class="adviceTable" style="width:100%">
                        <tr>
                            <td style="width:40%; height:50px"><a href="HamAdviceDetail.aspx?AdviceID=<%# Eval("Id") %>">&quot<%# Eval("Title") %>&quot</a></td>
                                <!-- from https://www.webmasterworld.com/microsoft_asp_net/4196192.htm and seen in Steve's video -->
                                <asp:LoginView ID="LoginView1" runat="server"> 
                                    <AnonymousTemplate>
                                        <td style="width:25%; height:50px">You must log in to see the author</td>
                                    </AnonymousTemplate> 
                                    <LoggedInTemplate>
                                        <td style="width:25%; height:50px"><%# Eval("Author") %></td>
                                    </LoggedInTemplate> 
                                </asp:LoginView> 
                            

                            <td style="width:25%; height:50px"><%# Eval("Date") %></td>
                            <td style="width:10%; height:50px"><a href="HamAdviceDetail.aspx?AdviceID=<%# Eval("Id") %>"><img src="<%# Eval("JPG")%>" width="50" height="50" /></a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbas15aicConnectionString %>" SelectCommand="SELECT [Title], [Author], [Date], [Body], [JPG], [Id], [Animal] FROM [Articles] WHERE ([Animal] = @Animal) ORDER BY [Date] DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="Hamster" Name="Animal" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


   

     <!-- *********** Link to Add New Advice  ************** -->
    <div class="row">
        <div class="col-sm-3 sidebar">
        </div>
        <div class="col-sm-9">
                <h2>Add Your Own Advice Here</h2>
                <p>Do you have advice you would like to add?  Click the button below...</p>
                <asp:Button ID="btnAddAdvice" runat="server" Text="Add Some Advice" OnClick="btnGoToAddAdvice" />

        </div>
            
    </div>

    <!-- *********** View Articles by Tag  ************** -->

    <div class="row">
        <div class="col-sm-3 sidebar">
        </div>
        <div class="col-sm-9">
            <h2>Select Articles by Tag</h2>
                <asp:CheckBoxList class="checkBoxTag" RepeatColumns="8" ID="cbViewTags" runat="server" DataSourceID="SqlDataSource2" DataTextField="TagName" DataValueField="Id"></asp:CheckBoxList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbas15aicConnectionString %>" SelectCommand="SELECT DISTINCT [TagName], [Id], [Animal] FROM [Tags] WHERE (Animal = @Animal)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Hamster" Name="Animal" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Button ID="btnGetByTag" runat="server" Text="Get Articles" OnClick="btnGetByTag_Click" />

        </div>
    </div>

</asp:Content>

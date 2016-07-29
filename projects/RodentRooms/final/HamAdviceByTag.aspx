<%@ Page Title="Hamster Advice By Tag" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HamAdviceByTag.aspx.cs" Inherits="WebScriptingStartup.AdviceByTag" %>
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
                <h1>Advice on a Theme</h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-3 sidebar">
            <img src="http://rlv.zcache.com/cartoon_syrian_hamster_photo_sculpture_magnet-rb12e9ee8507e46289cef8a4b452e321d_x7sai_8byvr_512.jpg" width="250" height="200"/>
        </div>
        <div class="col-sm-9">
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbas15aicConnectionString %>" SelectCommand="SELECT [Author], [Title], [Body], [Date], [JPG], [TagName] FROM [vwTagsForEachAdvice] WHERE ([TagName] = @TagName)">
        <SelectParameters>
            <asp:QueryStringParameter Name="TagName" QueryStringField="Tag" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                 <ItemTemplate>
                    <div class="row">
                        <div class="col-sm-3 sidebar">
                        </div>
                        <div class="col-sm-9">
                            <table class="adviceDetailTable" style="width:100%"> 
                                <tr>
                                    <asp:LoginView ID="LoginView2" runat="server"> 
                                    <AnonymousTemplate>
                                        <td style="width:50%">Title: <b>&quot<%# Eval("Title") %>&quot by User</b> &nbsp &nbsp Uploaded: <%# Eval("Date") %></td>
                                    </AnonymousTemplate> 
                                    <LoggedInTemplate>
                                        <td style="width:50%">Title: <b>&quot<%# Eval("Title") %>&quot by <%# Eval("Author") %></b> &nbsp &nbsp Uploaded: <%# Eval("Date") %></td>
                                    </LoggedInTemplate> 
                                    </asp:LoginView> 
                                </tr>
                                <tr style="float:right">
                                    <td style="width:100%; text-align:justify; padding:5px;"><%# Eval("Body") %></td>
                                    <td style="width:100%"><a href="<%# Eval("JPG") %>"><img src='<%# Eval("JPG")%>' alt="<%# Eval("JPG") %>" width="150" height="180" /></a><br />Click To Enlarge</td>
                                </tr>
                                <hr />
                            </table>
                            
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

    <div class="row">
            <div class="col-sm-3 sidebar">
            </div>
            <div class="col-sm-9">
                
            </div>
    </div>
    <div class="row">
            <div class="col-sm-3 sidebar">
            </div>
            <div class="col-sm-9">
                <h3>Tags</h3>
                    <table class="tagTable" style="width:100%">
                        <tr>
                            <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    &nbsp
                                    <a href="HamAdviceByTag.aspx?Tag=<%# Eval("TagName") %>" style="text-decoration:none;"><asp:Label ID="Label1" class="tagLoz" runat="server"><%# Eval("TagName") %></asp:Label></a>
                                    &nbsp
                                </ItemTemplate>
                            </asp:Repeater>
                        </tr>
                   </table>
            </div>
    </div>


    
    
</asp:Content>

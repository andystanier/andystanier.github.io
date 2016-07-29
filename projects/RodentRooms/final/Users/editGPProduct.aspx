<%@ Page Title="Edit Guinea Pig Product Info" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="editGPProduct.aspx.cs" Inherits="WebScriptingStartup.editGPProduct" %>
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
                        <li class="list-group-item lNavBar"><a href="../GPCareAdvice.aspx">&nbsp Read Advice Articles</a></li>
                        <li class="list-group-item lNavBar"><a href="AddNewGPAdvice.aspx">&nbsp Add New Care Advice</a></li>
                    </ul> 
                </div>
                <ul class="nav nav-sidebar">
                    <li><a href="../GPProductReview.aspx">Product Reviews</a></li>
                    <li><a href="../NearMe.aspx">Near Me</a></li>
                </ul>
            </div>
        </div>
        <div class="col-sm-9">
            <div class="jmbtAnimal jumbotron">
                <h1>Edit Guinea Pig Product Information</h1>
                
            </div>
        </div>
    </div>

    <!-- *********** Picture ************** -->
    <div class="row">
        <div class="col-sm-3 sidebar">
             <img src="https://s-media-cache-ak0.pinimg.com/736x/f2/30/d0/f230d0bfa775ba553b74510c0c2d260a.jpg" width="250" height="280"/>
        </div>
        <div class="col-sm-9">
            
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3 sidebar">
        </div>
        <div class="col-sm-9">
            <div><h3>Edit the Product</h3></div>        

                <div class="inputBoxesText">
                    Price £:
                </div>
                <div class="inputBoxes">
                    <asp:TextBox ID="tbEditPrice" runat="server" Text='<%# Eval("Price") %>' />  <!-- must be a float -->
                </div>
            
                <div class="inputBoxesText">
                    Rating (1 to 5):
                </div>
                <div class="inputBoxes">
                    <asp:TextBox ID="tbEditRating" runat="server" />
                </div>
                <br />
                <asp:Button ID="editButton" class="lvBtn" runat="server" Text="Edit" OnClick="editButton_Click"/>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbas15aicConnectionString %>" SelectCommand="SELECT [Id], [ProdName], [Supplier], [Price], [Rating], [Picture] FROM [Products] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Id" QueryStringField="ProdId" Type="Int32" />
                    </SelectParameters>
            </asp:SqlDataSource>
           
        </div>
    </div>
</asp:Content>

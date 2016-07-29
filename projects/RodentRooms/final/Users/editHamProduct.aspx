<%@ Page Title="Edit Hamster Product Info" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="editHamProduct.aspx.cs" Inherits="WebScriptingStartup.editHamProduct" %>
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
                        <li class="list-group-item lNavBar"><a href="../HamCareAdvice.aspx">&nbsp Read Advice Articles</a></li>
                        <li class="list-group-item lNavBar"><a href="AddNewHamAdvice.aspx">&nbsp Add New Care Advice</a></li>
                    </ul> 
                </div>
                <ul class="nav nav-sidebar">
                    <li><a href="../HamProductReview.aspx">Product Reviews</a></li>
                    <li><a href="../NearMe.aspx">Near Me</a></li>
                </ul>
            </div>
        </div>
        <div class="col-sm-9">
            <div class="jmbtAnimal jumbotron">
                <h1>Edit Hamster Product Information</h1>
                
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

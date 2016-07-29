<%@ Page Title="Hamster Product Review" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HamProductReview.aspx.cs" Inherits="WebScriptingStartup.HamProductReview" %>
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
                <h1>Hamster Product Review</h1>
                <p class="lead">Products your Hammy may need</p>
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

    <!-- *********** Table of Products ************** -->
    <div class="row">
        <div class="col-sm-3 sidebar">
        </div>
        <div class="col-sm-9">

            <!-- Some added some buttons etc automatically after watching https://www.youtube.com/watch?v=ZDeAFAUdP9Y 
                Ideally in the insert items section, I would like to have a dropdown for supplier
                a file upload for the picture, and some validation for the price and rating
                the price should be a float and the rating should be an int from 1 to 5 -->

            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" EnableViewState="False" >
                <ItemTemplate>
                    <div class="col-sm-10">
                        <table class="productTable" style="width:100%">
                            <tr class="prodRow">
                                <td>Product Name:</td>
                                <td><asp:Label ID="lblProdName" runat="server" Text='<%# Eval("ProdName") %>' /></td>
                                <td rowspan="4" class="editProd"><div><a href="Users/editHamProduct?ProdId=<%# Eval("Id") %>">Edit Product</a></div></td>
                            </tr>
                            <tr class="prodRow">    
                                <td>Supplier:</td>
                                <td><asp:Label ID="lblSupplier" runat="server" Text='<%# Eval("Supplier") %>' /></td>
                            </tr>
                            <tr class="prodRow">
                                <td>Price:</td>
                                <td><asp:Label ID="lblPrice" runat="server" Text='<%# "£"+Eval("Price") %>' /></td>
                            </tr>
                            <tr class="prodRow">
                                <td>Rating:</td>
                                <td><input value="<%# Eval("AverageScore") %>" ID="lblStarRating" type="number" class="rating" min="0" max="5" step="0.2" data-size="xs" data-readonly="true" /></td>
                                <!-- star rating as per the video http://plugins.krajee.com/star-rating -->
                            </tr>
                            <br />
                        </table>
                    </div>
                    <div class="col-sm-2">
                        <table class="productTablePic" >
                            <tr>
                                <td><a href="<%# Eval("Picture") %>"><img src="<%# Eval("Picture") %>" alt="<%# Eval("Picture") %>" style="height:110px; width:110px;" /></a></td>
                            </tr>
                        </table>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>      

    <div class="row">
        <div class="col-sm-3 sidebar">
        </div>
        <div class="col-sm-9"> 
            <asp:PlaceHolder ID="addNewProdArea" runat="server">
                <div><h3>Add a new Product</h3></div>        
                <div class="inputBoxesText">
                    Product Name:
                </div>
                <div class="inputBoxes">
                    <asp:TextBox ID="tbInsertProdName" runat="server" Text='<%# Bind("ProdName") %>' />
                </div>
            
                <div class="inputBoxesText">
                    Supplier:
                </div>
                <div class="inputBoxes">
                    <asp:TextBox ID="tbInsertSupplier" runat="server" Text='<%# Bind("Supplier") %>' /> 
                </div>
            
                <div class="inputBoxesText">
                    Price:
                </div>
                <div class="inputBoxes">
                    <asp:TextBox ID="tbInsertPrice" runat="server" Text='<%# Bind("Price") %>' />  <!-- must be a float -->
                </div>
            <!--
                <div class="inputBoxesText">
                    Rating (1 to 5):
                </div>
                <div class="inputBoxes">
                    <input value="<%# Eval("Rating") %>" ID="starRating" type="number" class="rating" min="0" max="5" step="0.5" data-size="xs" />
                </div>
            -->
                
                <div class="inputBoxesText">
                    Picture:
                </div>
                <div class="inputBoxes">
                    <asp:TextBox ID="tbInsertPicture" runat="server" Text='<%# Bind("Picture") %>' /> URL of picture <!-- a file upload field -->
                </div>
                <br />
                <asp:Button ID="insertButton" class="lvBtn" runat="server" Text="Insert" OnClick="insertButton_Click"/>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbas15aicConnectionString %>" SelectCommand="SELECT [Id], [ProdName], [Supplier], [Price], [Rating], [Animal], [AverageScore], [Picture] FROM [vwProdPlusRating] WHERE (Animal = @Animal)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Hamster" Name="Animal" Type="String" />
                    </SelectParameters>

                </asp:SqlDataSource>

            </asp:PlaceHolder>
        </div>
    </div>

</asp:Content>

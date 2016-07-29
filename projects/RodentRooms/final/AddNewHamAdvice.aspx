<%@ Page Title="Add New Hamster Advice" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewHamAdvice.aspx.cs" Inherits="WebScriptingStartup.AddNewAdvice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- *********** Side Bar ************** -->
    <div class="row">
        <div class="col-md-3 sidebar">
          <ul class="nav nav-sidebar leftNavBar">
            <li><a href="HamCareAdvice.aspx">Care Advice</a></li>
            <li><a href="HamProductReview.aspx">Product Reviews</a></li>
            <li><a href="NearMe.aspx">Near Me</a></li>
          </ul>
        </div>
        <div class="col-md-9">
            <div class="jmbtAnimal jumbotron">
                <h1>Hamster Care Advice</h1>
                
            </div>
        </div>
    </div>

    <!-- *********** Picture ************** -->
    <div class="row">
        <div class="col-md-3 sidebar">
            <img src="http://rlv.zcache.com/cartoon_syrian_hamster_photo_sculpture_magnet-rb12e9ee8507e46289cef8a4b452e321d_x7sai_8byvr_512.jpg" width="250" height="200"/>
        </div>
        <div class="col-md-9">
            
        </div>
    </div>


     <!-- *********** Submission Form for Advice and Tags ************** -->
    <div class="row">
        <div class="col-md-3 sidebar">
        </div>
        <div class="col-md-9">
            <h2>Share your own advice and experience</h2>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3 sidebar">
        </div>
        <div class="col-md-9">
            <table class="submitAdviceTable">
                <tr>
                    <th>Your Name:</th>
                    <td><asp:TextBox ID="tbAdviceName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    
                        <!--Code for dropdown list taken from http://code.runnable.com/UjB_wxmQpvw8AAAw/asp-net-how-to-use-dropdownlist -->
                    <th>Type of Animal:</th> 
                    <!--                   
                    <td><asp:DropDownList ID="ddlAdviceList" runat="server">
                        <asp:ListItem Text="Select Animal" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Hamster" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Gerbil" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Guinea Pig" Value="3"></asp:ListItem>
                    </asp:DropDownList> Note: If you don't pick Hamster, your submission will not appear above</td>
                    -->
                    <td><asp:TextBox ID="tbAdviceAnimal" value="Hamster" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Title of your Article:</th>
                    <td><asp:TextBox ID="tbAdviceTitle" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Your Advice:</th>
                    <td><asp:TextBox ID="tbAdviceText" height="100px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Choose From Existing Tags:</th>
                    <td style="width:75%; height:5px;">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbas15aicConnectionString %>" SelectCommand="SELECT DISTINCT [TagName], [Id] FROM [Tags]"></asp:SqlDataSource>
                        <asp:CheckBoxList class="checkBoxTag" RepeatColumns="8" ID="cbTags" runat="server" DataSourceID="SqlDataSource2" DataTextField="TagName" DataValueField="Id"></asp:CheckBoxList>
                    </td>
                </tr>
                <tr><td>and/or</td></tr>
                <tr>
                    <th>Add New Tags:<br />(comma separated)</th>
                    <td><asp:TextBox ID="tbAddNewTag" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Add a picture:</th>
                    <td><asp:FileUpload ID="fuAdvicePic" runat="server" /></td>
                </tr>
                <tr>
                    <td>&nbsp</td>
                </tr>
                <tr>
                    <th><asp:Button ID="btnAdviceSubmit" runat="server" width="50%" Text="Submit" OnClick="btnAdviceSubmit_Click" /></th>
                    <td>
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                </tr>
                
            </table>
          
            <br />
            <br />
            <br />
        </div>
        
    </div>
    

</asp:Content>

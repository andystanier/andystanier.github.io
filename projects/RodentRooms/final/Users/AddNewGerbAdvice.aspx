<%@ Page Title="Add New Gerbil Advice" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewGerbAdvice.aspx.cs" Inherits="WebScriptingStartup.AddNewGerbAdvice" %>
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
                        <li class="list-group-item lNavBar"><a href="../GerbCareAdvice.aspx">&nbsp Read Advice Articles</a></li>
                        <li class="list-group-item lNavBar"><a href="AddNewGerbAdvice.aspx">&nbsp Add New Care Advice</a></li>
                    </ul> 
                </div>
                <ul class="nav nav-sidebar">
                    <li><a href="../GerbProductReview.aspx">Product Reviews</a></li>
                    <li><a href="../NearMe.aspx">Near Me</a></li>
                </ul>
            </div>
        </div>
        <div class="col-sm-9">
            <div class="jmbtAnimal jumbotron">
                <h1>Gerbil Care Advice</h1>
                
            </div>
        </div>
    </div>
     <!-- *********** Picture ************** -->
    <div class="row">
        <div class="col-sm-3 sidebar">
            <img src="http://rlv.zcache.co.uk/gerbil_postcard-re2467ccc53b9497ab221cd7e78bdb258_vgbaq_8byvr_324.jpg" width="250" height="280"/>
        </div>
        <div class="col-sm-9">
            
        </div>
    </div>

     <!-- *********** Submission Form for Advice and Tags ************** -->
    <div class="row">
        <div class="col-sm-3 sidebar">
        </div>
        <div class="col-sm-9">
            <h2>Share your own advice and experience</h2>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-3 sidebar">
        </div>
        <div class="col-sm-9">
            <table class="submitAdviceTable">
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbas15aicConnectionString %>" SelectCommand="SELECT DISTINCT [TagName], [Id], [Animal] FROM [Tags] WHERE (Animal = @Animal)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Gerbil" Name="Animal" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:CheckBoxList class="checkBoxTag" RepeatColumns="7" ID="cbTags" runat="server" DataSourceID="SqlDataSource2" DataTextField="TagName" DataValueField="Id"></asp:CheckBoxList>
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

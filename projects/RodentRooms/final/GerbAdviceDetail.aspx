<%@ Page Title="Gerbil Advice Detail" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GerbAdviceDetail.aspx.cs" Inherits="WebScriptingStartup.GerbAdviceDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-sm-3 sidebar">
            <div class="nav nav-sidebar leftNavBar">
                <ul class="nav nav-sidebar lNavBar">
                    <li><a data-toggle="collapse" href="#collapse1">Care Advice</a></li>
                </ul>
                <div id="collapse1" class="panel-collapse collapse">
                    <ul class="nav nav-sidebar list-group lNavBar">
                        <li class="list-group-item lNavBar"><a href="GerbCareAdvice.aspx">&nbsp Read Advice Articles</a></li>
                        <li class="list-group-item lNavBar"><a href="Users/AddNewGerbAdvice.aspx">&nbsp Add New Care Advice</a></li>
                    </ul> 
                </div>
                <ul class="nav nav-sidebar">
                    <li><a href="GerbProductReview.aspx">Product Reviews</a></li>
                    <li><a href="NearMe.aspx">Near Me</a></li>
                </ul>
            </div>
        </div>
        <div class="col-sm-9">
            <div class="jmbtAnimal jumbotron">
                <h1>Advice in Detail</h1>
            </div>
        </div>
    </div>

     <div class="row">
        <div class="col-sm-3 sidebar">
            <img src="http://rlv.zcache.co.uk/gerbil_postcard-re2467ccc53b9497ab221cd7e78bdb258_vgbaq_8byvr_324.jpg" width="250" height="280"/>
        </div>
        <div class="col-sm-9">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbas15aicConnectionString %>" SelectCommand="SELECT [Id], [Author], [Title], [Date], [Body], [JPG], [Animal] FROM [Articles] WHERE (([Id] = @Id) AND ([Animal] = @Animal))">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Id" QueryStringField="AdviceID" Type="Int32" />
                    <asp:Parameter DefaultValue="Gerbil" Name="Animal" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
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
                            </table>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

    <!-- ********** Tags Displayed here ********* -->
        <div class="row">
            <div class="col-sm-3 sidebar">
            </div>
            <div class="col-sm-9">
                <h3>Tags</h3>
                <table class="tagTable" style="width:100%">
                    <tr>
                        <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                &nbsp
                                <a href="GerbAdviceByTag.aspx?Tag=<%# Eval("TagName") %>" style="text-decoration:none;"><asp:Label ID="Label1" class="tagLoz" runat="server"><%# Eval("TagName") %></asp:Label></a>
                                &nbsp
                            </ItemTemplate>
                        </asp:Repeater>
                    </tr>
                </table>
            </div>
        </div>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbas15aicConnectionString %>" SelectCommand="SELECT [TagName] FROM [vwTagsForEachAdvice] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="AdviceID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

     <!-- ********** Add Tags to Article ********* -->

    <div class="row">
            <div class="col-sm-3 sidebar">
                
            </div>
            <div class="col-sm-9">
                <asp:PlaceHolder ID="addTagsArea" runat="server">
                    <h3>Add Tags</h3>
                    <table class="submitComment">
                        <tr>
                            <th>Add New Tags:</th>
                            <td><asp:TextBox ID="tbAddNewTag" runat="server"></asp:TextBox> (comma separated) </td>
                        </tr>
                        <tr>
                            <th><asp:Button ID="btnAddTag" runat="server" width="70%" Text="Add Tag" OnClick="btnAddTag_Click" /></th>
                            <td>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>    
                </asp:PlaceHolder>      
            </div>
        </div>

    <!-- ********** Show Comments for Article ********* -->

    <div class="row">
            <div class="col-sm-3 sidebar">
            </div>
            <div class="col-sm-9">
                <h3>Comments</h3>
                <table class="commentTable" style="width:100%">
                        <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource3">
                             <ItemTemplate>
                                <tr style="background-color:tan;">
                                    <td style="padding:5px; width:20%"><%# Eval("ComAuthor") %></td>
                                    <td style="padding:5px; width:60%"><%# Eval("Comment") %></td>
                                    <td style="padding:5px; width:20%"><%# Eval("Date") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>

                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbas15aicConnectionString %>" SelectCommand="SELECT [Comment], [Date], [ComAuthor], [Id] FROM [vwCommentsForEachAdvice] WHERE ([Id] = @Id)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="Id" QueryStringField="AdviceID" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                </table>
            </div>
        </div>

     <!-- ********** Add Comments to Article ********* -->

    <div class="row">
            <div class="col-sm-3 sidebar">
                
            </div>
            <div class="col-sm-9">
                <asp:PlaceHolder ID="addCommentArea" runat="server">
                    <h3>Add Comments</h3>
                    <table class="submitComment">
                        <tr>
                            <th>Your Name:</th>
                            <td><asp:TextBox ID="tbCommentName" runat="server"></asp:TextBox></td>
                        </tr> 
                        <tr>
                            <th>Your Comment:</th>
                            <td><asp:TextBox ID="tbCommentText" height="100px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <th><asp:Button ID="btnCommentSubmit" runat="server" width="60%" Text="Submit" OnClick="btnCommentSubmit_Click" /></th>
                            <td>
                                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table> 
                </asp:PlaceHolder>      
            </div>
        </div>

</asp:Content>

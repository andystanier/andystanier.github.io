<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="WebScriptingStartup.Account.Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-sm-12">
            <h2>Update Your Profile</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">
            Edit Your Username:
        </div>
        <div class="col-sm-3">
            <asp:TextBox ID="tbUserName" runat="server" Value="UserName"></asp:TextBox>
            
        </div>
        <div class="col-sm-2">
            Provide a Picture:
        </div>
        <div class="col-sm-5">
            <asp:FileUpload ID="fuProfilePic" runat="server" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">
            Tell us about yourself:
        </div>
        <div class="col-sm-3">
            <asp:TextBox ID="tbAboutYou" runat="server" style="height:100px;" TextMode="MultiLine"></asp:TextBox>
        </div>
        <div class="col-sm-7">
            <div style="width:100px; height:100px;">
                <asp:Image ID="imgProfilePic" runat="server" class="profPic" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2">
            Favourite small animal:
        </div>
        <div class="col-sm-3">
            <asp:TextBox ID="tbFavSmallAnimal" runat="server" ></asp:TextBox>
        </div>
        <div class="col-sm-7">
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-sm-2">
            <asp:Button ID="btnSubmitChanges" style="width: 140px" runat="server" Text="Submit Changes" OnClick="btnSubmitChanges_Click" />
        </div>
    </div>
    <br />
     <div class="row">
        <div class="col-sm-12">
            <h2><%: Title %></h2>
        </div>
    </div>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>Change your account settings</h4>
                <hr />
                <dl class="dl-horizontal">
                    <dt>Password:</dt>
                    <dd>
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Change]" Visible="false" ID="ChangePassword" runat="server" />
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Create]" Visible="false" ID="CreatePassword" runat="server" />
                    </dd>
                    <dt>External Logins:</dt>
                    <dd><%: LoginsCount %>
                        <asp:HyperLink NavigateUrl="/Account/ManageLogins" Text="[Manage]" runat="server" />

                    </dd>
                    <%--
                        Phone Numbers can used as a second factor of verification in a two-factor authentication system.
                        See <a href="http://go.microsoft.com/fwlink/?LinkId=403804">this article</a>
                        for details on setting up this ASP.NET application to support two-factor authentication using SMS.
                        Uncomment the following blocks after you have set up two-factor authentication
                    --%>
                    <%--
                    <dt>Phone Number:</dt>
                    <% if (HasPhoneNumber)
                       { %>
                    <dd>
                        <asp:HyperLink NavigateUrl="/Account/AddPhoneNumber" runat="server" Text="[Add]" />
                    </dd>
                    <% }
                       else
                       { %>
                    <dd>
                        <asp:Label Text="" ID="PhoneNumber" runat="server" />
                        <asp:HyperLink NavigateUrl="/Account/AddPhoneNumber" runat="server" Text="[Change]" /> &nbsp;|&nbsp;
                        <asp:LinkButton Text="[Remove]" OnClick="RemovePhone_Click" runat="server" />
                    </dd>
                    <% } %>
                    --%>

                    <dt>Two-Factor Authentication:</dt>
                    <dd>
                        <p>
                            There are no two-factor authentication providers configured. See <a href="http://go.microsoft.com/fwlink/?LinkId=403804">this article</a>
                            for details on setting up this ASP.NET application to support two-factor authentication.
                        </p>
                        <% if (TwoFactorEnabled)
                          { %> 
                        <%--
                        Enabled
                        <asp:LinkButton Text="[Disable]" runat="server" CommandArgument="false" OnClick="TwoFactorDisable_Click" />
                        --%>
                        <% }
                          else
                          { %> 
                        <%--
                        Disabled
                        <asp:LinkButton Text="[Enable]" CommandArgument="true" OnClick="TwoFactorEnable_Click" runat="server" />
                        --%>
                        <% } %>
                    </dd>
                </dl>
            </div>
        </div>
    </div>

</asp:Content>

<%@ Page Title="Assign Roles to a User" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="assignRoles.aspx.cs" Inherits="WebScriptingStartup.Admin.AssignRoles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-sm-12 sidebar">
            <h2>Assign Roles to a given User</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 sidebar">
            <asp:DropDownList ID="ddlUser" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="Id"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbas15aicConnectionString %>" SelectCommand="SELECT [UserName], [Id] FROM [AspNetUsers]"></asp:SqlDataSource>
            should have the role of 
            <asp:DropDownList ID="ddlRole" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Id"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbas15aicConnectionString %>" SelectCommand="SELECT [Id], [Name] FROM [AspNetRoles]"></asp:SqlDataSource>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 sidebar">
            <asp:Button ID="btnAssignRole" runat="server" Text="Assign Role" OnClick="btnAssignRole_Click" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 sidebar">
            <asp:Label ID="lbl_msg" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>

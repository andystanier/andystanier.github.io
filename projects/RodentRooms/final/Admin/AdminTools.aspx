<%@ Page Title="Admin Tools" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminTools.aspx.cs" Inherits="WebScriptingStartup.Admin.AdminTools" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-sm-12 sidebar">
            <h2>Administrator Tools</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 sidebar">
            <ul>
                <li><a href="deleteArticles.aspx">Delete User Articles</a></li>
                <li><a href="assignRoles.aspx">Assign Roles To Users</a></li>
            </ul>
        </div>
    </div>

</asp:Content>

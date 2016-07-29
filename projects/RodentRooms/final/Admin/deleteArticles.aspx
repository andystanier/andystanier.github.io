<%@ Page Title="Delete Advice Articles" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="deleteArticles.aspx.cs" Inherits="WebScriptingStartup.Admin.deleteArticles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12 sidebar">
            <h2>Check The Article to Delete</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 sidebar">
            <asp:CheckBoxList class="checkBoxTag" RepeatColumns="5" ID="cblArticles" runat="server" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="Id"></asp:CheckBoxList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbas15aicConnectionString %>" SelectCommand="SELECT [Id], [Title] FROM [Articles]"></asp:SqlDataSource>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 sidebar">
            <asp:Button ID="btnDeleteArticle" runat="server" Text="Delete" OnClick="btnDeleteArticle_Click" />
        </div>
    </div>
</asp:Content>

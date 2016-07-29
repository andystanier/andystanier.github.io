<%@ Page Title="Database Example" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CapitalsSQLServer.aspx.cs" Inherits="WebScriptingStartup.CapitalsSQLServer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
    </Columns>
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbas15aicConnectionString %>" SelectCommand="SELECT [Country], [City] FROM [WorldCapitals]"></asp:SqlDataSource>
</asp:Content>

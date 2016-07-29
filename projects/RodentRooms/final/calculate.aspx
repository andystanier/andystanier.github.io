<%@ Page Title="Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="calculate.aspx.cs" Inherits="WebScriptingStartup.calculate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    


    <div class="row">
        <div class="col-md-4">
    
            <p>
                <br />
                <asp:Label class="label" ID="Label1" runat="server" Text="First Number"></asp:Label>
                <asp:TextBox class="inputbox" ID="tbNumber1" runat="server"></asp:TextBox>
            </p>
            <p>
                <br />
                
                <asp:Label class="label" ID="Label2" runat="server" Text="Second Number"></asp:Label>
                <asp:TextBox class="inputbox" ID="tbNumber2" runat="server"></asp:TextBox>
            </p>
            <p>
                <br />
                <asp:Button class="btn btn-warning btn-md" ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
            </p>
            <p>
                <br />
                <br />
                <asp:Label class="label" ID="label3" runat="server" Text="Result is: "></asp:Label>
                <asp:Label class="lblResult" ID="lblResult" runat="server" Text="Result"></asp:Label>
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
        </div>
    </div>
</asp:Content>

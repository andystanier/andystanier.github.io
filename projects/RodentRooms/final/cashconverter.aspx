<%@ Page Title="Cash Converter" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cashconverter.aspx.cs" Inherits="WebScriptingStartup.cashconverter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        
        .inputbox, .btn, .lblResult
        {
           position:absolute; left: 150px;
        }
    

    </style>

    <div class="row">
        <div class="col-md-12">
            <p>
                <br />
                <h3>A simple cash converter for Pounds to US Dollars, Euro or Swedish Kroner</h3>
            </p>
            <p class ="label">
                <br />
                Price in Pounds
                <asp:TextBox class="inputbox" ID="tbPounds" runat="server"></asp:TextBox>
            </p>
            <p class ="label">
                <br />
                <br />
                Price in
                <asp:DropDownList ID="ddList" runat="server">
                    <asp:ListItem>USD</asp:ListItem>
                    <asp:ListItem>Euro</asp:ListItem>
                    <asp:ListItem Value="SEK">SEK</asp:ListItem>
                </asp:DropDownList>

                <asp:TextBox class="inputbox" ID="tbCurrency" runat="server"></asp:TextBox>
            </p>
            <p class="label">
                <br />
                <br />
                Rate is
                <asp:Label class ="lblResult" ID="lblRate" runat="server"></asp:Label>
            </p>
            <p>
                <br />
                <asp:Button class="btn btn-warning btn-md" ID="Button1" runat="server" OnClick="Button1_Click" Text="Convert" />
            </p>
        </div>
    </div>

</asp:Content>

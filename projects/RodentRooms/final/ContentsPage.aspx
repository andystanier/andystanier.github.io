<%@ Page Title="Contents" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContentsPage.aspx.cs" Inherits="WebScriptingStartup.Content" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
 
            <p>
                <br />
            </p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbas15aicConnectionString %>" SelectCommand="SELECT * FROM [Menu] WHERE ([Item] = @Item)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Item" QueryStringField="MenuItem" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                <br />
                <br />
            </p>
            <p class="label">
                Add a new Article:
                <br />
                <br />
            </p>
            <p class="label">
                Article Name<br /><asp:TextBox ID="tbArticleName" class="inputbox" runat="server" Height="24px" Width="200px" OnTextChanged="tbArticleName_TextChanged"></asp:TextBox>
                <br />
                <br />
            </p>
            <p class="label">
                Author<br /><asp:TextBox ID="tbAuthor" class="inputbox" runat="server" Height="24px" Width="200px"></asp:TextBox>
                <br />
                <br />
            </p>
            <p class="label">
        
                Date&nbsp&nbsp&nbsp&nbsp<em>format mm/dd/yyyy</em><br /><asp:TextBox ID="tbDate" class="inputbox" runat="server" Height="24px" Width="200px"></asp:TextBox>
                <br />
                <br />
            </p>
            <p class="label">
                Article (please keep to less than 500 words)
                <br />
                <br />
            </p>
            <p>
                <asp:TextBox ID="tbArticleBody" class="inputbox" runat="server" Height="24px" Width="200px"></asp:TextBox>
                <br />
                <br />
            </p>
            <p class="label">
                Add a file.  (jpg or pdf).
            </p>
            <p>
                
                <br />
                <asp:FileUpload class=inputbox ID="fupFile" runat="server" />
                <br />
            </p>
            <p>
                <asp:Label ID="lblmsg2" class="lblResult" runat="server" Text=""></asp:Label>
                <br />
            </p>
            <p>
                <asp:Label ID="lblmsg" class="lblResult" runat="server" Text=""></asp:Label>
                <br />
            </p>
            <p>
                <asp:Button ID="Button2" class="btn btn-warning btn-md" runat="server" Text="Upload" OnClick="Button2_Click" />
                <br />
            </p>
            <p>
                &nbsp;</p>
            
            
            <p>
                &nbsp;</p>
            <p>
                <br />
            </p>
            
            <p>
                Read Recent Articles</p>
            <p>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="Id">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Articles.aspx?ArtID={0}" DataTextField="Title" HeaderText="Title" />
                        <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="JPG" HeaderText="JPG" SortExpression="JPG" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbas15aicConnectionString %>" SelectCommand="SELECT * FROM [Articles]"></asp:SqlDataSource>
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
            </p>
</asp:Content>

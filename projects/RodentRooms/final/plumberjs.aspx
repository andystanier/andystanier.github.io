<%@ Page Title="Plumber's Mate" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="plumberjs.aspx.cs" Inherits="WebScriptingStartup.plumberjs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script>

        function doCalc()
        {
            // define rate of VAT
            var rate = 0.175;

            // get number from input field
            var incVat = parseFloat(document.getElementById("tbIncVat").value);

            // calculate exVat and display in exVat
            var exVat = incVat / (1 + rate);
            document.getElementById("tbExVat").value = exVat.toFixed(2);

            // calculate VAT and display in tbVat
            var vat = exVat * rate;
            document.getElementById("tbVat").value = vat.toFixed(2);
        }

    </script>
    <style>
        .inputbox, .btn, .lblResult
        {
           position:absolute; left: 150px;
        }
    </style>
    

    <div class="row">
        <div class="col-md-12">
            
                <br />
                <h3>Plumber&#39;s Mate - VAT reduction form</h3>
            
            <p class ="label">
                <br />
                Price inc VAT&nbsp;&pound;
                <input class="inputbox" id="tbIncVat" type="text"/>
            </p>
            <p class ="label">
                <br />
                <br />
                VAT @17.5%&nbsp;&pound;
                <input class="inputbox" id="tbVat" type="text" disabled/>
            </p>
            <p>
                <br />
                <input class="btn btn-warning btn-md" id="button" type="button" value="Submit" onclick="doCalc()"/>
                <br />
            </p>
            <p class ="label">
                <br />
                <br />    
                Price ex VAT&nbsp;&nbsp;&pound;
                <input class="lblResult" id="tbExVat" type="text" disabled/>
            </p>
        </div>
    </div>
</asp:Content>

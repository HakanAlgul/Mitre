<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="HardwareTest.aspx.cs" Inherits="Mitre.HardwareTest" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <link href="css/PasswordTest.css" rel="stylesheet" />
    <link href="css/MidtermProject.css" rel="stylesheet" />
    <title>Cyber Security Hardware Additions Test</title>
    <body>
        <div class="navbar">
            <ul>
                <li><a class="active" href="Default.aspx#home">Home</a></li>
                <li><a href="Default.aspx#about">About</a></li>
                <li><a href="Default.aspx#tests">Security Tests</a></li>
                <li><a href="Default.aspx#details">Test Details</a></li>
                <li><a href="Default.aspx#contact">Contact</a></li>
                <li><a href="/HardwareTest" id="navHardware" runat="server" visible="false">Test Hardware</a></li>
                <li><a href="/CredentialsTest" id="navCredentials" runat="server" visible="false">Test Credentials</a></li>
                <li><a href="/History" id="navHistory" runat="server" visible="false">Test Histories</a></li>
                <li style="float: right;">
                    <asp:Button runat="server" ID="btnLogout" OnClick="btnLogout_Click" Text="Logout" BorderColor="#0099CC" BackColor="#00FFCC" Font-Size="X-Large" /></li>
                <li style="float: right; margin-right: 10px">
                    <asp:Button runat="server" ID="btnUser" OnClick="btnUser_Click" Text="Login" BackColor="#00FFCC" BorderColor="#0099CC" Font-Size="X-Large" /></li>
            </ul>
        </div>
        <form id="hardwareTest">
            <div style="margin: 150px; text-align: center" class="container">
                <div class="firstTest">
                    <img src="img/wire.PNG" style="width: 50%;">
                    <h1>Hardware Additions</h1>
                    <p style="padding: 20px">
                        Adversaries may introduce computer accessories, networking hardware, or other computing devices into a system or network that can be used as a
                vector to gain access. Rather than just connecting and distributing payloads via removable storage (i.e. Replication Through Removable Media),
                more robust hardware additions can be used to introduce new functionalities and/or features into a system that can then be abused..
                    </p>

                </div>
                <label for="macAddress" style="font-size: 20px;"><b>Mac Address</b></label>
                <br />
                <asp:TextBox ID="txtUsername" runat="server" Visible="false"></asp:TextBox>
                <asp:TextBox ID="txtMac" runat="server" placeholder="Enter mac address" name="mac" ValidateRequestMode="Enabled" Font-Bold="False" Font-Italic="True" ForeColor="red" BackColor="#CCCCFF" BorderColor="#FF6666" BorderStyle="Groove" Font-Size="X-Large"></asp:TextBox>
                <asp:Button ID="btnHardware" runat="server" Text="Test" Class="btnTest" OnClick="btnHardware_Click" Font-Bold="True" Font-Italic="False" Font-Overline="True" Font-Size="X-Large" BackColor="#33CC33" BorderColor="#FF9900" />
            </div>
        </form>
        <div class="footer">

            <p><a style="text-decoration: none; color: aliceblue;" href="#home">Cyber Security Tests</a>
                <img src="img/Cyber.PNG" alt="cyber security" height="40px" /></p>
        </div>
    </body>
    </html>

</asp:Content>


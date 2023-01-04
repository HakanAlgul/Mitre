<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CredentialsTest.aspx.cs" Inherits="Mitre.CredentialsTest" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <link href="css/PasswordTest.css" rel="stylesheet" />
    <link href="css/MidtermProject.css" rel="stylesheet" />
    <title>Cyber Security Credentials from Password Stores Test</title>
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
        <form id="credentialsTest">
            <div style="margin: 150px; text-align: center;" class="container">

                <img src="img/keys.PNG" style="width: 100%">
                <h1 style="padding-top: 20px;">Credentials from Password Stores</h1>
                <p style="padding: 40px">
                    Adversaries may search for common password storage locations to obtain user credentials.
                Passwords are stored in several places on a system, depending on the operating system or
                application holding the credentials. There are also specific applications that store passwords
                to make it easier for users manage and maintain. Once credentials are obtained, they can
                be used to perform lateral movement and access restricted information.
                </p>
                <label style="font-size: 20px;" for="filename"><b>File Name</b></label><br />
                <asp:TextBox ID="txtUsername" runat="server" Visible="false"></asp:TextBox>
                <asp:TextBox ID="txtFilename" runat="server" placeholder="Enter file name" name="filename" ValidateRequestMode="Enabled" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCCCFF" Width="50%" BorderStyle="Groove" BackColor="#99CCFF" Font-Italic="True"></asp:TextBox>
                <asp:Button ID="btnTest" runat="server" Text="Test" Class="btnTest" OnClick="btnTest_Click" CssClass="button" Font-Size="X-Large" Font-Bold="True" Font-Overline="True" BorderColor="#00CC66" BorderStyle="Groove" BackColor="Lime" ForeColor="#333333" />



            </div>
        </form>
        <div class="footer">

            <p>
                <a style="text-decoration: none; color: aliceblue;" href="#home">Cyber Security Tests</a>
                <img src="img/Cyber.PNG" alt="cyber security" height="40px" />
            </p>
        </div>
    </body>
    </html>

</asp:Content>

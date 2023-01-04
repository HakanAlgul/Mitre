<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Profile.aspx.cs" Inherits="Mitre.Profile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <link href="css/Profile.css" rel="stylesheet" />
    <title></title>
    <body>
        <div>
            <ul class="navbar">
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
        <div style="display: flex; justify-content: center; align-content: center;">
            <form id="profile">
                <div style="background-color: gainsboro; margin: 150px; display: flex; flex-direction: column; padding: 40px; text-align: center;">

                    <asp:TextBox ID="txtAccountId" runat="server" Visible="false"></asp:TextBox>
                    <div>
                        <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtUsername" runat="server" ValidateRequestMode="Enabled" AutoPostBack="false"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtPassword" runat="server" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblCompanyName" runat="server" Text="Company Name"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtCompanyName" runat="server" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtEmail" runat="server" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtPhone" runat="server" ValidateRequestMode="Enabled"></asp:TextBox>
                    </div>
                    <div style="margin-top:10px">
                        <asp:Button ID="btnUpdate" CssClass="btnSignUp" runat="server" Text="Update" OnClick="btnUpdate_Click" UseSubmitBehavior="false" />
                    </div>
                    <div style="margin-top:10px">
                        <asp:Button ID="btnFill" CssClass="btnSignUp" runat="server" Text="Fill" OnClick="btnFill_Click" UseSubmitBehavior="false" />
                    </div>
                </div>
                <div style="padding: 50px; border-radius: 10px; margin: 150px;">
                    <img src="https://i.picsum.photos/id/180/1200/500.jpg?hmac=hguzSwa4-wkScSvdrKcKO4UZgFdFuakXQEL7gYZ8MjY" width="80%" alt="Alternate Text" />
            </form>
        </div>
        <div class="footer">

            <p>
                <a style="text-decoration: none; color: aliceblue;" href="#home">Cyber Security Tests</a>
                <img src="img/Cyber.PNG" alt="cyber security" height="40px" />
            </p>
        </div>
    </body>
    </html>

</asp:Content>

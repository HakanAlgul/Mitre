<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mitre.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/Login.css" rel="stylesheet" />
    <title>Cyber Security Login Page</title>
</head>
<body>
    <div>
        <ul class="navbar">
            <li><a class="active" href="Default.aspx#home">Home</a></li>
            <li><a href="Default.aspx#about">About</a></li>
            <li><a href="Default.aspx#tests">Security Tests</a></li>
            <li><a href="Default.aspx#details">Test Details</a></li>
            <li><a href="Default.aspx#contact">Contact</a></li>
            <li style="float: right;"><a href="SignUp.aspx">Sign Up</a></li>
        </ul>
    </div>
    <form id="login" runat="server">
        <div>
            <div class="imgcontainer">
                <img src="img/Login.PNG" class="avatar" />
            </div>

            <div class="container">
                <label for="username"><b>Username</b></label>
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter Username" name="username" ValidateRequestMode="Enabled"></asp:TextBox>

                <label for="psw"><b>Password</b></label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter Password" name="psw" ValidateRequestMode="Enabled"></asp:TextBox>
                <asp:Button ID="btnLogin" runat="server" Text="Login" Class="btnLogin" OnClick="btnLogin_Click" />
                <label>
                    <asp:CheckBox ID="checkRemember" runat="server" name="remember" />Remember me
                </label>
            </div>

            <div class="container" style="background-color: #f1f1f1">
                <a href="SignUp.aspx" class="register">If you are not a member, register on the site!</a>
            </div>
        </div>
    </form>
    <div class="footer">

        <p><a style="text-decoration: none; color: aliceblue;" href="#home">Cyber Security Tests</a>
            <img src="img/Cyber.PNG" alt="cyber security" height="40px" /></p>
    </div>
</body>
</html>

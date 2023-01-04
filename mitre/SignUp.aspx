<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Mitre.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/SignUp.css" rel="stylesheet" />
    <title>Cyber Security Sign Up Page</title>
</head>
<body>
    <div>
        <ul class="navbar">
            <li><a class="active" href="Default.aspx#home">Home</a></li>
            <li><a href="Default.aspx#about">About</a></li>
            <li><a href="Default.aspx#tests">Security Tests</a></li>
            <li><a href="Default.aspx#details">Test Details</a></li>
            <li><a href="Default.aspx#contact">Contact</a></li>
            <li style="float: right;"><a href="Login.aspx">Sign In</a></li>
        </ul>
    </div>
    <form id="signUp" runat="server">
        <div class="container">
            <h1>Sign Up</h1>
            <p>Please fill in this form to create an account.</p>
            <hr>
            <label for="email"><b>Company Name</b></label>
            <asp:TextBox ID="txtCompanyName" runat="server" placeholder="Enter Company Name" name="name" ValidateRequestMode="Enabled"></asp:TextBox>
            <label for="email"><b>Admin Email</b></label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Enter Email" name="email" ValidateRequestMode="Enabled"></asp:TextBox>
            <label for="phone"><b>Phone Number</b></label>
            <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" placeholder="Enter Phone Number"></asp:TextBox>
            <label for="username"><b>Username</b></label>
            <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter Username" ValidateRequestMode="Enabled"></asp:TextBox>
            <label for="password"><b>Password</b></label>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" placeholder="Enter Password" name="psw"></asp:TextBox>
            <label for="psw-repeat">
                <b>Repeat Password<asp:CompareValidator ID="passwordCompare" runat="server" ErrorMessage=" 'Please enter the same password'" ControlToCompare="txtPasswordRepeat" ControlToValidate="txtPassword"></asp:CompareValidator>
                </b>
            </label>
            &nbsp;<asp:TextBox ID="txtPasswordRepeat" TextMode="Password" runat="server" placeholder="Repeat Password"></asp:TextBox>
            <hr>


            <asp:Button ID="btnSignUp" CssClass="btnSignUp" runat="server" Text="Sign-up" OnClick="btnSignUp_Click" />
        </div>

        <div class="container signin">
            <p>Already have an account? <a href="Login.aspx">Sign in</a>.</p>
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

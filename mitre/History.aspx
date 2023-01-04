<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="History.aspx.cs" Inherits="Mitre.History" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>

    <html>
    <title></title>
    <link href="css/MidtermProject.css" rel="stylesheet" />
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
        <form id="testHistories">
            <div style="display: flex; justify-content: center; margin: 150px; background-color: burlywood; color: black; padding: 30px; font-size: 20px; font-family: 'Times New Roman', Times, serif;">
                <div style="background-color: darkcyan; padding: 40px; margin: 10px; border-radius: 10px; width:50%;">
                    <h1 style="text-align: center">Credentials From Password Stores History</h1>
                    <asp:DataList ID="credentialsHistory" runat="server" DataSourceID="Credentials" RepeatColumns="1">
                        <HeaderTemplate>
                            <asp:Label ID="idHeader" runat="server" Text="Id" style="margin-right:20px; text-decoration:underline; color:saddlebrown"/>
                            <asp:Label ID="filenameHeader" runat="server" Text="Filename" style="margin-right:20px; text-decoration:underline; color:saddlebrown"/>
                            <asp:Label ID="resultHeader" runat="server" Text="Result" style="margin-right:20px; text-decoration:underline; color:saddlebrown"/>
                            <asp:Label ID="usernameHeader" runat="server" Text="Username" style="margin-right:20px; text-decoration:underline; color:saddlebrown"/>
                            <asp:Label ID="dateHeader" runat="server" Text="Date" style="margin-right:20px; text-decoration:underline; color:saddlebrown"/>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' style="margin-right:30px;"/>
                            <asp:Label ID="filenameLabel" runat="server" Text='<%# Eval("filename") %>' style="margin-right:35px;"/>
                            <asp:Label ID="resultLabel" runat="server" Text='<%# Eval("result") %>' style="margin-right:45px;"/>
                            <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' style="margin-right:30px;"/>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# string.Format("{0:dd MM yyyy}" , Eval("date")) %>'/>
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="Credentials" runat="server" ConnectionString="<%$ ConnectionStrings:MitreAttackConnectionString %>" SelectCommand="SELECT [id], [result], [filename], [username], [date] FROM [Credentials_From_Password_Stores]"></asp:SqlDataSource>
                </div>
                <div style="background-color: darkcyan; padding: 40px; margin: 10px; border-radius: 10px; width:50%">
                    <h1 style="text-align: center">Hardware Additions History</h1>
                    <asp:DataList ID="hardwareHistory" runat="server" DataSourceID="Hardware">
                        <HeaderTemplate>
                            <asp:Label ID="idHeader" runat="server" Text="Id" style="margin-right:25px; text-decoration:underline; color:saddlebrown"/>
                            <asp:Label ID="macHeader" runat="server" Text="Mac Address" style="margin-right:55px; text-decoration:underline; color:saddlebrown"/>
                            <asp:Label ID="resultHeader" runat="server" Text="Result" style="margin-right:25px; text-decoration:underline; color:saddlebrown"/>
                            <asp:Label ID="usernameHeader" runat="server" Text="Username" style="margin-right:20px; text-decoration:underline; color:saddlebrown"/>
                            <asp:Label ID="dateHeader" runat="server" Text="Date" style="margin-right:20px; text-decoration:underline; color:saddlebrown"/>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' style="margin-right:15px;"/>
                            <asp:Label ID="checked_deviceLabel" runat="server" Text='<%# Eval("checked_device") %>' style="margin-right:15px;"/>
                            <asp:Label ID="resultLabel" runat="server" Text='<%# Eval("result") %>' style="margin-right:15px;"/>
                            <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' style="margin-right:15px;"/>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# string.Format("{0:dd MM yyyy}", Eval("date")) %>'/>
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="Hardware" runat="server" ConnectionString="<%$ ConnectionStrings:MitreAttackConnectionString2 %>" SelectCommand="SELECT [id], [checked_device], [result], [username], [date] FROM [Hardware_Additions]"></asp:SqlDataSource>
                </div>
            </div>
        </form>
    </body>
    </html>

</asp:Content>

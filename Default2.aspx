<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ASP.NET</title>
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" style="height:720px;">
        <div class="title">Management Information System</div>
        <div class="login">
            <div class="name">
                <div class="text">User ID：&nbsp; </div>
                <div class="val">
                    <asp:TextBox ID="nameVal" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="password">
                <div class="text">Password：&nbsp; </div>
                <div class="val">
                    <asp:TextBox ID="passwordVal" runat="server" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <div class="botton">

                <asp:Button ID="Login" runat="server" Text="Log In" OnClick="Login_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Register.aspx">
                    <input type="button" id="Register" value="Register"/>
                </a>
            </div>
                
        </div>
    </div>
        
    
    </form>
</body>
</html>

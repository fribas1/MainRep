<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOG.aspx.cs" Inherits="RADwebApp.LOG" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emma's | Homepage</title>
    <style type="text/css">
        body {
            margin: auto;
            font-size: 16px;
            font-family: Arial;
            max-width: 100%;
            height: 100%;
            background-image: url("Images/car-background.png");
            background-size: cover;
        }

        .time {
            padding-left: 20px;
        }     

        p {
            padding-bottom: 50px;
        }

        .center {
            background-color: #C0C0C0;
            margin: 0 auto;
            width: 30%;
            border: 3px solid #419A1C;
            padding: 70px 0;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="center">
            <asp:Image src="Images/emmas-logo.png" Alt="emmas-logo" ID="logo" runat="server" /><br /><br />
            <asp:TextBox ID="txtUser" placeholder="Username" runat="server" Height="30px" Width="145px"></asp:TextBox><br /><br />
            <asp:TextBox ID="txtPass" placeholder="Password" runat="server" TextMode="Password" Height="30px" Width="145px"></asp:TextBox><br /><br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Height="50px" Width="120px" />
        </div>
    </form>
</body>
</html>
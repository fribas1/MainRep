<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOG.aspx.cs" Inherits="RADwebApp.LOG" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style13 {
            text-align: center;
            height: 45px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong><span class="auto-style2">Login</span></strong><table class="auto-style10">
            <tr>
                <td class="auto-style1">
    
        <strong>
        <asp:Image src="Images/emmas.png" ID="imgLogo" runat="server" />
        </strong></td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:TextBox ID="txtUser" placeholder="Username" runat="server" Height="30px" Width="145px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:TextBox ID="txtPass" placeholder="Password" runat="server" TextMode="Password" Height="30px" Width="145px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Height="40px" Width="160px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>

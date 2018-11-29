<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerMain.aspx.cs" Inherits="MovieWeb.Formf.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ALL CUSTOMERS" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ALL ORDERS" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="CREATE  A SALE FORM " />
        </div>
    </form>
</body>
</html>

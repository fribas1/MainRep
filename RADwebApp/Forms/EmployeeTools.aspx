<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeTools.aspx.cs" Inherits="MovieWeb.Formf.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="COMMUNICATION TOOLS" />
            <asp:Button ID="Button2" runat="server" Text="INVENTORY" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="MANAGEMENT TOOLS" />
        </div>
    </form>
</body>
</html>

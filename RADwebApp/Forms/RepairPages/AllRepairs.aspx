<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllRepairs.aspx.cs" Inherits="RADwebApp.Forms.RepairPages.AllRepairs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1"><strong>All Repairs</strong></span><br />
            <br />
            <asp:HyperLink ID="hlAllHome" runat="server" NavigateUrl="~/Welcome.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlAllOrder" runat="server" NavigateUrl="~/Forms/RepairPages/OrderTools.aspx">Order Tools</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlAllWarranty" runat="server" NavigateUrl="~/Forms/RepairPages/Warranty.aspx">Warranty</asp:HyperLink>
        </div>
    </form>
</body>
</html>

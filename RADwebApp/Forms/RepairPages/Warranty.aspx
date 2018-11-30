<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Warranty.aspx.cs" Inherits="RADwebApp.Forms.RepairPages.Warranty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong><span class="auto-style1">Warranty</span><br class="auto-style1" />
            </strong>
            <br />
            <asp:HyperLink ID="hlWarrantyHome" runat="server" NavigateUrl="~/Welcome.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlWarrantyAllRepairs" runat="server" NavigateUrl="~/Forms/RepairPages/AllRepairs.aspx">All Repairs</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlWarrantyOrder" runat="server" NavigateUrl="~/Forms/RepairPages/OrderTools.aspx">Order Tools</asp:HyperLink>
        </div>
    </form>
</body>
</html>

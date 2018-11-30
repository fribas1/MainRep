<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderTools.aspx.cs" Inherits="RADwebApp.Forms.RepairPages.OrderTools" %>

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
            <span class="auto-style1"><strong>Order Tools</strong></span><br />
            <br />
            <asp:HyperLink ID="hlOrderHome" runat="server" NavigateUrl="~/Welcome.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlOrderAllRepairs" runat="server" NavigateUrl="~/Forms/RepairPages/AllRepairs.aspx">All Repairs</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlOrderWarranty" runat="server" NavigateUrl="~/Forms/RepairPages/Warranty.aspx">Warranty</asp:HyperLink>
        </div>
    </form>
</body>
</html>

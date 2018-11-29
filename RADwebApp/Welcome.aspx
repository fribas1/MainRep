<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Logintesting.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            margin: auto;
        }
        .auto-style5 {
            width: 486px;
        }
        .auto-style6 {
            text-align: center;
            width: 486px;
        }
        .auto-style7 {
            text-align: center;
            width: 486px;
            font-weight: bold;
        }
        .auto-style8 {
            text-align: center;
            width: 486px;
            font-weight: bold;
            height: 23px;
        }
        .auto-style9 {
            width: 486px;
            height: 23px;
        }
        .auto-style10 {
            width: 584px;
            height: 23px;
        }
        .auto-style11 {
            width: 584px;
        }
        .auto-style12 {
            text-align: center;
            width: 584px;
        }
        .auto-style13 {
            text-align: center;
            width: 584px;
            font-weight: bold;
            height: 23px;
        }
        .auto-style14 {
            text-align: center;
            width: 584px;
            font-weight: bold;
        }
    </style>
</head>
<body style="width: 1460px">
    <form id="form1" runat="server">
    <div style="height: 350px">
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="lblWelcome" runat="server" Text="Welcome "></asp:Label><%=Request.QueryString["User"] %>
                </td>
                <td class="auto-style9">
                    </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Image src="Images/customers-icon.png" Alt="Customers-icon" ID="Image1" runat="server" />
                </td>
                <td class="auto-style6">
                    <asp:Image src="Images/services-icon.png" Alt="services-icon" ID="Image3" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:LinkButton ID="btnSell" runat="server" OnClick="btnSell_Click">CUSTOMER TOOLS</asp:LinkButton>
                </td>
                <td class="auto-style8">
                    <asp:LinkButton ID="btnRepair" runat="server" OnClick="btnRepair_Click">REPAIRS</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Image src="Images/employees-icon.png" Alt="Employees-icon" ID="Image7" runat="server" />
                </td>
                <td class="auto-style6">
                    <asp:Image src="Images/reports-icon.png" Alt="Reports-icon" ID="Image4" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:LinkButton ID="btnEmp" runat="server" OnClick="btnEmp_Click">EMPLOYEE TOOLS</asp:LinkButton>
                </td>
                <td class="auto-style7">
                    <asp:LinkButton ID="btnPolicies" runat="server" OnClick="btnPolicies_Click">POLICIES</asp:LinkButton>
                </td>
            </tr>
            </table>
    
        <br />
    
    </div>
    </form>
</body>
</html>

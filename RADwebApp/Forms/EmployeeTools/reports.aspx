<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reports.aspx.cs" Inherits="management.reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>REPORTS</h1>
            <p>&nbsp;</p>
            <p>Select type:&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Sales</asp:ListItem>
                    <asp:ListItem>Repair</asp:ListItem>
                    <asp:ListItem Value="Warranty"></asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Time:
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>12 Months</asp:ListItem>
                    <asp:ListItem>6 Months</asp:ListItem>
                    <asp:ListItem>3 Months</asp:ListItem>
                    <asp:ListItem>1 Month</asp:ListItem>
                    <asp:ListItem>1 Week</asp:ListItem>
                </asp:DropDownList>
&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Show Report" />
            </p>
            <p>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </p>
            <p>
                <table style="width:100%;">
                    <tr>
                        <td>column1</td>
                        <td>column2</td>
                        <td>column3</td>
                    </tr>
                    <tr>
                        <td>somedata</td>
                        <td>daqtahere</td>
                        <td>and here aawell</td>
                    </tr>
                    <tr>
                        <td>wowata</td>
                        <td>datawow</td>
                        <td>loookat this</td>
                    </tr>
                </table>
            </p>
        </div>
    </form>
</body>
</html>

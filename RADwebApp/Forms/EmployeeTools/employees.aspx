<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employees.aspx.cs" Inherits="management.employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>EMPLOYEES</h1>
            <p>&nbsp;</p>
            <p>Name:&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Filter" Width="61px" />
            </p>
            <p>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </p>
            <p>
                &nbsp;</p>
        </div>
    </form>
</body>
</html>

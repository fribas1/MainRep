<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Repairs.aspx.cs" Inherits="MovieWeb.Repairs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: 15pt;
        }
    </style>
</head>
<body>
    <h2>REPAIRS</h2>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="hlHome" runat="server" EnableTheming="True" NavigateUrl="~/Welcome.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlSell" runat="server" NavigateUrl="~/Sell.aspx">Sell</asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
            <strong><span class="auto-style1">Search repairs:<br />
            </span></strong>
            <asp:Label ID="lblCust" runat="server" Text="Customer Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCustName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblReceipt" runat="server" Text="Receipt ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtReceiptId" runat="server"></asp:TextBox>
            <br />
        </div>
        <asp:Label ID="lblSerType" runat="server" Text="Service Type:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtService" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
        <asp:GridView ID="gvResult" runat="server" AutoGenerateColumns="False" DataSourceID="dbRepairs" Visible="False">
            <Columns>
                <asp:BoundField DataField="Customer" HeaderText="Customer" ReadOnly="True" SortExpression="Customer" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Service Type" HeaderText="Service Type" SortExpression="Service Type" />
                <asp:BoundField DataField="Issue" HeaderText="Issue" SortExpression="Issue" />
                <asp:CheckBoxField DataField="Has Warranty" HeaderText="Has Warranty" SortExpression="Has Warranty" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="dbRepairs" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="RepairsClassLibrary.RepairDataSetTableAdapters.Repairs_searchTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtCustName" Name="Param1" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtReceiptId" Name="Param2" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtService" Name="Param3" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </form>
</body>
</html>

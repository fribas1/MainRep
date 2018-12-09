<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalesReport.aspx.cs" Inherits="RADwebApp.Forms.Sales.SalesReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Sales Report</h2>
            <asp:Panel ID="panelFilters" runat="server">
                <p>Filter by:</p>
                <asp:DropDownList ID="ddlYears" runat="server">
                    <asp:ListItem Selected="True" Value="0">All Years</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlMonths" runat="server">
                    <asp:ListItem Selected="True" Value="0">All Months</asp:ListItem>
                    <asp:ListItem Value="1">January</asp:ListItem>
                    <asp:ListItem Value="2">February</asp:ListItem>
                    <asp:ListItem Value="4">March</asp:ListItem>
                    <asp:ListItem Value="4">April</asp:ListItem>
                    <asp:ListItem Value="5">May</asp:ListItem>
                    <asp:ListItem Value="6">June</asp:ListItem>
                    <asp:ListItem Value="7">July</asp:ListItem>
                    <asp:ListItem Value="8">August</asp:ListItem>
                    <asp:ListItem Value="9">September</asp:ListItem>
                    <asp:ListItem Value="10">October</asp:ListItem>
                    <asp:ListItem Value="11">November</asp:ListItem>
                    <asp:ListItem Value="12">December</asp:ListItem>
                </asp:DropDownList>            
                <asp:DropDownList ID="ddlPayment" runat="server" AppendDataBoundItems="True" DataSourceID="dsPayment" DataTextField="payType" DataValueField="id">
                    <asp:ListItem Selected="True" Value="0">All Types</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Button ID="btnSearch" runat="server" Text="Search" />
            </asp:Panel>
            <br />
            <br />
            <asp:GridView ID="gvSalesReport" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="dsSalesReport">
                <Columns>
                    <asp:BoundField DataField="ordNumber" HeaderText="Order #" SortExpression="ordNumber" />
                    <asp:BoundField DataField="ordDate" HeaderText="Date" SortExpression="ordDate" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="payType" HeaderText="Payment" SortExpression="payType" />
                    <asp:BoundField DataField="orlTotal" HeaderText="Total" ReadOnly="True" SortExpression="orlTotal" />
                    <asp:BoundField DataField="empFull" HeaderText="Employee" ReadOnly="True" SortExpression="empFull" />
                    <asp:BoundField DataField="custFull" HeaderText="Customer" ReadOnly="True" SortExpression="custFull" />
                </Columns>
                <EmptyDataTemplate>
                    No order has matched your criteria.
                </EmptyDataTemplate>
            </asp:GridView>
            <br />
            <asp:Panel ID="panelTotal" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Total of orders in the period:"></asp:Label>
                <asp:TextBox ID="txtTotalNum" runat="server" ReadOnly="True"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Total Amount in the period:"></asp:Label>
                <asp:TextBox ID="txtTotalAmount" runat="server" ReadOnly="True"></asp:TextBox>
            </asp:Panel>
        </div>
        <asp:ObjectDataSource ID="dsSalesReport" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.salesReportTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlYears" DefaultValue="0" Name="year" PropertyName="SelectedValue" Type="Decimal" />
                <asp:ControlParameter ControlID="ddlMonths" DefaultValue="0" Name="month" PropertyName="SelectedValue" Type="Decimal" />
                <asp:ControlParameter ControlID="ddlPayment" DefaultValue="0" Name="payID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsSalesTotalNum" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.salesTotalNumTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlYears" DefaultValue="0" Name="year" PropertyName="SelectedValue" Type="Decimal" />
                <asp:ControlParameter ControlID="ddlMonths" DefaultValue="0" Name="month" PropertyName="SelectedValue" Type="Decimal" />
                <asp:ControlParameter ControlID="ddlPayment" DefaultValue="0" Name="payID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsSalesTotalAmount" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.salesTotalAmountTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlYears" DefaultValue="0" Name="year" PropertyName="SelectedValue" Type="Decimal" />
                <asp:ControlParameter ControlID="ddlMonths" DefaultValue="0" Name="month" PropertyName="SelectedValue" Type="Decimal" />
                <asp:ControlParameter ControlID="ddlPayment" DefaultValue="0" Name="payID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsPayment" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.paymentTableAdapter"></asp:ObjectDataSource>
    </form>
</body>
</html>

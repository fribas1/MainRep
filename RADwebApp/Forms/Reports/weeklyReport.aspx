<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="weeklyReport.aspx.cs" Inherits="RADwebApp.Forms.Reports.weeklyReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            WEEKLY REPORT<br />
            <br />
            ---------------- SALES ---------------------<br />
            <asp:GridView ID="gvWeeklySaleReport" runat="server" AutoGenerateColumns="False" DataSourceID="dsWeeklySaleReport" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ordNumber" HeaderText="Order #" SortExpression="ordNumber" />
                    <asp:BoundField DataField="ordDate" HeaderText="Date" SortExpression="ordDate" />
                    <asp:BoundField DataField="payType" HeaderText="Payment" SortExpression="payType" />
                    <asp:BoundField DataField="orlTotal" HeaderText="Total" SortExpression="orlTotal" ReadOnly="True" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="empFull" HeaderText="Employee" SortExpression="empFull" ReadOnly="True" />
                    <asp:BoundField DataField="custFull" HeaderText="Customer" ReadOnly="True" SortExpression="custFull" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            &nbsp;<asp:Panel ID="panelSale" runat="server">
                Total Sale Amount in the last 7 days:
                <asp:TextBox ID="txtTotalSaleAmount" runat="server" BackColor="Silver" ReadOnly="True"></asp:TextBox>
            </asp:Panel>
            <br />
            <br />
            ---------------- REPAIRS ---------------------<br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="dsWeeklyRepairReport" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ordNumber" HeaderText="Order #" SortExpression="ordNumber" />
                    <asp:BoundField DataField="Order Date" HeaderText="Date" SortExpression="Order Date" />
                    <asp:BoundField DataField="payType" HeaderText="Payment" SortExpression="payType" />
                    <asp:BoundField DataField="serPrice" HeaderText="Total" SortExpression="serPrice" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="Service" HeaderText="Service" SortExpression="Service" />
                    <asp:BoundField DataField="empLast" HeaderText="Employee" SortExpression="empLast" ReadOnly="True" />
                    <asp:BoundField DataField="custFull" HeaderText="Customer" SortExpression="custFull" ReadOnly="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            &nbsp;<asp:Panel ID="panelRepair" runat="server">
                Total Repair Amount in the last 7 days:
                <asp:TextBox ID="txtTotalRepairAmount" runat="server" BackColor="Silver" ReadOnly="True"></asp:TextBox>
            </asp:Panel>
            <br />
            <br />
        </div>
        <asp:ObjectDataSource ID="dsWeeklySaleReport" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.weeklySaleReportTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsWeeklyRepairReport" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.weeklyRepairReportTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsTotalSaleAmount" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.totalWeeklySaleReportTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsTotalRepairAmount" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.totalWeeklyRepairReportTableAdapter"></asp:ObjectDataSource>
    </form>
</body>
</html>

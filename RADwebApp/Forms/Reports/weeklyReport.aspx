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
            <asp:GridView ID="gvWeeklySaleReport" runat="server" AutoGenerateColumns="False" DataSourceID="dsWeeklySaleReport">
                <Columns>
                    <asp:BoundField DataField="ordNumber" HeaderText="ordNumber" SortExpression="ordNumber" />
                    <asp:BoundField DataField="ordDate" HeaderText="ordDate" SortExpression="ordDate" />
                    <asp:BoundField DataField="payType" HeaderText="payType" SortExpression="payType" />
                    <asp:BoundField DataField="orlPrice" HeaderText="orlPrice" SortExpression="orlPrice" />
                    <asp:BoundField DataField="orlQuantity" HeaderText="orlQuantity" SortExpression="orlQuantity" />
                    <asp:BoundField DataField="orlTotal" HeaderText="orlTotal" ReadOnly="True" SortExpression="orlTotal" />
                    <asp:BoundField DataField="empFull" HeaderText="empFull" ReadOnly="True" SortExpression="empFull" />
                    <asp:BoundField DataField="custFull" HeaderText="custFull" ReadOnly="True" SortExpression="custFull" />
                </Columns>
            </asp:GridView>
            <br />
            ---------------- REPAIRS ---------------------<br />
            <asp:GridView ID="GridView2" runat="server">
            </asp:GridView>
            <br />
            <br />
        </div>
        <asp:ObjectDataSource ID="dsWeeklySaleReport" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.weeklySaleReportTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
    </form>
</body>
</html>

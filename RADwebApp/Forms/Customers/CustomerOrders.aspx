<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerOrders.aspx.cs" Inherits="RADwebApp.CustomerOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2><%=Request.QueryString["first"] + " " + Request.QueryString["last"] + "'s Orders" %></h2>
        <div>      
            <asp:Panel ID="panelSales" runat="server">
                <h2>Sales</h2>
                <asp:GridView ID="gvCustomerOrders" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="dsCustomerOrders">
                    <Columns>
                        <asp:BoundField DataField="ordNumber" HeaderText="Order #" SortExpression="ordNumber" />
                        <asp:BoundField DataField="ordDate" DataFormatString="{0:d}" HeaderText="Date" SortExpression="ordDate" />
                        <asp:BoundField DataField="prodName" HeaderText="Product" SortExpression="prodName" />
                        <asp:BoundField DataField="prodBrand" HeaderText="Brand" SortExpression="prodBrand" />
                        <asp:BoundField DataField="orlQuantity" HeaderText="Quantity" SortExpression="orlQuantity" />
                        <asp:BoundField DataField="orlPrice" DataFormatString="{0:C}" HeaderText="Price" SortExpression="orlPrice" />
                        <asp:BoundField DataField="orlTotal" DataFormatString="{0:C}" HeaderText="Total" SortExpression="orlTotal" />
                        <asp:BoundField DataField="empFull" HeaderText="Employee" ReadOnly="True" SortExpression="empFull" />
                    </Columns>
                    <EmptyDataTemplate>
                        This customer does not have any orders yet.
                    </EmptyDataTemplate>
                </asp:GridView>
            </asp:Panel>
            <asp:Panel ID="panelRepairs" runat="server">
                <asp:GridView ID="gvCustomerRepairs" runat="server" AutoGenerateColumns="False" DataSourceID="dsCustomerRepairs">
                    <Columns>
                        <asp:BoundField DataField="ordNumber" HeaderText="ordNumber" SortExpression="ordNumber" />
                        <asp:BoundField DataField="ordDate" HeaderText="ordDate" SortExpression="ordDate" />
                        <asp:BoundField DataField="payType" HeaderText="payType" SortExpression="payType" />
                        <asp:BoundField DataField="empFirst" HeaderText="empFirst" SortExpression="empFirst" />
                        <asp:BoundField DataField="empLast" HeaderText="empLast" SortExpression="empLast" />
                        <asp:BoundField DataField="serName" HeaderText="serName" SortExpression="serName" />
                        <asp:BoundField DataField="serPrice" HeaderText="serPrice" SortExpression="serPrice" />
                        <asp:BoundField DataField="eqtType" HeaderText="eqtType" SortExpression="eqtType" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>
            <br />
            <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" />
            <asp:ObjectDataSource ID="dsCustomerOrders" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.customerOrdersTableAdapter">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="0" Name="Param1" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="dsCustomerRepairs" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.customerRepairsTableAdapter">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="0" Name="Param1" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
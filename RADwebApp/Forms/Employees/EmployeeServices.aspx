<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeServices.aspx.cs" Inherits="RADwebApp.Forms.Employees.EmployeeServices" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2><%=Request.QueryString["first"] + " " + Request.QueryString["last"] + "'s Services" %></h2>        
        <div>
            <asp:Panel runat="server" ID="panelRepairs" Visible="False">
                <h3>Repairs</h3>
                <asp:GridView ID="gvEmployeeRepairs" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="dsEmployeeRepairs">
                    <Columns>
                        <asp:BoundField DataField="ordNumber" HeaderText="Order #" SortExpression="ordNumber" />
                        <asp:BoundField DataField="ordDate" HeaderText="Date" SortExpression="ordDate" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="custName" HeaderText="Customer" ReadOnly="True" SortExpression="custName" />
                        <asp:BoundField DataField="eqtType" HeaderText="Equipment" SortExpression="eqtType" />
                        <asp:BoundField DataField="serPrice" HeaderText="Price" SortExpression="serPrice" DataFormatString="{0:C}" />
                    </Columns>
                    <EmptyDataTemplate>
                        This employee has no repairs services.
                    </EmptyDataTemplate>
                </asp:GridView>
            </asp:Panel>            
            <asp:Panel runat="server" ID="panelSales" Visible="False">
                <h3>Sales</h3>
                <asp:GridView ID="gvEmployeeSales" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="dsEmployeeSales">
                    <Columns>
                        <asp:BoundField DataField="ordNumber" HeaderText="Order #" SortExpression="ordNumber" />
                        <asp:BoundField DataField="ordDate" HeaderText="Date" SortExpression="ordDate" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="custName" HeaderText="Customer" ReadOnly="True" SortExpression="custName" />
                        <asp:BoundField DataField="prodName" HeaderText="Product" SortExpression="prodName" />
                        <asp:BoundField DataField="orlQuantity" HeaderText="Quantity" SortExpression="orlQuantity" />
                        <asp:BoundField DataField="orlPrice" HeaderText="Price" SortExpression="orlPrice" DataFormatString="{0:C}" />
                    </Columns>
                    <EmptyDataTemplate>
                        This employee has no sales services.
                    </EmptyDataTemplate>
                </asp:GridView>
            </asp:Panel>
            <asp:Panel runat="server" ID="panelNone" Visible="False">
                <p>This employee is not directly related to any Sales or Repairs services.</p>
            </asp:Panel>
        </div>
        <asp:SqlDataSource ID="dsEmployeeRepairs" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT receipt.ordNumber, receipt.ordDate, customer.custFirst + ' ' + customer.custLast AS custName, equip_type.eqtType, service.serPrice, receipt.empID FROM receipt INNER JOIN service_order ON receipt.id = service_order.receiptID INNER JOIN customer ON receipt.custID = customer.id INNER JOIN service ON service_order.serviceID = service.id INNER JOIN equipment ON service_order.equipID = equipment.id AND customer.id = equipment.custID INNER JOIN equip_type ON equipment.equtypeID = equip_type.id WHERE (service_order.empID = @Param1) ORDER BY receipt.ordNumber, receipt.ordDate">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="Param1" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="dsEmployeeSales" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT receipt.ordNumber, receipt.ordDate, receipt.empID, order_line.orlPrice, order_line.orlQuantity, product.prodName, customer.custFirst + ' ' + customer.custLast AS custName FROM receipt INNER JOIN order_line ON receipt.id = order_line.receiptID INNER JOIN inventory ON order_line.inventoryID = inventory.id INNER JOIN product ON inventory.productID = product.id INNER JOIN customer ON receipt.custID = customer.id WHERE (receipt.empID = @Param1) ORDER BY receipt.ordNumber, receipt.ordDate">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="Param1" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

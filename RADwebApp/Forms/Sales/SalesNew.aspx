<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalesNew.aspx.cs" Inherits="RADwebApp.Forms.Sales.SalesNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            ADD NEW SALE<br />
            <br />
                    <p>Order #:</p>
                        <asp:TextBox ID="txtOrderNumber" runat="server" BackColor="Silver" ReadOnly="True" Width="55px"></asp:TextBox>
                        <asp:Label ID="lbltest" runat="server" Text="Label"></asp:Label>
                    <p>Order Date:</p>
                    <td class="auto-style14">
                        <asp:TextBox ID="txtOrderDate" runat="server" BackColor="Silver" ReadOnly="True" Width="105px"></asp:TextBox>
                    <p>Payment Type:</p>
                        <asp:DropDownList ID="ddlPaymentType" runat="server" AppendDataBoundItems="True" DataSourceID="dsPayment" DataTextField="payType" DataValueField="id">
                            <asp:ListItem Value="0">Select a type</asp:ListItem>
                        </asp:DropDownList>
                    <p>Customer:</p>
                        <asp:DropDownList ID="ddlCustomer" runat="server" AppendDataBoundItems="True" DataSourceID="dsSalesCustomer" DataTextField="custFull" DataValueField="id">
                            <asp:ListItem Value="0">Select a customer</asp:ListItem>
                        </asp:DropDownList>
                    <p>Employee:</p>
                        <asp:DropDownList ID="ddlEmployee" runat="server" AppendDataBoundItems="True" DataSourceID="dsSalesEmployee" DataTextField="empFull" DataValueField="id">
                            <asp:ListItem Value="0">Select an employee</asp:ListItem>
                        </asp:DropDownList>
                    <p>Product:</p>
                        <asp:DropDownList ID="ddlProduct" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="dsDDLSalesProducts" DataTextField="prodName" DataValueField="id">
                            <asp:ListItem Value="0">Select a product</asp:ListItem>
                        </asp:DropDownList>


                        <asp:DetailsView ID="dvSalesProducts" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="dsDVSalesProducts" ForeColor="#333333" GridLines="None" Height="50px" Width="226px">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="prodName" HeaderText="Product Name" SortExpression="prodName" />
                                <asp:BoundField DataField="prodBrand" HeaderText="Brand" SortExpression="prodBrand" />
                                <asp:BoundField DataField="invPrice" DataFormatString="{0:C}" HeaderText="Price" SortExpression="invPrice" />
                                <asp:BoundField DataField="invQuantity" HeaderText="Inventory Quantity" SortExpression="invQuantity" />
                                <asp:BoundField DataField="prodDescription" HeaderText="Description" SortExpression="prodDescription" />
                            </Fields>
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                        </asp:DetailsView>
                    </td>
                    <td class="auto-style34"></td>
                    <td class="auto-style22"></td>
                    <td class="auto-style26"></td>
                    <td class="auto-style30"></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td class="auto-style19">Quantity:</td>
                    <td class="auto-style20">
                        <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number" Width="61px"></asp:TextBox>
                    </td>
                    <td class="auto-style34"></td>
                    <td class="auto-style22"></td>
                    <td class="auto-style26"></td>
                    <td class="auto-style30"></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Order Notes:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtOrderNote" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="auto-style32">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Order Request:</td>
                    <td class="auto-style13">
                        <asp:RadioButtonList ID="rblOrderReq" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="False">No</asp:ListItem>
                            <asp:ListItem Value="True">Yes</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style32">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style32">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <asp:Button ID="btnAddNew" runat="server" Text="Add New" OnClick="btnAddNew_Click" />
            <br />
            <br />
            <asp:Label ID="lblSave" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="dsReceipt">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="ordNumber" HeaderText="ordNumber" SortExpression="ordNumber" />
                    <asp:BoundField DataField="ordDate" HeaderText="ordDate" SortExpression="ordDate" />
                    <asp:CheckBoxField DataField="ordPaid" HeaderText="ordPaid" SortExpression="ordPaid" />
                    <asp:BoundField DataField="paymentID" HeaderText="paymentID" SortExpression="paymentID" />
                    <asp:BoundField DataField="custID" HeaderText="custID" SortExpression="custID" />
                    <asp:BoundField DataField="empID" HeaderText="empID" SortExpression="empID" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
        </div>
        <asp:ObjectDataSource ID="dsPayment" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.paymentTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsReceipt" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.receiptTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ordNumber" Type="String" DefaultValue="<%orderNum%>" />
                <asp:Parameter Name="ordDate" Type="DateTime" DefaultValue="<%date%>" />
                <asp:Parameter Name="ordPaid" Type="Boolean" DefaultValue="<%paid%>" />
                <asp:Parameter Name="paymentID" Type="Int32" DefaultValue="<%payTypeID%>" />
                <asp:Parameter Name="custID" Type="Int32" DefaultValue="<%custID%>" />
                <asp:Parameter Name="empID" Type="Int32" DefaultValue="<%empID%>" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ordNumber" Type="String" />
                <asp:Parameter Name="ordDate" Type="DateTime" />
                <asp:Parameter Name="ordPaid" Type="Boolean" />
                <asp:Parameter Name="paymentID" Type="Int32" />
                <asp:Parameter Name="custID" Type="Int32" />
                <asp:Parameter Name="empID" Type="Int32" />
                <asp:Parameter Name="Original_id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsSalesCustomer" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.salesCustomerTableAdapter">
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsSalesEmployee" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.salesEmployeeTableAdapter">
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsNextOrder" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.receiptNextOrderTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsDDLSalesProducts" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.ddlSalesProductsTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsDVSalesProducts" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.detailsSalesProductTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlProduct" DefaultValue="0" Name="prodID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsOrderLine" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.orderLineTableAdapter" DeleteMethod="Delete" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="orlPrice" Type="Decimal" />
                <asp:Parameter Name="orlQuantity" Type="Int32" />
                <asp:Parameter Name="orlOrderReq" Type="Boolean" />
                <asp:Parameter Name="orlNote" Type="String" />
                <asp:Parameter Name="inventoryID" Type="Int32" />
                <asp:Parameter Name="receiptID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="orlPrice" Type="Decimal" />
                <asp:Parameter Name="orlQuantity" Type="Int32" />
                <asp:Parameter Name="orlOrderReq" Type="Boolean" />
                <asp:Parameter Name="orlNote" Type="String" />
                <asp:Parameter Name="inventoryID" Type="Int32" />
                <asp:Parameter Name="receiptID" Type="Int32" />
                <asp:Parameter Name="Original_id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsLastReceiptID" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.receiptLastIDTableAdapter"></asp:ObjectDataSource>
    </form>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="salesUpdate.aspx.cs" Inherits="RADwebApp.Forms.Sales.salesUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            EDIT SALE</p>
        <p>
            Order #:
            <asp:TextBox ID="txtOrderNum" runat="server"></asp:TextBox>
&nbsp;
        </p>
        <p>
            Payment Type:
            <asp:DropDownList ID="ddlPayType" runat="server" DataSourceID="dsPayType" DataTextField="payType" DataValueField="id">
            </asp:DropDownList>
        </p>
        <p>
            Product:
            <asp:DropDownList ID="ddlProduct" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="dsProduct" DataTextField="prodName" DataValueField="id">
                <asp:ListItem Value="0">Select a product</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:DetailsView ID="dvProduct" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
        </p>
        <p>
            Quantity:
            <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
        </p>
        <p>
            Order Notes:
            <asp:TextBox ID="txtNotes" runat="server"></asp:TextBox>
        </p>
        <p>
            Customer:
            <asp:DropDownList ID="ddlCust" runat="server" DataSourceID="dsCustomer" DataTextField="custFull" DataValueField="id">
            </asp:DropDownList>
        </p>
        <p>
            Employee:
            <asp:DropDownList ID="ddlEmp" runat="server" DataSourceID="dsEmployee" DataTextField="empFull" DataValueField="id">
            </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="btnSave" runat="server" Text="Save" />
&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear" />
        </p>
        <p>
            <asp:ObjectDataSource ID="dsPayType" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.paymentTableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="dsProduct" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.ddlSalesProductsTableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="dsCustomer" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.salesCustomerTableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="dsEmployee" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.salesEmployeeTableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.detailsSalesProductTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlProduct" DefaultValue="0" Name="prodID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>

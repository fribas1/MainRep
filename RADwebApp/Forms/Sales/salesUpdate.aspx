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
            <asp:Label ID="lblSave" runat="server" ForeColor="Red"></asp:Label>
        </p>
        <p>
            Order #:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtOrderNum" ErrorMessage="Order # cannot be empty." ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="txtOrderNum" runat="server"></asp:TextBox>
&nbsp;
        </p>
        <p>
            Payment Type:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlPayType" ErrorMessage="You must select a payment type." ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlPayType" runat="server" DataSourceID="dsPayType" DataTextField="payType" DataValueField="id">
            </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="btnViewCart" runat="server" OnClick="btnViewCart_Click" Text="View Shopping Cart" />
        </p>
        <p>
            <asp:ListBox ID="lbCart" runat="server" Visible="False"></asp:ListBox>
        </p>
        <p>
            <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="Select" />
        </p>
        <p>
            Quantity:
            <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number"></asp:TextBox>
        </p>
        <p>
            Order Notes:
            <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine"></asp:TextBox>
        </p>
        <p>
            Customer:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlCust" ErrorMessage="You must select a customer." ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlCust" runat="server" DataSourceID="dsCustomer" DataTextField="custFull" DataValueField="id">
            </asp:DropDownList>
        </p>
        <p>
            Employee:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlEmp" ErrorMessage="You must select a employee." ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlEmp" runat="server" DataSourceID="dsEmployee" DataTextField="empFull" DataValueField="id">
            </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear" />
        </p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Please, fix the following:" />
        <p>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:ObjectDataSource ID="dsPayType" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.paymentTableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="dsCustomer" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.salesCustomerTableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="dsEmployee" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.salesEmployeeTableAdapter"></asp:ObjectDataSource>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>

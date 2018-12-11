<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="RADwebApp.Forms.Inventory.Inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="panelFilter" runat="server">    
                <asp:DropDownList ID="ddlBrands" runat="server" AppendDataBoundItems="True" DataSourceID="dsBrands" DataTextField="prodBrand" DataValueField="prodBrand">
                    <asp:ListItem Selected="True">All Brands</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="txtName" PlaceHolder="Product name..." runat="server"></asp:TextBox>                
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
            </asp:Panel> 
            <asp:GridView ID="gvInventory" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="dsInventory" OnRowDataBound="gvInventory_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="prodName" HeaderText="Product" ReadOnly="True" SortExpression="prodName" />
                    <asp:BoundField DataField="prodDescription" HeaderText="Description" SortExpression="prodDescription" />
                    <asp:BoundField DataField="invSize" HeaderText="Size" ReadOnly="True" SortExpression="invSize" />
                    <asp:BoundField DataField="invPrice" HeaderText="Price" SortExpression="invPrice" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="invQuantity" HeaderText="Quantity in Stock" SortExpression="invQuantity" />
                    <asp:CommandField SelectText="Order" ShowSelectButton="True" />
                </Columns>
                <EmptyDataTemplate>
                    No item has matched your criteria.
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
        <asp:ObjectDataSource ID="dsInventory" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.inventoryTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlBrands" DefaultValue="All Brands" Name="prodBrand" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="txtName" ConvertEmptyStringToNull="False" DefaultValue="" Name="prodName" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsBrands" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.productBrandTableAdapter"></asp:ObjectDataSource>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalesNew.aspx.cs" Inherits="RADwebApp.Forms.Sales.SalesNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--        START OF NAVIGATION--%>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="Welcome.aspx">Emma's Kiosk</a>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item"><a class="nav-link" href="/Welcome.aspx">Home</a></li>
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">Customers</a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="Forms/Customers/Customers.aspx">Search</a>
                                <div class="dropdown-divider"></div>
                                <%if ((User.Identity.Name == "admin") || (User.Identity.Name == "manager") || (User.Identity.Name == "sales"))
                                    { %>
                                <a class="dropdown-item" href="Forms/Customers/Customers.aspx?mode=addNew">Add New</a>
                                <%if (User.Identity.Name == "admin")
                                    { %>
                                <a class="dropdown-item" href="Forms/Customers/Customers.aspx?mode=edit">Edit</a>
                                <a class="dropdown-item" href="Forms/Customers/Customers.aspx?mode=delete">Remove</a>
                                <% } %>
                                <% } %>
                            </div>
                        </li>
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">Services</a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="Forms/RepairPages/AllRepairs.aspx">Repairs</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="Forms/Sales/searchSales.aspx">Search for a Sale</a>
                                <%if (User.Identity.Name == "admin")
                                    { %>
                                <a class="dropdown-item" href="Forms/Sales/SalesNew.aspx">New Sale</a>
                                <% } %>
                            </div>
                        </li>
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">Employees</a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="Forms/Employees/Employees.aspx">Search</a>
                                <div class="dropdown-divider"></div>
                                <%if ((User.Identity.Name == "admin") || (User.Identity.Name == "manager"))
                                    { %>
                                <a class="dropdown-item" href="Forms/Customers/Customers.aspx?mode=addNew">Add New</a>
                                <a class="dropdown-item" href="Forms/Customers/Customers.aspx?mode=edit">Edit</a>
                                <%if (User.Identity.Name == "admin")
                                    { %>
                                <a class="dropdown-item" href="Forms/Customers/Customers.aspx?mode=delete">Remove</a>
                                <% } %>
                                <% } %>
                            </div>
                        </li>
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">Orders</a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="/Forms/Inventory/Inventory.aspx">Inventory</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="Forms/RepairPages/OrderTools.aspx">Order Tools</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">Documents</a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Reports</a>
                                <a class="dropdown-item" href="Forms/RepairPages/Warranty.aspx">Warranty Records</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Policies</a>
                            </div>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                        <asp:Button runat="server" ID="btnLogout" OnClick="btnLogout_Click" CssClass="btn btn-outline-danger my-2 my-sm-0" Text="Log Out"></asp:Button>
                    </form>
                </div>
            </nav>        <%--END OF NAVIGATION--%>

            <div class="container mt-3 text-center">
            ADD NEW SALE<br />
                <div class="row mt-3">
                    <div class="col-lg-4 text-center m-auto">
            <label for="txtOrderNumber">Order #:</label>
            <asp:TextBox CssClass="form-control" ID="txtOrderNumber" runat="server" BackColor="Silver" ReadOnly="True" Width="55px"></asp:TextBox>
            <asp:Label ID="lbltest" runat="server" Text="Label"></asp:Label>
                <br />
            <label for="txtOrderDate">Order Date:</label>
            <td class="auto-style14">
                <asp:TextBox CssClass="form-control" ID="txtOrderDate" runat="server" BackColor="Silver" ReadOnly="True" Width="105px"></asp:TextBox>
                <br />
                <label for="ddlPaymentType">Payment Type:</label>
                <asp:DropDownList CssClass="form-control" ID="ddlPaymentType" runat="server" AppendDataBoundItems="True" DataSourceID="dsPayment" DataTextField="payType" DataValueField="id">
                    <asp:ListItem Value="0">Select a type</asp:ListItem>
                </asp:DropDownList>
                <br />
                <label for="ddlCustomer">Customer:</label>
                <asp:DropDownList CssClass="form-control" ID="ddlCustomer" runat="server" AppendDataBoundItems="True" DataSourceID="dsSalesCustomer" DataTextField="custFull" DataValueField="id">
                    <asp:ListItem Value="0">Select a customer</asp:ListItem>
                </asp:DropDownList>
                <br />
                <label for="ddlEmployee">Employee:</label>
                <asp:DropDownList CssClass="form-control" ID="ddlEmployee" runat="server" AppendDataBoundItems="True" DataSourceID="dsSalesEmployee" DataTextField="empFull" DataValueField="id">
                    <asp:ListItem Value="0">Select an employee</asp:ListItem>
                </asp:DropDownList>
              


                <br />
                <label for="ddlProduct">Product:</label>
                <asp:DropDownList CssClass="form-control" ID="ddlProduct" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="dsDDLSalesProducts" DataTextField="prodName" DataValueField="id">
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
                <br />
                <label for="txtQuantity">Quantity:</label>
                <asp:TextBox CssClass="form-control" ID="txtQuantity" runat="server" TextMode="Number" Width="61px"></asp:TextBox>
                <br />
                <label for="txtOrderNote">Order Notes:</label>
                <asp:TextBox CssClass="form-control" ID="txtOrderNote" runat="server" TextMode="MultiLine"></asp:TextBox>
                <br />
                <label for="rblOrderReq">Order Request:</label>
                <asp:RadioButtonList CssClass="custom-radio" ID="rblOrderReq" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="False">No</asp:ListItem>
                    <asp:ListItem Value="True">Yes</asp:ListItem>
                </asp:RadioButtonList>
                <asp:Button ID="btnAddNew" runat="server" Text="Add New" OnClick="btnAddNew_Click" />
                <asp:Label ID="lblSave" runat="server" Text="Label"></asp:Label>
                </div>
              </div>
                    </div>


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
        <asp:ObjectDataSource ID="dsSalesCustomer" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.salesCustomerTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsSalesEmployee" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.salesEmployeeTableAdapter"></asp:ObjectDataSource>
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

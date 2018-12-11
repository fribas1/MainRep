<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="RADwebApp.Forms.Inventory.Inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js crossorigin="anonymous""></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js crossorigin="anonymous""></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js crossorigin="anonymous""></script>

</head>
<body>
    <form id="form1" runat="server">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="Welcome.aspx">Emma's Kiosk</a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="/Welcome.aspx">Home</a></li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">Customers</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="Forms/Customers/Customers.aspx">Search</a> 
                            <div class="dropdown-divider"></div>
                            <%if ((User.Identity.Name == "admin") || (User.Identity.Name == "manager") || (User.Identity.Name == "sales")) { %>                                
                                <a class="dropdown-item" href="Forms/Customers/Customers.aspx?mode=addNew">Add New</a>
                                <%if (User.Identity.Name == "admin") { %>
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
                            <%if (User.Identity.Name == "admin") { %>                                
                                <a class="dropdown-item" href="Forms/Sales/SalesNew.aspx">New Sale</a>
                            <% } %>                                                        
                        </div>
                    </li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">Employees</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="Forms/Employees/Employees.aspx">Search</a>  
                            <div class="dropdown-divider"></div>
                            <%if ((User.Identity.Name == "admin") || (User.Identity.Name == "manager")) { %>                                
                                <a class="dropdown-item" href="Forms/Customers/Customers.aspx?mode=addNew">Add New</a>
                                <a class="dropdown-item" href="Forms/Customers/Customers.aspx?mode=edit">Edit</a>
                                <%if (User.Identity.Name == "admin") { %>                                    
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
        </nav>

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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllRepairs.aspx.cs" Inherits="RADwebApp.Forms.RepairPages.AllRepairs" %>

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
            </nav>



        <div>
            <span class="auto-style1"><strong>All Repairs</strong></span><br />
            <br />
            <asp:HyperLink ID="hlAllHome" runat="server" NavigateUrl="~/Welcome.aspx">Home</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;
           
            <asp:HyperLink ID="hlAllOrder" runat="server" NavigateUrl="~/Forms/RepairPages/OrderTools.aspx">Order Tools</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;
           
            <asp:HyperLink ID="hlAllWarranty" runat="server" NavigateUrl="~/Forms/RepairPages/Warranty.aspx">Warranty</asp:HyperLink>
            <br />
            <br />
            <asp:GridView ID="gvAllRepairs" runat="server" AutoGenerateColumns="False" DataSourceID="dsAllRepairs">
                <Columns>
                    <asp:BoundField DataField="Customer" HeaderText="Customer" SortExpression="Customer" />
                    <asp:BoundField DataField="Employee" HeaderText="Employee" SortExpression="Employee" />
                    <asp:BoundField DataField="Order Date" HeaderText="Order Date" SortExpression="Order Date" />
                    <asp:BoundField DataField="Service" HeaderText="Service" SortExpression="Service" />
                    <asp:BoundField DataField="Date IN" HeaderText="Date IN" SortExpression="Date IN" />
                    <asp:BoundField DataField="Date OUT" HeaderText="Date OUT" SortExpression="Date OUT" />
                    <asp:BoundField DataField="Issue description" HeaderText="Issue description" SortExpression="Issue description" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:ObjectDataSource ID="dsAllRepairs" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.AllRepairsTableAdapter"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>

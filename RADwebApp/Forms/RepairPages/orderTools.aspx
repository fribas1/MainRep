<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderTools.aspx.cs" Inherits="RADwebApp.Forms.RepairPages.OrderTools" %>

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



        <div class="container mt-4">
            <h3>Order Tools</h3>
            <br />
            <asp:HyperLink CssClass="btn btn-light" ID="hlOrderAllRepairs" runat="server" NavigateUrl="~/Forms/RepairPages/AllRepairs.aspx">All Repairs</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink CssClass="btn btn-light" ID="hlOrderWarranty" runat="server" NavigateUrl="~/Forms/RepairPages/Warranty.aspx">Warranty</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:GridView CssClass="table table-striped table-bordered table-responsive-lg" ID="gvToolOrders" runat="server" AutoGenerateColumns="False" DataSourceID="dbOrderTools">
                <Columns>
                    <asp:BoundField DataField="Customer First Name" HeaderText="Customer First Name" SortExpression="Customer First Name" />
                    <asp:BoundField DataField="Customer Last Name" HeaderText="Customer Last Name" SortExpression="Customer Last Name" />
                    <asp:BoundField DataField="Employee First Name" HeaderText="Employee First Name" SortExpression="Employee First Name" />
                    <asp:BoundField DataField="Employee Last Name" HeaderText="Employee Last Name" SortExpression="Employee Last Name" />
                    <asp:BoundField DataField="Equipment Model" HeaderText="Equipment Model" SortExpression="Equipment Model" />
                    <asp:BoundField DataField="Equipment Serial No" HeaderText="Equipment Serial No" SortExpression="Equipment Serial No" />
                    <asp:BoundField DataField="Equipment Type" HeaderText="Equipment Type" SortExpression="Equipment Type" />
                    <asp:BoundField DataField="Order Number" HeaderText="Order Number" SortExpression="Order Number" />
                    <asp:BoundField DataField="Order Date" HeaderText="Order Date" SortExpression="Order Date" />
                    <asp:CheckBoxField DataField="Paid?" HeaderText="Paid?" SortExpression="Paid?" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Button CssClass="btn btn-light" ID="btnNewOrder" runat="server" OnClick="btnNewOrder_Click" Text="New Order" />
            <br />
            <br />
            <br />
            <br />
            <div id="insertPanel" class="insertPanel">          
            <asp:Panel ID="panelInsert" runat="server" Height="296px" Visible="False" Width="286px">
                <div class="row">
                <div class="form-group col-lg-4">
                <asp:Label ID="lblCustFirst" runat="server" Text="Customer First Name:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtCustFirst" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblCustLast" runat="server" Text="Customer Last Name:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtCustLast" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblEmpFirst" runat="server" Text="Employee First Name:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtEmpFirst" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblEmpLast" runat="server" Text="Employee Last Name:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtEmpLast" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblEqpMod" runat="server" Text="Equipment Model:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="form-control" ID="txtEqpMod" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblEqpSer" runat="server" Text="Equipment Serial No.:"></asp:Label>
                &nbsp;<asp:TextBox CssClass="form-control" ID="txtEqpSerial" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblEqpType" runat="server" Text="Equipment Type:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="form-control" ID="txtEqpType" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblOrdNum" runat="server" Text="Order Number:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="form-control" ID="txtOrdNo" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblOrdDate" runat="server" Text="Order Date:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="form-control" ID="txtOrdDate" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblPaid" runat="server" Text="Paid(true or false):"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="form-control" ID="txtPaid" runat="server"></asp:TextBox>
                <br />
                <asp:Button CssClass="btn btn-light" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                    </div>
                    </div>
            </asp:Panel>
                </div>
            <br />
            <br />
            <asp:ObjectDataSource ID="dbOrderTools" runat="server" DataObjectTypeName="aLibrary.EmmasDataSet+orderToolsSelectDataTable" InsertMethod="Fill" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.orderToolsSelectTableAdapter"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
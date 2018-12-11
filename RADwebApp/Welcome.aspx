<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Logintesting.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emma's | Welcome Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <style type="text/css">
        /*.nav {
            padding-bottom: 20px;
        }

        .nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333333;
        }

        .nav li {
            float: left;
        }

        .nav li a {
            display: block;
            color: white;
            text-align: center;
            padding: 16px;
            text-decoration: none;
        }

        .nav li a:hover {
            background-color: #111111;
        }

        body {
            margin: auto;
            font-size: 16px;
            font-family: Arial;
        }

        .content {
            padding-left: 20px;
        }

        .grid-container {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
            grid-gap: 20px;
            padding: 20px;
        }

        .menuItem {
            background-color: #C0C0C0;
            text-align: center;
            padding:20px 0;
            font-size: 24px;
        }

        .menuItem a {
            text-decoration: none;
            color: black;
        }

        .menuItem a:hover {
            cursor: pointer;
        }

        .icon {
            padding: 20px;
        }

        .button {
            background-color: #333333;
            border: none;
            color: white;
            width: 130px;
            height: 55px;
            padding: 16px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;            
            transition-duration: 0.4s;
            cursor: pointer;
        }

        .edit {
            background-color: #4682B4;
            color: white;
            border: 2px solid #4682B4;
        }

        .new {
            background-color: #419A1C;
            color: white;
            border: 2px solid #419A1C;
        }

        .delete {
            background-color: #f44336;
            color: white;
            border: 2px solid #f44336;
        }

        .container-submenu {
            display: grid;
            grid-template-columns: 1fr 1fr;
            grid-gap: 5px;
            padding: 5px;
        }*/
    </style>
</head>
<body style="width: 100%">
    <form id="form2" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Emma's Kiosk</a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="/Welcome.aspx">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="Forms/Customers/Customers.aspx">Customers</a>
                    </li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">Services</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="Forms/RepairPages/AllRepairs.aspx">Repairs</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="Forms/Sales/searchSales.aspx">Search for a Sale</a>
                            <a class="dropdown-item" href="Forms/Sales/SalesNew.aspx">New Sale</a>

                        </div>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="Forms/Employees/Employees.aspx">Employees</a>
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
                    <button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Log Out</button>
                </form>
            </div>
        </nav>
        <div class="container text-center display-3 mt-3">
            <strong>Welcome</strong>
        </div>
        <div class="container">
            <div class="row form-group container mt-5">
                <div class="col-lg-4  text-center">
                    <div class="container ">
                        <a href="Forms/Customers/Customers.aspx" class="btn btn-outline-info mb-3">CUSTOMERS
                        </a>
                        <br />
                        <a href="Forms/Customers/Customers.aspx">
                            <asp:Image src="Images/customers-icon.png" Alt="Customers-icon" ID="imgCustomer" runat="server" CssClass="mb-2" /></a>
                    </div>
                </div>
                <div class="col-lg-4 text-center">
                    <div class="container">
                        <a href="#collapse1" class="btn btn-outline-info mb-3" data-toggle="collapse" aria-expanded="false" aria-controls="collapse1">SERVICES
                        </a>
                        <br />
                        <a href="#collapse1" data-toggle="collapse" aria-expanded="false" aria-controls="collapse1">
                            <asp:Image src="Images/services-icon.png" Alt="Services-icon" ID="imgServices" runat="server" CssClass="" /></a>
                    </div>
                    <div class="collapse" id="collapse1">
                        <div class="row mt-2">
                            <div class="col">
                                <h4 class="">Repairs</h4>
                                <div class="btn-group">
                                    <asp:Button CssClass="btn" Text="Search" runat="server" />
                                </div>
                            </div>
                            <div class="col">
                                <h4 class="">Sales</h4>
                                <div class="btn-group">
                                    <asp:Button CssClass="btn" Text="Search" runat="server" />
                                    <asp:Button CssClass="btn" Text="New" runat="server" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 text-center">
                    <div class="container ">
                        <a href="Forms/Employees/Employees.aspx" class="btn btn-outline-info mb-3">EMPLOYEES
                        </a>
                        <br />
                        <a href="Forms/Employees/Employees.aspx">
                            <asp:Image src="Images/employees-icon.png" Alt="Employees-icon" ID="imgEmployees" runat="server" CssClass="mb-2" /></a>
                    </div>
                </div>
            </div>
            <div class="row form-group container" style="margin-top: 40px;">
                <div class="col-lg-2"></div>
                <div class="col-lg-4 text-center">
                    <div class="container ">
                        <a href="" class="btn btn-outline-info mb-3">INVENTORY
                        </a>
                        <br />
                        <a href="">
                            <asp:Image src="Images/inventory-icon.png" Alt="Inventory-icon" ID="imgInventory" runat="server" CssClass="mb-1" /></a>
                    </div>
                </div>
                <div class="col-lg-4 text-center">
                    <div class="container ">
                        <a href="#collapse2" class="btn btn-outline-info mb-3" data-toggle="collapse" aria-expanded="false" aria-controls="collapse2">DOCUMENTS
                        </a>
                        <br />
                        <a href="#collapse2" data-toggle="collapse" aria-expanded="false" aria-controls="collapse2">
                            <asp:Image src="Images/reports-icon.png" Alt="Reports-icon" ID="imgReports" runat="server" CssClass="mb-1" /></a>
                    </div>
                    <div class="collapse" id="collapse2">
                        <div class="btn-group mt-2">
                            <a href="Forms/Sales/SalesReport.aspx">
                                <asp:Button CssClass="btn" Text="Reports" runat="server" /></a>
                            <a href="Forms/RepairPages/Warranty.aspx">
                                <asp:Button CssClass="btn" Text="Warranty Records" runat="server" /></a>
                            <a href="">
                                <asp:Button CssClass="btn" Text="Policies" runat="server" /></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2"></div>
            </div>
        </div>
    </form>
</body>
</html>

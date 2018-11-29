<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MovieWeb.Landing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emma's | Homepage</title>
    <style type="text/css">
        body {
            margin: auto;
            font-size: 16px;
            font-family: Arial;
            max-width: 100%;
            height: 100%;
        }

        .nav {
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

        .time {
            padding-left: 20px;
        }

        .content { grid-area: content; }
        .menuRepair { grid-area: repair; }
        .menuInventory { grid-area: inventory; }
        
        .grid-container {
            display: grid;
            grid-template-areas:
            'content content repair repair repair'
            'content content inventory inventory inventory';
            grid-gap: 20px;
            padding: 20px;
        }

        .content, .menuRepair, .menuInventory {
            background-color: #C0C0C0;
            text-align: center;
            padding:20px 0;
            font-size: 24px;
        }

        .content ul, .menuRepair ul, .menuInventory ul {
            list-style: none;
            padding-left: 0;
        }
    </style>
</head>
<body style="width: 1460px">
    <form id="form1" runat="server">
        <div class="nav">
            <ul>
                <li><a href="#home">Home</a></li>                
                <li><a href="#services">Services</a></li>                
                <li><a href="#inventory">Inventory</a></li>
                <li><a href="#contact">Contact</a></li>            
                <li style="float: right;"><asp:LinkButton ID="lnkLogin" runat="server" Visible="True" OnClick="lnkLogin_Click">Login</asp:LinkButton></li>
            </ul>
        </div>
        <div class="time">
            <%: DateTime.Now.Date.ToLongDateString() %>
        </div>
        <div class="grid-container">
            <div class="content">
                <ul>                      
                      <li><asp:Image src="Images/emmas.png" Alt="emmas-logo" ID="imgLogo" runat="server" /></li>                                            
                      <li><strong>WELCOME TO EMMA'S!</strong></li>
                      <li><small><i>"quote"</i></small></li>
                  </ul>
            </div>
            <div class="menuRepair">
                <ul>                      
                      <li><asp:Image src="Images/services-icon.png" Alt="services-icon" ID="imgServices" runat="server" /></li>                                            
                      <li><strong>NEED A REPAIR?</strong></li>
                      <li><asp:LinkButton ID="btnRepairs" runat="server">Click here and contact our team!</asp:LinkButton></li>
                  </ul>
            </div>
            <div class="menuInventory">
                <ul>                      
                      <li><asp:Image src="Images/inventory-icon.png" Alt="Inventory-icon" ID="imgInventory" runat="server" /></li>                                            
                      <li><strong>OUR PRODUCTS</strong></li>
                      <li><asp:LinkButton ID="btnInventory" runat="server">Click here and check our products!</asp:LinkButton></li>
                  </ul>
            </div>
        </div>
    </form>
</body>
</html>


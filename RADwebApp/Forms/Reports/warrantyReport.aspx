<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="warrantyReport.aspx.cs" Inherits="RADwebApp.Forms.Reports.warrantyReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 145px;
        }
        .auto-style2 {
            width: 154px;
        }
        .auto-style3 {
            width: 145px;
            height: 26px;
        }
        .auto-style4 {
            width: 154px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            width: 100%;
            margin-bottom: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            WARRANTY REPORT<br />
            <br />
            <table class="auto-style6">
                <tr>
                    <td class="auto-style1">Search:</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Order #:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtOrderNumber" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Customer:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtCustomer" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnSearch" runat="server" Text="Search" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="dsWarrantyReport" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ordNumber" HeaderText="Order #" SortExpression="ordNumber" />
                    <asp:CheckBoxField DataField="serordWarranty" HeaderText="Warranty" SortExpression="serordWarranty" />
                    <asp:BoundField DataField="serName" HeaderText="Service" SortExpression="serName" />
                    <asp:BoundField DataField="custFull" HeaderText="Customer" ReadOnly="True" SortExpression="custFull" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <asp:ObjectDataSource ID="dsWarrantyReport" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.warrantyReportTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtCustomer" ConvertEmptyStringToNull="False" Name="custName" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtOrderNumber" Name="ordNum" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
        </div>
    </form>
</body>
</html>

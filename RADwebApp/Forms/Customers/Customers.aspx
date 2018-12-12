<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="RADwebApp.Forms.CustomerPages.Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <% if(flagNew == false) { %>
               <h2>Customers</h2>
        <% } else { %>
               <h2>Add New Customer</h2>
        <% } %>
        <div>
            <asp:Button ID="btnNewCustomer" runat="server" OnClick="btnNewCustomer_Click" Text="Add New" />
            <br />
            <asp:DetailsView ID="dvCustomerNew" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="dsCustomer" DefaultMode="Insert" Height="50px" OnItemCommand="dvCustomerNew_ItemCommand" Visible="False" Width="125px">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:DynamicField DataField="custFirst" HeaderText="First Name" SortExpression="custFirst" />
                    <asp:DynamicField DataField="custLast" HeaderText="Last Name" SortExpression="custLast" />
                    <asp:DynamicField DataField="custPhone" HeaderText="Phone" SortExpression="custPhone" />
                    <asp:DynamicField DataField="custAddress" HeaderText="Address" SortExpression="custAddress" />
                    <asp:DynamicField DataField="custCity" HeaderText="City" SortExpression="custCity" />
                    <asp:DynamicField DataField="custPostal" HeaderText="Postal Code" SortExpression="custPostal" />
                    <asp:DynamicField DataField="custEmail" HeaderText="E-mail" SortExpression="custEmail" />
                    <asp:TemplateField ShowHeader="False">
                        <InsertItemTemplate>
                            <asp:Button ID="btnIsert" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="btnNew" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please fix the following:" />
            <asp:Panel ID="panelFilters" runat="server">
                <p>Filter by:</p>
                <asp:Label ID="lblFirst" runat="server" Text="First Name:"></asp:Label>
                <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
                <asp:Label ID="lblLast" runat="server" Text="Last Name:"></asp:Label>
                <asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
                <asp:Label ID="lblEmail" runat="server" Text="E-mail:"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:Label ID="lblCity" runat="server" Text="City:"></asp:Label>
                <asp:DropDownList ID="ddlCity" runat="server" AppendDataBoundItems="True" DataSourceID="dsCity" DataTextField="custCity" DataValueField="custCity" EnableViewState="False">
                    <asp:ListItem Selected="True" Value="All">All</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            </asp:Panel>               
            <br />
            <asp:GridView ID="gvCustomers" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="dsSearchCustomer" OnSelectedIndexChanged="gvCustomers_SelectedIndexChanged" EnableViewState="False">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="CustomerDetails.aspx?id={0}" Text="Details" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>                           
                            <% if(flagEdit == true) { %>
                                   <asp:Button ID="btnEdit" runat="server" CausesValidation="False" CommandName="Select" Text="Edit" />
                                   <asp:Button ID="btnDelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick='return confirm("Are you sure you want to delete this customer?");' />
                            <% } %>                            
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="custName" HeaderText="Name" ReadOnly="True" SortExpression="custName" />
                    <asp:BoundField DataField="custEmail" HeaderText="E-mail" SortExpression="custEmail" />
                    <asp:BoundField DataField="custCity" HeaderText="City" ReadOnly="True" SortExpression="custCity" />                    
                    <%--<asp:HyperLinkField DataNavigateUrlFields="id, custFirst, custLast"
                    DataNavigateUrlFormatString="CustomerOrders.aspx?id={0}&first={1}&last={2}"
                      Text="New Order" />--%>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkNewOrder" OnClick="lnkNewOrder_Click" runat="server" CausesValidation="false" CommandName="" Text="New Order"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:HyperLinkField DataNavigateUrlFields="id, custFirst, custLast"
                    DataNavigateUrlFormatString="CustomerOrders.aspx?id={0}&first={1}&last={2}"
                      Text="View Orders" />
                </Columns>
                <EmptyDataTemplate>
                    No customer has matched your searching criteria.
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
        <asp:ObjectDataSource ID="dsSearchCustomer" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.searchCustomerTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="custFirst" Type="String" />
                <asp:Parameter Name="custLast" Type="String" />
                <asp:Parameter Name="custPhone" Type="String" />
                <asp:Parameter Name="custAddress" Type="String" />
                <asp:Parameter Name="custCity" Type="String" />
                <asp:Parameter Name="custPostal" Type="String" />
                <asp:Parameter Name="custEmail" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCity" DefaultValue="All" Name="custCity" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="txtFirst" ConvertEmptyStringToNull="False" DefaultValue="" Name="custFirst" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtLast" ConvertEmptyStringToNull="False" Name="custLast" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtEmail" ConvertEmptyStringToNull="False" Name="custEmail" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="custFirst" Type="String" />
                <asp:Parameter Name="custLast" Type="String" />
                <asp:Parameter Name="custPhone" Type="String" />
                <asp:Parameter Name="custAddress" Type="String" />
                <asp:Parameter Name="custCity" Type="String" />
                <asp:Parameter Name="custPostal" Type="String" />
                <asp:Parameter Name="custEmail" Type="String" />
                <asp:Parameter Name="Original_id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsCity" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.customerCityTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsCustomer" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.customerTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
                <asp:Parameter Name="Original_custFirst" Type="String" />
                <asp:Parameter Name="Original_custLast" Type="String" />
                <asp:Parameter Name="Original_custPhone" Type="String" />
                <asp:Parameter Name="Original_custAddress" Type="String" />
                <asp:Parameter Name="Original_custCity" Type="String" />
                <asp:Parameter Name="Original_custPostal" Type="String" />
                <asp:Parameter Name="Original_custEmail" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="custFirst" Type="String" />
                <asp:Parameter Name="custLast" Type="String" />
                <asp:Parameter Name="custPhone" Type="String" />
                <asp:Parameter Name="custAddress" Type="String" />
                <asp:Parameter Name="custCity" Type="String" />
                <asp:Parameter Name="custPostal" Type="String" />
                <asp:Parameter Name="custEmail" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="custFirst" Type="String" />
                <asp:Parameter Name="custLast" Type="String" />
                <asp:Parameter Name="custPhone" Type="String" />
                <asp:Parameter Name="custAddress" Type="String" />
                <asp:Parameter Name="custCity" Type="String" />
                <asp:Parameter Name="custPostal" Type="String" />
                <asp:Parameter Name="custEmail" Type="String" />
                <asp:Parameter Name="Original_id" Type="Int32" />
                <asp:Parameter Name="Original_custFirst" Type="String" />
                <asp:Parameter Name="Original_custLast" Type="String" />
                <asp:Parameter Name="Original_custPhone" Type="String" />
                <asp:Parameter Name="Original_custAddress" Type="String" />
                <asp:Parameter Name="Original_custCity" Type="String" />
                <asp:Parameter Name="Original_custPostal" Type="String" />
                <asp:Parameter Name="Original_custEmail" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </form>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="RADwebApp.Forms.Customers.CustomerDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="dvEditCustomer" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="dsCustomer" OnItemDeleted="dvEditCustomer_ItemDeleted" OnItemUpdated="dvEditCustomer_ItemUpdated" >
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:DynamicField DataField="custFirst" HeaderText="First Name" SortExpression="custFirst" />
                    <asp:DynamicField DataField="custLast" HeaderText="Last Name" SortExpression="custLast" />
                    <asp:DynamicField DataField="custPhone" HeaderText="Phone" SortExpression="custPhone" />
                    <asp:DynamicField DataField="custAddress" HeaderText="Address" SortExpression="custAddress" />
                    <asp:DynamicField DataField="custCity" HeaderText="City" SortExpression="custCity" />
                    <asp:DynamicField DataField="custPostal" HeaderText="Postal Code" SortExpression="custPostal" />
                    <asp:DynamicField DataField="custEmail" HeaderText="E-mail" SortExpression="custEmail" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" CausesValidation="True" CommandName="Update" Text="Update" OnClientClick="return confirm('Do you want to save the changes?');" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:Button ID="btnDelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this customer?');" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please fix the following:" />
            <br />
            <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" />
        </div>
        <asp:SqlDataSource ID="dsCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" DeleteCommand="DELETE FROM [customer] WHERE [id] = @id" InsertCommand="INSERT INTO [customer] ([custFirst], [custLast], [custPhone], [custAddress], [custCity], [custPostal], [custEmail]) VALUES (@custFirst, @custLast, @custPhone, @custAddress, @custCity, @custPostal, @custEmail)" SelectCommand="SELECT * FROM [customer] WHERE ([id] = @id)" UpdateCommand="UPDATE [customer] SET [custFirst] = @custFirst, [custLast] = @custLast, [custPhone] = @custPhone, [custAddress] = @custAddress, [custCity] = @custCity, [custPostal] = @custPostal, [custEmail] = @custEmail WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
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
                <asp:QueryStringParameter DefaultValue="0" Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="custFirst" Type="String" />
                <asp:Parameter Name="custLast" Type="String" />
                <asp:Parameter Name="custPhone" Type="String" />
                <asp:Parameter Name="custAddress" Type="String" />
                <asp:Parameter Name="custCity" Type="String" />
                <asp:Parameter Name="custPostal" Type="String" />
                <asp:Parameter Name="custEmail" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
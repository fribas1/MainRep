<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="RADwebApp.Forms.Employees.Employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <% if(flag == false) { %>
               <h2>Employees</h2>
         <% } else { %>
               <h2>Add New Employee</h2>
         <% } %>
        <div>
            <asp:Button ID="btnNewEmployee" runat="server" OnClick="btnNewEmployee_Click" Text="Add New" />
            <br />
            <asp:DetailsView ID="dvEmployeeNew" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="dsEmployees" DefaultMode="Insert" Height="50px" OnItemCommand="dvEmployeeNew_ItemCommand" Visible="False" Width="125px">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:DynamicField DataField="empFirst" HeaderText="First Name" />
                    <asp:DynamicField DataField="empLast" HeaderText="Last Name" />
                    <asp:TemplateField HeaderText="Position" SortExpression="posID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("posID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="ddlPositionAdd" runat="server" DataSourceID="dsPosition" DataTextField="posName" DataValueField="id" SelectedValue='<%# Bind("posID") %>'>
                            </asp:DropDownList>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("posID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
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
            <br />
            <asp:Panel ID="panelFilters" runat="server">
                <asp:Label ID="lblFilterPosition" runat="server" Text="Filter by Position:"></asp:Label>
                <asp:DropDownList ID="ddlPosition" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="dsPosition" DataTextField="posName" DataValueField="id">
                    <asp:ListItem Selected="True" Value="0">All</asp:ListItem>
                </asp:DropDownList>
            </asp:Panel>               
            <br />
            <asp:GridView ID="gvEmployees" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="dsEmployees">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" CausesValidation="True" CommandName="Update" Text="Update" OnClientClick='return confirm("Do you want to save the changes?");'></asp:Button>
                            &nbsp;<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:Button>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:Button>
                            &nbsp;<asp:Button ID="btnDelete" runat="server" CausesValidation="True" CommandName="Delete" Text="Delete" OnClientClick='return confirm("Are you sure you want to delete this employee?");'></asp:Button>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:DynamicField DataField="empFirst" HeaderText="First Name" SortExpression="empFirst" />
                    <asp:DynamicField DataField="empLast" HeaderText="Last Name" SortExpression="empLast" />
                    <asp:TemplateField HeaderText="Position" SortExpression="posName">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlPositionEdit" runat="server" DataSourceID="dsPosition" DataTextField="posName" DataValueField="id" SelectedValue='<%# Bind("posID") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("posName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:HyperLinkField DataNavigateUrlFields="id, empFirst, empLast, posID"
                    DataNavigateUrlFormatString="EmployeeServices.aspx?id={0}&first={1}&last={2}&pos={3}"
                      Text="View Services" />
                </Columns>
            </asp:GridView>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please fix the following:" />
            <br />
        </div>
        <asp:SqlDataSource ID="dsEmployees" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT employee.id, employee.empFirst + ' ' + employee.empLast AS empName, employee.empFirst, employee.empLast, position.posName, employee.posID FROM employee INNER JOIN position ON employee.posID = position.id WHERE (employee.posID = @Param1) OR (@Param1 = 0) ORDER BY employee.empFirst, employee.empLast, position.posName" InsertCommand="INSERT INTO [employee] ([empFirst], [empLast], [posID]) VALUES (@empFirst, @empLast, @posID)" DeleteCommand="DELETE FROM [employee] WHERE [id] = @id" UpdateCommand="UPDATE [employee] SET [empFirst] = @empFirst, [empLast] = @empLast, [posID] = @posID WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="empFirst" Type="String" />
                <asp:Parameter Name="empLast" Type="String" />
                <asp:Parameter Name="posID" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlPosition" DefaultValue="0" Name="Param1" PropertyName="SelectedValue" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="empFirst" Type="String" />
                <asp:Parameter Name="empLast" Type="String" />
                <asp:Parameter Name="posID" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="dsPosition" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT * FROM [position] ORDER BY [posName]"></asp:SqlDataSource>
        <br />
    </form>
</body>
</html>

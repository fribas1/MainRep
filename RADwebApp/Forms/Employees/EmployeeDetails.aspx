<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDetails.aspx.cs" Inherits="RADwebApp.Forms.Employees.EmployeeDetails" %>

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

                                <div class="container mt-4">
            <div class="row">
            <div class="col-lg-6 text-center m-auto">
            <asp:DetailsView CssClass="table table-striped table-bordered table-responsive-lg" ID="dvEditEmployee" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="dsEmployee" OnItemDeleted="dvEditEmployee_ItemDeleted" OnItemUpdated="dvEditEmployee_ItemUpdated" OnItemCommand="dvEditEmployee_ItemCommand" >
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:DynamicField DataField="empFirst" HeaderText="First Name" />
                    <asp:DynamicField DataField="empLast" HeaderText="Last Name" />
                    <asp:TemplateField HeaderText="Position" SortExpression="posID">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="dsPosition" DataTextField="posName" DataValueField="id" SelectedValue='<%# Bind("posID") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("posID") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="dsPosition" DataTextField="posName" DataValueField="id" Enabled="False" SelectedValue='<%# Bind("posID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:Button CssClass="btn btn-info" ID="btnUpdate" runat="server" CausesValidation="True" CommandName="Update" Text="Update" OnClientClick='return confirm("Do you want to save the changes?");' />
                            &nbsp;<asp:Button CssClass="btn btn-dark" ID="btnCancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button CssClass="btn btn-warning" ID="btnEdit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:Button CssClass="btn btn-danger" ID="btnDelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick='return confirm("Are you sure you want to delete this employee?");' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
                </div>
                </div>
                                    </div>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please fix the following:" />
            <br />
            <div class="text-center">
            <asp:Button CssClass="btn btn-primary m-auto" ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" />
                </div>
        </div>

        <asp:ObjectDataSource ID="dsPosition" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.employeePositionTableAdapter"></asp:ObjectDataSource>

        <asp:ObjectDataSource ID="dsEmployee" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.employeeTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="empFirst" Type="String" />
                <asp:Parameter Name="empLast" Type="String" />
                <asp:Parameter Name="posID" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="Param1" QueryStringField="id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="empFirst" Type="String" />
                <asp:Parameter Name="empLast" Type="String" />
                <asp:Parameter Name="posID" Type="Int32" />
                <asp:Parameter Name="Original_id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>

    </form>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Category.aspx.cs" Inherits="Library_Management_System.Library_Book_Manager.Edit_Books.Edit_Category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>Edit Category</h1>
            <br />
            <br />
        </div>

        <div align="center">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Category_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Category_ID" HeaderText="Category ID" InsertVisible="False" ReadOnly="True" SortExpression="Category_ID" />
                    <asp:TemplateField HeaderText="Category" SortExpression="Category">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCategory" runat="server" Text='<%# Bind("Category") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAuthorName" runat="server" ErrorMessage="Category is Required" ControlToValidate="txtCategory" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />


        </div>
        <br />

        <div align="center">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin Panel/Library Book Manager/Library_Book_Manager.aspx">Back to Book Manager</asp:HyperLink>
        </div>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librarydb %>" DeleteCommand="DELETE FROM [Category] WHERE [Category_ID] = @Category_ID" InsertCommand="INSERT INTO [Category] ([Category]) VALUES (@Category)" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [Category] = @Category WHERE [Category_ID] = @Category_ID">
            <DeleteParameters>
                <asp:Parameter Name="Category_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Category" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Category_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

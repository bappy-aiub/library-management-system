<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Author.aspx.cs" Inherits="Library_Management_System.Library_Book_Manager.Edit_Books.Edit_Author" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>Edit Author</h1>
            <br />
        &nbsp<br />
        </div>
        <div align="center">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Author_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Author_ID" HeaderText="Author ID" InsertVisible="False" ReadOnly="True" SortExpression="Author_ID" />
                    <asp:TemplateField HeaderText="Author Name" SortExpression="Author_Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAuthorName" runat="server" Text='<%# Bind("Author_Name") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAuthorName" runat="server" ErrorMessage="Author Name is Required" ControlToValidate="txtAuthorName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Author_Name") %>'></asp:Label>
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librarydb %>" DeleteCommand="DELETE FROM [Author] WHERE [Author_ID] = @Author_ID" InsertCommand="INSERT INTO [Author] ([Author_Name]) VALUES (@Author_Name)" SelectCommand="SELECT * FROM [Author]" UpdateCommand="UPDATE [Author] SET [Author_Name] = @Author_Name WHERE [Author_ID] = @Author_ID">
            <DeleteParameters>
                <asp:Parameter Name="Author_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Author_Name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Author_Name" Type="String" />
                <asp:Parameter Name="Author_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>

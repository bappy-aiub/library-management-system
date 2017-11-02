<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Books.aspx.cs" Inherits="Library_Management_System.Library_Book_Manager.Edit_Books.Edit_Books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>Edit Books</h1>

        </div>
        <div align="center">
            <p>&nbsp;</p>

        </div>
        <div align="center">
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ISBN" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />


                        <asp:TemplateField HeaderText="Title" SortExpression="Book_Title">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtBookTitle" runat="server" Text='<%# Bind("Book_Title") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvBookTitle" runat="server" ErrorMessage="*Book Title is Required" Text="*" ControlToValidate="txtBookTitle" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Book_Title") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Language" SortExpression="Book_Language">
                            <EditItemTemplate>
                                <asp:DropDownList ID="dropdownLanguage" runat="server" SelectedValue='<%# Bind("Book_Language") %>'>
                                        <asp:ListItem>Select Language</asp:ListItem>
                                        <asp:ListItem>English</asp:ListItem>
                                        <asp:ListItem>Spanish</asp:ListItem>
                                        <asp:ListItem>Bengali</asp:ListItem>
                                        <asp:ListItem>French</asp:ListItem>
                                        <asp:ListItem>Italian</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvLanguage" runat="server" Text="*" ErrorMessage="*Select Language"  InitialValue="Select Language" ControlToValidate="dropdownLanguage" ForeColor="Red"></asp:RequiredFieldValidator>

                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Book_Language") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvQuantity" runat="server" Text="*" ErrorMessage="*Quantity is Required" ControlToValidate="txtQuantity" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revQuantity" runat="server" ErrorMessage="*Invalid Input(Numbers Only)" ForeColor="Red" ValidationExpression="^[0-9]*$" ControlToValidate="txtQuantity" Text="*"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Publication Year" SortExpression="Publication_Year">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtPublicationYear" runat="server" Text='<%# Bind("Publication_Year") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPublicationYear" runat="server" ErrorMessage="*Publication Year is required" ControlToValidate="txtPublicationYear" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revPublicationYear" runat="server" ErrorMessage="*Enter Valid Year" ForeColor="Red" ValidationExpression="^\d{4}$" ControlToValidate="txtPublicationYear" Text="*"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Publication_Year") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red"/>

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librarydb %>" DeleteCommand="DELETE FROM [Books] WHERE [ISBN] = @ISBN" InsertCommand="INSERT INTO [Books] ([ISBN], [Book_Title], [Publication_Year], [Book_Language], [Quantity]) VALUES (@ISBN, @Book_Title, @Publication_Year, @Book_Language, @Quantity)" SelectCommand="SELECT [ISBN], [Book_Title], [Publication_Year], [Book_Language], [Quantity] FROM [Books]" UpdateCommand="UPDATE [Books] SET [Book_Title] = @Book_Title, [Publication_Year] = @Publication_Year, [Book_Language] = @Book_Language, [Quantity] = @Quantity WHERE [ISBN] = @ISBN">
            <DeleteParameters>
                <asp:Parameter Name="ISBN" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ISBN" Type="Int32" />
                <asp:Parameter Name="Book_Title" Type="String" />
                <asp:Parameter Name="Publication_Year" Type="Int32" />
                <asp:Parameter Name="Book_Language" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Book_Title" Type="String" />
                <asp:Parameter Name="Publication_Year" Type="Int32" />
                <asp:Parameter Name="Book_Language" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="ISBN" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p>
            &nbsp;</p>
        <p style="text-align: center">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin Panel/Library Book Manager/Library_Book_Manager.aspx">Back to Book Manager</asp:HyperLink>
        </p>
    </form>
</body>
</html>

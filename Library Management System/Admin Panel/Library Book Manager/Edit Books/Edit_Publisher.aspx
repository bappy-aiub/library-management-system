<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Publisher.aspx.cs" Inherits="Library_Management_System.Library_Book_Manager.Edit_Books.Edit_Publisher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>Edit Publisher</h1>
            <br />
            <br />
        </div>

        <div align="center">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Publisher_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Publisher_ID" HeaderText="Publisher ID" InsertVisible="False" ReadOnly="True" SortExpression="Publisher_ID" />
                    <asp:TemplateField HeaderText="Publisher Name" SortExpression="Publisher_Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPublisher" runat="server" Text='<%# Bind("Publisher_Name") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvPublisherName" runat="server" ErrorMessage="Publisher Name is Required" ControlToValidate="txtPublisher" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Publisher_Name") %>'></asp:Label>
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librarydb %>" DeleteCommand="DELETE FROM [Publisher] WHERE [Publisher_ID] = @Publisher_ID" InsertCommand="INSERT INTO [Publisher] ([Publisher_Name]) VALUES (@Publisher_Name)" SelectCommand="SELECT * FROM [Publisher]" UpdateCommand="UPDATE [Publisher] SET [Publisher_Name] = @Publisher_Name WHERE [Publisher_ID] = @Publisher_ID">
            <DeleteParameters>
                <asp:Parameter Name="Publisher_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Publisher_Name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Publisher_Name" Type="String" />
                <asp:Parameter Name="Publisher_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>

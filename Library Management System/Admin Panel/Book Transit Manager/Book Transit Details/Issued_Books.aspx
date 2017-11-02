<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Issued_Books.aspx.cs" Inherits="Library_Management_System.Book_Transit_Manager.Book_Transit_Details.Issued_Books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>Issued Books</h1>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librarydb %>" DeleteCommand="DELETE FROM [Issue_Details] WHERE [Entity_No] = @Entity_No" InsertCommand="INSERT INTO [Issue_Details] ([Issue_Date], [Return_Date], [Status], [ISBN], [Username]) VALUES (@Issue_Date, @Return_Date, @Status, @ISBN, @Username)" SelectCommand="SELECT * FROM issue_details A INNER JOIN books B ON A.ISBN = B.ISBN WHERE STATUS = 'ISSUED'" UpdateCommand="UPDATE [Issue_Details] SET  [Status] = @Status WHERE [Entity_No] = @Entity_No">
                <DeleteParameters>
                    <asp:Parameter Name="Entity_No" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Issue_Date" Type="String" />
                    <asp:Parameter Name="Return_Date" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="ISBN" Type="Int32" />
                    <asp:Parameter Name="Username" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Issue_Date" Type="String" />
                    <asp:Parameter Name="Return_Date" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="ISBN" Type="Int32" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Entity_No" Type="Int32" />
                </UpdateParameters>
        </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Entity_No" DataSourceID="SqlDataSource1">
                <Columns>
                   
                    <asp:BoundField DataField="Book_Title" HeaderText="Title" SortExpression="Book_Title" ReadOnly="True" />
                   
                    <asp:BoundField DataField="Issue_Date" InsertVisible="false" dataformatstring="{0:dd-MM-yyy}"  HeaderText ="Issue Date" SortExpression="Issue_Date" ReadOnly="True" />
                    <asp:BoundField DataField="Return_Date" HeaderText="Return Date" dataformatstring="{0:dd-MM-yyy}" SortExpression="Return_Date" ReadOnly="True" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" ReadOnly="True" />
                    <asp:TemplateField HeaderText="Status" SortExpression="Status">
                        <EditItemTemplate>
                            <asp:DropDownList ID="dropdownStatus" runat="server" SelectedValue='<%# Bind("Status") %>'>
                                        <asp:ListItem>Select Status</asp:ListItem>
                                       <asp:ListItem>Issued</asp:ListItem>
                                       <asp:ListItem>Returned</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvStatus" runat="server" Text="*" ControlToValidate="dropdownStatus" ForeColor="Red" ErrorMessage="*Please Select Status" InitialValue="Select Status"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField HeaderText="Action" ShowEditButton="True" />
                </Columns>
        </asp:GridView>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red"/>
            <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin Panel/Book Transit Manager/Book_Transit_Manager.aspx">Back to Book Transit Manager</asp:HyperLink>
            <br />
        </div>

    </form>
</body>
</html>

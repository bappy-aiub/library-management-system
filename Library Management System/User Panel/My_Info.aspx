<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="My_Info.aspx.cs" Inherits="Library_Management_System.User_Panel.My_Info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
            <h1>My Info</h1>
    </div>
        <br />
        <br />
        <div align="center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                    

                    <asp:TemplateField HeaderText="Name" SortExpression="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvName" ControlToValidate="txtName" Text="*"  runat="server" ErrorMessage="*Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                 
                    
                       <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPhone" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="*Phone Number is Required" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ValidationExpression="^(?:\+88|01)?\d{11}$" ErrorMessage="*Enter a Valid Phone Number" ForeColor="Red" Text="*"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" ReadOnly="True" />
                    <asp:BoundField DataField="Date_of_Birth" HeaderText="Date of Birth" ReadOnly="True" SortExpression="Date_of_Birth" />
                    
                    
                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmail" ControlToValidate="txtEmail" ForeColor="Red" Text="*" runat="server" ErrorMessage="*Email is Required"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Enter Valid Email" Text="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    
                    <asp:TemplateField HeaderText="Age" SortExpression="Age">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAge" runat="server" Text='<%# Bind("Age") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAge" ControlToValidate="txtAge" ForeColor="Red" Text="*" runat="server" ErrorMessage="*Age is Required"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revAge" runat="server" ControlToValidate="txtAge" Text="*" ErrorMessage="*Invalid Input(Numbers only)" ValidationExpression="^[0-9]*$" ForeColor="Red"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Age") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                    
                     <asp:BoundField DataField="Join_Date" HeaderText="Join Date" SortExpression="Join_Date" ReadOnly="True" />
                    <asp:CommandField ShowEditButton="True" HeaderText="Action" />
                </Columns>
            </asp:GridView>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server"  ForeColor="Red"/>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Dashboard/Member_Dashboard.aspx">Back to Dashboard</asp:HyperLink>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librarydb %>" DeleteCommand="DELETE FROM [Users] WHERE [Username] = @Username" InsertCommand="INSERT INTO [Users] ([Username], [Name], [Phone], [Gender], [Date_of_Birth], [Email], [Age], [Join_Date]) VALUES (@Username, @Name, @Phone, @Gender, @Date_of_Birth, @Email, @Age, @Join_Date)" SelectCommand="SELECT * FROM [Users] WHERE ([Username] = @Username)" UpdateCommand="UPDATE [Users] SET [Name] = @Name, [Phone] = @Phone,  [Email] = @Email, [Age] = @Age WHERE [Username] = @Username">
            <DeleteParameters>
                <asp:Parameter Name="Username" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Date_of_Birth" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Join_Date" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Username" SessionField="Username" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Date_of_Birth" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Join_Date" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

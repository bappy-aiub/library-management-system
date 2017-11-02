<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Member.aspx.cs" Inherits="Library_Management_System.Member_Manager.Member_Details.Edit_Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>Edit Member Details</h1>
            <br />
            <br />
        </div>

        <div align="center">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />

                    <asp:TemplateField HeaderText="Name" SortExpression="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="*Name is Required" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtName" Text="*" ErrorMessage="*Name is invalid(Only Characters)" ValidationExpression="^[a-zA-Z]+$" ForeColor="Red"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPhone" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="*Phone Number is Required" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" Text="*" ErrorMessage="Invalid Phone Number" ValidationExpression="^(?:\+88|01)?\d{11}$" ForeColor="Red"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                        <EditItemTemplate>
                            <asp:DropDownList ID="dropdownGender" runat="server" SelectedValue='<%# Bind("Gender") %>'>
                                    <asp:ListItem>Select Gender</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="dropdownGender" ErrorMessage="*Select Gender" ForeColor="Red" Text="*" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Date of Birth" SortExpression="Date_of_Birth">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDateofBirth" runat="server" Text='<%# Bind("Date_of_Birth") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDateofBirth" runat="server" ControlToValidate="txtDateofBirth" ErrorMessage="*Select Date of Birth" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtDateofBirth" Text="*" ErrorMessage="*Date Format (dd-MM-yyyy)" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" ForeColor="Red"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Date_of_Birth") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" Text="*" ErrorMessage="*Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Age" SortExpression="Age">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAge" runat="server" Text='<%# Bind("Age") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" Text="*" ErrorMessage="*Age is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtAge" Text="*" ErrorMessage="*Invalid Input(Numbers only)" ValidationExpression="^[0-9]*$" ForeColor="Red"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Age") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Join Date" SortExpression="Join_Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtJoinDate" runat="server" Text='<%# Bind("Join_Date") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvJoiDate" runat="server" ControlToValidate="txtJoinDate" ErrorMessage="*Select Joining Date" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtJoinDate" Text="*" ErrorMessage="*Date Formation (dd-MM-yyyy)" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" ForeColor="Red"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Join_Date") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Password" SortExpression="Password">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPassword" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" Text="*" ErrorMessage="*Pasword is Required" ForeColor="Red"></asp:RequiredFieldValidator>         
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    
                    <asp:BoundField DataField="Role" HeaderText="Role" ReadOnly="True" SortExpression="Username" />

                    <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="red" />

        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librarydb %>" DeleteCommand="DELETE FROM [Users] WHERE [Username] = @Username;DELETE FROM [User_Access] WHERE [Username] = @Username" InsertCommand="INSERT INTO [Users] ([Username], [Name], [Phone], [Gender], [Date_of_Birth], [Email], [Age], [Join_Date]) VALUES (@Username, @Name, @Phone, @Gender, @Date_of_Birth, @Email, @Age, @Join_Date)" SelectCommand="SELECT * FROM users A  INNER JOIN user_access B ON A.USERNAME = B.USERNAME" UpdateCommand="UPDATE [Users] SET [Name] = @Name, [Phone] = @Phone, [Gender] = @Gender, [Date_of_Birth] = @Date_of_Birth, [Email] = @Email, [Age] = @Age, [Join_Date] = @Join_Date WHERE [Username] = @Username;UPDATE  [User_Access]  SET [Password]=@Password WHERE  [Username] = @Username">
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
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Date_of_Birth" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Join_Date" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <p>
            &nbsp;</p>
        <p style="text-align: center">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin Panel/Member Manager/Member_Manager.aspx">Back to Member Manager</asp:HyperLink>
        </p>

    </form>

</body>
</html>

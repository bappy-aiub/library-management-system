<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Books.aspx.cs" Inherits="Library_Management_System.Library_Book_Manager.Add_Books.Add_Books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            width: 116px;
        }
        .auto-style5 {
            width: 202px;
        }
        .auto-style6 {
            width: 184px;
        }
        .auto-style7 {
            width: 116px;
            height: 50px;
        }
        .auto-style8 {
            width: 202px;
            height: 50px;
        }
        .auto-style9 {
            width: 184px;
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>Add Books</h1>
            <br />
            <br />
        </div>

        
        <div  align="center">
            <table cellpadding="4" cellspacing="4" style="margin-left: 0px">
          <tr>
            <td class="auto-style4">ISBN</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtISBN" runat="server" Width="171px"></asp:TextBox></td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtISBN" ErrorMessage="*ISBN is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Invalid Input(Numbers Only)" ForeColor="Red" ValidationExpression="^[0-9]*$" ControlToValidate="txtISBN"></asp:RegularExpressionValidator>
              </td>
            </tr>

           <tr>
            <td class="auto-style4">Book Title</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtBookTitle" runat="server" Width="172px"></asp:TextBox></td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBookTitle" ErrorMessage="*Book Title is Required" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
            </tr>
            
            <tr>
            <td class="auto-style4">Language</td>
            <td class="auto-style5">
                <asp:DropDownList ID="dropdownLanguage" runat="server" Width="172px">
                    <asp:ListItem>Select Language</asp:ListItem>
                    <asp:ListItem>English</asp:ListItem>
                    <asp:ListItem>Spanish</asp:ListItem>
                    <asp:ListItem>Bengali</asp:ListItem>
                    <asp:ListItem>French</asp:ListItem>
                    <asp:ListItem>Italian</asp:ListItem>
                </asp:DropDownList></td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dropdownLanguage" ErrorMessage="*Select Language" InitialValue="Select Language" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

           <tr>
            <td class="auto-style4">Quantity</td>
            <td class="auto-style5"><asp:TextBox ID="txtQuantity" runat="server" Width="172px"></asp:TextBox></td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtQuantity" ErrorMessage="*Quantity is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*Invalid Input(Numbers Only)" ForeColor="Red" ValidationExpression="^[0-9]*$" ControlToValidate="txtQuantity"></asp:RegularExpressionValidator>
               </td>
            </tr>
            

            <tr>
            <td class="auto-style4">Author Name</td>
            <td class="auto-style5"><asp:DropDownList ID="dropdownAuthorName" runat="server" Width="172px" AppendDataBoundItems="true">
                                <asp:ListItem Text="Select Author" Value="0" />
                </asp:DropDownList></td>
            <td class="auto-style6"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="dropdownAuthorName" ErrorMessage="*Select Author" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
            <td class="auto-style4">Category</td>
            <td class="auto-style5"><asp:DropDownList ID="dropdownCategory" runat="server" Width="172px" AppendDataBoundItems="true">
                            <asp:ListItem Text="Select Category" Value="0" />
                </asp:DropDownList></td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="dropdownCategory" ErrorMessage="*Select Category" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
            <td class="auto-style4">Publisher Name</td>
            <td class="auto-style5"><asp:DropDownList ID="dropdownPublisherName" runat="server" Width="172px" AppendDataBoundItems="true">
                            <asp:ListItem Text="Select Publisher" Value="0" />
                </asp:DropDownList></td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="dropdownPublisherName" ErrorMessage="*Select Publisher" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                </td>
            </tr>


            <tr>
            <td class="auto-style7">Publication Year</td>
            <td class="auto-style8"><asp:TextBox ID="txtPublicationYear" runat="server" Width="167px"></asp:TextBox></td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPublicationYear" ErrorMessage="*Publication Year is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="*Enter Valid Year" ForeColor="Red" ValidationExpression="^\d{4}$" ControlToValidate="txtPublicationYear"></asp:RegularExpressionValidator>
                </td>
            </tr>
            

          <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5"><asp:Button ID="btnSave" runat="server" Text="Save" Width="97px" OnClick="btnSave_Click" /></td>
            <td class="auto-style6">&nbsp;</td>
          </tr>
            
          

        </table>
            <asp:Label ID="lblConfirmation" runat="server" Text=""></asp:Label>

            <br/>
            <br/>
            <h3>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin Panel/Library Book Manager/Library_Book_Manager.aspx">Back to Book Manager</asp:HyperLink></h3>
        </div>

    </form>
</body>
</html>

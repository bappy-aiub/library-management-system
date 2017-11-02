<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Author.aspx.cs" Inherits="Library_Management_System.Library_Book_Manager.Add_Books.Add_Author" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 182px;
        }
        .auto-style2 {
            width: 183px;
        }
        .auto-style3 {
            width: 183px;
            text-align: right;
        }
        .auto-style4 {
            width: 169px;
        }
    </style>
</head>
<body style="height: 45px">
    <form id="form1" runat="server">
    <div align="center">
        <h1>Add Author</h1>
            <br />
            <br />
        </div>

        <div  align="center">
            <table cellpadding="4" cellspacing="4">
          <tr>
            <td class="auto-style3">Author Name</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtAuthor" runat="server" Width="150px"></asp:TextBox></td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAuthor" ErrorMessage="*Author Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4"><asp:Button ID="btnSave" runat="server" Text="Save" Width="83px" OnClick="btnSave_Click" /></td>
            <td class="auto-style1">&nbsp;</td>
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

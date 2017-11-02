<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Category.aspx.cs" Inherits="Library_Management_System.Library_Book_Manager.Add_Books.Add_Category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 167px;
        }
        .auto-style3 {
            width: 181px;
        }
        .auto-style4 {
            width: 144px;
        }
        .auto-style5 {
            width: 181px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>Add Category</h1>
            <br />
            <br />
        </div>

        <div  align="center">
            <table cellpadding="4" cellspacing="4">
          <tr>
            <td class="auto-style5">Category Name</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtCategory" runat="server" Width="150px"></asp:TextBox></td>
            <td class="auto-style1">  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Category Name Required" ForeColor="Red" ControlToValidate="txtCategory"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4"><asp:Button ID="btnSave" runat="server" Text="Save" Width="89px" OnClick="btnSave_Click" /></td>
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

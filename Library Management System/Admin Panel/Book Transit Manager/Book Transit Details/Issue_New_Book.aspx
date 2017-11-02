<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Issue_New_Book.aspx.cs" Inherits="Library_Management_System.Book_Transit_Manager.Book_Transit_Details.Issue_New_Book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>Issue New Book</h1>
            <br />
            <br />
        </div>

        <div align="center">
             <table cellpadding="4" cellspacing="4" style="margin-left: 0px">
          
            <tr>
            <td class="auto-style4">Book Title</td>
            <td class="auto-style5"><asp:DropDownList ID="DropDownList1" runat="server" Width="171px"  AppendDataBoundItems="true">
                                                     <asp:ListItem Text="<Select Book>" Value="0" />
                                    </asp:DropDownList></td>
             </tr>

            <tr>
            <td class="auto-style4">Username</td>
            <td class="auto-style5"><asp:DropDownList ID="DropDownList2" runat="server" Width="171px"  AppendDataBoundItems="true">
                                                                     <asp:ListItem Text="<Select Username>" Value="0" />
                                    </asp:DropDownList></td>
            </tr>

            <tr>
            <td class="auto-style4">Issue Date</td>
                <td> <asp:TextBox ID="txtIssueDate" runat="server" Width="171px"></asp:TextBox></td>
            <td class="auto-style5"> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtIssueDate" ErrorMessage="*Issue Date is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtIssueDate" ErrorMessage="*Date Format(yyyy-MM-dd)" ForeColor="Red" ValidationExpression="^\d{4}\-(0?[1-9]|1[012])\-(0?[1-9]|[12][0-9]|3[01])$"></asp:RegularExpressionValidator>
                <br />
                </td>
            </tr>

           <tr>
            <td class="auto-style4">Return Date</td>
               <td><asp:TextBox ID="txtReturnDate" runat="server" Width="172px"></asp:TextBox></td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtReturnDate" ErrorMessage="*Return Date is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtReturnDate" ErrorMessage="*Date Format(yyyy-MM-dd)" ForeColor="Red" ValidationExpression="^\d{4}\-(0?[1-9]|1[012])\-(0?[1-9]|[12][0-9]|3[01])$"></asp:RegularExpressionValidator>
                <br />
               </td>
            </tr>

          <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" Width="94px" />
              </td>
            <td class="auto-style6">&nbsp;</td>
          </tr>
            
          

          <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="lblConfirmation" runat="server"></asp:Label>
              </td>
            <td class="auto-style6">&nbsp;</td>
          </tr>
            
          

        </table>
       

        </div>
        <p>
            &nbsp;</p>
        <p style="text-align: center">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin Panel/Book Transit Manager/Book_Transit_Manager.aspx">Back to Book Transit Manager</asp:HyperLink>
        </p>
    </form>
</body>
</html>


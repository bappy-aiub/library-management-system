<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Transit_Manager.aspx.cs" Inherits="Library_Management_System.Book_Transit_Manager.Book_Transit_Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div align="center">
        <h1>Book Transit Manager</h1>
            <br />
            <br />
        </div>

         <div align="center" style="height: 279px">
            <table>
      	<tr>
       	 <td>
           	<table width="200" border="1" cellpadding="4" cellspacing="5">
           		<tr>
             	  <td>Book Transit Details</td>
             	</tr>
             	<tr>
             	  <td>
                       <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin Panel/Book Transit Manager/Book Transit Details/Issue_New_Book.aspx">Issue New Book</asp:HyperLink></td>
             	</tr>
             	<tr>
             	  <td>
                       <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Admin Panel/Book Transit Manager/Book Transit Details/Issued_Books.aspx">Issued Books</asp:HyperLink></td>
             	</tr>
             	<tr>
             	  <td>
                       <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Admin Panel/Book Transit Manager/Book Transit Details/Returned_Books.aspx">Returned Books</asp:HyperLink></td>
             	</tr>
           	</table>
         </td>
       	</tr>
     </table>
			<br/>
            <br/>
            <h3>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Dashboard/Admin_Dashboard.aspx">Back to Dashboard</asp:HyperLink></h3>
      <br/>
    </div>
    </form>
</body>
</html>

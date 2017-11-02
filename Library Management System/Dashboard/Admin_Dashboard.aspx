<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Dashboard.aspx.cs" Inherits="Library_Management_System.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
 
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>Dashboard</h1>
    <h3>Welcome, <asp:Label ID="lblUser" runat="server" Text='<%#Session["Username"]%>'></asp:Label></h3> 
    </div>
        <br />
         <br />
     <div align="center">
         <table>
      	<tr>
       	 <td>
           	<table border="1" cellpadding="6" cellspacing="6">
            	 <tr>
             	  <td>Library Book Manager</td>
             	</tr>
             	<tr>
             	  <td>
                       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin Panel/Library Book Manager/Library_Book_Manager.aspx">Get Started</asp:HyperLink></td>
             	</tr>
           	</table>
         </td>
         <td>
           	<table border="1" cellpadding="6" cellspacing="6">
             <tr>
               <td>Borrower Manager</td>
             </tr>
             <tr>
             	  <td>
                       <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin Panel/Member Manager/Member_Manager.aspx">Get Started</asp:HyperLink></td>
             	</tr>
           	</table>
         </td>
         <td>
           	<table border="1" cellpadding="6" cellspacing="6">
             <tr>
               <td>Book Transit Manager</td>
             </tr>
             <tr>
             	  <td><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Admin Panel/Book Transit Manager/Book_Transit_Manager.aspx">Get Started</asp:HyperLink></td>
             	</tr>
           	</table>
         </td>
       	</tr>
     </table>
         <br />

         <h1 class="auto-style1">Report</h1>
        <h3 class="auto-style1">Numbers of Books Issued by Each User</h3>

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librarydb %>" SelectCommand="SELECT Username, COUNT(Username) as Total From Issue_Details WHERE Status='Issued' GROUP BY Username Order By Total DESC"></asp:SqlDataSource>

         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:librarydb %>" SelectCommand="SELECT t1.ISBN, 
            t1.ISSUE_DATE, 
            t1.USERNAME,
            t1.STATUS, 
            t2.BOOK_TITLE, 
            DATEDIFF(DAY, t1.ISSUE_DATE,GETDATE()) AS d 
            FROM issue_details t1 
            INNER JOIN books t2 
            ON t1.ISBN = t2.ISBN
            WHERE STATUS='ISSUED' 
            ORDER BY d DESC"></asp:SqlDataSource>

         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
             <Columns>
                 <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                 <asp:BoundField DataField="Total" HeaderText="Total Books Issued" ReadOnly="True" SortExpression="Total" />
             </Columns>
         </asp:GridView>

         <h3 class="auto-style1">Each Books Borrow Days</h3>
         <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
             <Columns>
                 <asp:BoundField DataField="BOOK_TITLE" HeaderText="Title" SortExpression="BOOK_TITLE" />
                 <asp:BoundField DataField="ISSUE_DATE" HeaderText="Issue Date" dataformatstring="{0:dd-MM-yyy}" SortExpression="ISSUE_DATE" />
                 <asp:BoundField DataField="USERNAME" HeaderText="Username" SortExpression="USERNAME" />
                 <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                 <asp:BoundField DataField="d" HeaderText="Days" ReadOnly="True" SortExpression="d" />
             </Columns>
         </asp:GridView>

         <br />
         <br />
         <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
         <br />
         <br />

    </div>
    </form>
</body>
</html>

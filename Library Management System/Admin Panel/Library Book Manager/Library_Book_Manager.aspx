<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Library_Book_Manager.aspx.cs" Inherits="Library_Management_System.Library_Book_Manager.LibraryBookManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
        <h1>Library Book Manager</h1>
            <br />
            <br />
        </div>

        <div align="center" style="height: 279px">
            <table>
      	<tr>
       	 <td>
           	<table width="200" border="1" cellpadding="4" cellspacing="5">
           		<tr>
             	  <td>ADD BOOKS</td>
             	</tr>
             	<tr>
             	  <td>
                       <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin Panel/Library Book Manager/Add Books/Add_Books.aspx">Add Books</asp:HyperLink></td>
             	</tr>
             	<tr>
             	  <td>
                       <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Admin Panel/Library Book Manager/Add Books/Add_Author.aspx">Add Author</asp:HyperLink></td>
             	</tr>
             	<tr>
             	  <td>
                       <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Admin Panel/Library Book Manager/Add Books/Add_Category.aspx">Add Category</asp:HyperLink></td>
             	</tr>
             	<tr>
             	  <td>
                       <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Admin Panel/Library Book Manager/Add Books/Add_Publisher.aspx">Add Publisher</asp:HyperLink></td>
             	</tr>
           	</table>
         </td>
          <td>
           	<table width="200" border="1" cellpadding="4" cellspacing="5">
           	<tr>
             	  <td>EDIT BOOKS</td>
             </tr>
             <tr>
             	  <td>
                       <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Admin Panel/Library Book Manager/Edit Books/Edit_Books.aspx">Edit Books Details</asp:HyperLink></td>
             	</tr>
             	<tr>
             	  <td>
                       <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Admin Panel/Library Book Manager/Edit Books/Edit_Author.aspx">Edit Author Details</asp:HyperLink></td>
             	</tr>
             	<tr>
             	  <td>
                       <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Admin Panel/Library Book Manager/Edit Books/Edit_Category.aspx">Edit Category Details</asp:HyperLink></td>
             	</tr>
             	<tr>
             	  <td>
                       <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Admin Panel/Library Book Manager/Edit Books/Edit_Publisher.aspx">Edit Publisher Details</asp:HyperLink></td>
             	</tr>
           	</table>
         </td>
       	</tr>
     </table>
			<br/>
            <br/>
            <h3><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Dashboard/Admin_Dashboard.aspx">Back to Dashboard </asp:HyperLink></h3>
      <br/>
    </div>
        <div align="center">
      <h1>Search Books</h1>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librarydb %>" SelectCommand="SELECT * FROM books A INNER JOIN author B ON A.AUTHOR_ID = B.AUTHOR_ID INNER JOIN category C ON A.CATEGORY_ID = C.CATEGORY_ID INNER JOIN publisher D ON A.PUBLISHER_ID = D.PUBLISHER_ID WHERE ([Book_Title] LIKE '%' + @Book_Title + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtSearch" Name="Book_Title" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <br />
          
        </tbody>
      </table> 
            <asp:TextBox ID="txtSearch" runat="server" placeholder="Serach By Book Title"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ISBN" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
                    <asp:BoundField DataField="Book_Title" HeaderText="Title" SortExpression="Book_Title" />
                    <asp:BoundField DataField="Book_Language" HeaderText="Language" SortExpression="Book_Language" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Author_Name" HeaderText="Author" SortExpression="Author_name" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="Publisher_Name" HeaderText="Publisher" SortExpression="Publisher" />
                    <asp:BoundField DataField="Publication_Year" HeaderText="Publication Year" SortExpression="Publication_Year" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>

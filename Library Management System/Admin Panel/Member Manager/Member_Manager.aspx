<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Member_Manager.aspx.cs" Inherits="Library_Management_System.Borrower_Manager.BorrowerManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">

        <h1>Member Manager</h1>
        <br />
        <br />

        </div>

         <div align="center" style="height: 205px">
            <table>
      	<tr>
       	 <td>
           	<table width="200" border="1" cellpadding="4" cellspacing="5">
           		<tr>
             	  <td>Member Details</td>
             	</tr>
             	<tr>
             	  <td> <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Admin Panel/Member Manager/Member Details/Add_Member.aspx">Add New Member</asp:HyperLink> </td>
             	</tr>
             	<tr>
             	  <td>
                       <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin Panel/Member Manager/Member Details/Edit_Member.aspx">Edit Member Details</asp:HyperLink></td>
             	</tr>
           	</table>
         </td>
       	</tr>
     </table>
	 <br/>
            <h3>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Dashboard/Admin_Dashboard.aspx">Back to Dashboard</asp:HyperLink></h3>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librarydb %>" SelectCommand="SELECT * FROM [Users] WHERE ([Username] LIKE '%' + @Username + '%')">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="TextBox1" Name="Username" PropertyName="Text" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
      <br/>
    </div>

         <div align="center">
      <h1>Search Users</h1>
             </div>

        <div align="center">
            <p>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Search by Username"></asp:TextBox>
               &nbsp <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            </p>

            <asp:GridView ID="GridView1" runat="server"></asp:GridView>

             </div>
        
    </form>

</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Member_Dashboard.aspx.cs" Inherits="Library_Management_System.Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>Dashboard</h1>
        <h3>Welcome, <asp:Label ID="lblUser" runat="server" Text='<%#Session["Username"]%>'></asp:Label></h3> 
    </div>
        <br />
        <div align="center">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User Panel/My_Info.aspx">My Info</asp:HyperLink> &nbsp;&nbsp; &nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/User Panel/Change_Password.aspx">Change Password</asp:HyperLink>&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/User Panel/Issued_Book_History.aspx">Issued Book History</asp:HyperLink>
        </div>
        <br />
        <div align="center">
                <h2>Search Books</h2>

                <br />
                <asp:TextBox ID="txtSearch" runat="server" Width="172px" placeholder="Search by Book Title"></asp:TextBox>&nbsp;&nbsp;
                <asp:Button ID="btnLogin" runat="server" Text="Login" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ISBN" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
                    <asp:BoundField DataField="Book_Title" HeaderText="Title" SortExpression="Book_Title" />
                    <asp:BoundField DataField="Book_Language" HeaderText="Language" SortExpression="Book_Language" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Author_Name" HeaderText="Author Name" SortExpression="Author_Name" />
                    <asp:BoundField DataField="Category_ID" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="Publisher_Name" HeaderText="Publisher" SortExpression="Publisher_Name" />
                    <asp:BoundField DataField="Publication_Year" HeaderText="Publication_Year" SortExpression="Publication_Year" />
                </Columns>
                </asp:GridView>

                <br />
                <br />
                <br />
                <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librarydb %>" SelectCommand="SELECT * FROM books A INNER JOIN author B ON A.AUTHOR_ID = B.AUTHOR_ID INNER JOIN category C ON A.CATEGORY_ID = C.CATEGORY_ID INNER JOIN publisher D ON A.PUBLISHER_ID = D.PUBLISHER_ID WHERE ([Book_Title] LIKE '%' + @Book_Title + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSearch" Name="Book_Title" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

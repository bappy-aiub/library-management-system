<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Library_Management_System.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1"; align="center">
    
        ABC Library
        <br />
        <br />
        <asp:HyperLink ID="linkLogin" runat="server" style="text-align: center" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>

        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librarydb %>" SelectCommand="SELECT * FROM books A INNER JOIN author B ON A.AUTHOR_ID = B.AUTHOR_ID INNER JOIN category C ON A.CATEGORY_ID = C.CATEGORY_ID INNER JOIN publisher D ON A.PUBLISHER_ID = D.PUBLISHER_ID WHERE ([Book_Title] LIKE '%' + @Book_Title + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSearch" Name="Book_Title" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />

        

    </div>

        <div align="center">
            <h1>Search Books</h1>

        </div>
        <div align="center">
            <p>&nbsp;</p>
            <p>
                <asp:TextBox ID="txtSearch" runat="server" Width="154px" placeholder="Search by Book Title"></asp:TextBox>&nbsp;&nbsp;
                <asp:Button ID="btnSearch" runat="server" Text="Search" />
            </p>
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

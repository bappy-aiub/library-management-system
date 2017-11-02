<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Returned_Books.aspx.cs" Inherits="Library_Management_System.Book_Transit_Manager.Book_Transit_Details.Returned_Books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>Returned Books</h1>
        </div>
        <div align="center">
            <p>&nbsp;</p>
        </div>
        <div align="center">
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Entity_No,ISBN1" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Book_Title" HeaderText="Title" SortExpression="Book_Title" />
                        <asp:BoundField DataField="Issue_Date" HeaderText="Issue Date" SortExpression="Issue_Date" dataformatstring="{0:dd-MM-yyy}" />
                        <asp:BoundField DataField="Return_Date" HeaderText="Return Date" SortExpression="Return_Date" dataformatstring="{0:dd-MM-yyy}" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    </Columns>
                </asp:GridView>
            </p>
          
            <br />
          
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin Panel/Book Transit Manager/Book_Transit_Manager.aspx">Back to Book Transit Manager</asp:HyperLink>
            <br />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librarydb %>" SelectCommand="SELECT * FROM issue_details A INNER JOIN books B ON A.ISBN = B.ISBN WHERE STATUS = 'Returned'"></asp:SqlDataSource>
    </form>
</body>
</html>

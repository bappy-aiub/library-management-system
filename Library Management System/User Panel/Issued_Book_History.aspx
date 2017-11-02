<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Issued_Book_History.aspx.cs" Inherits="Library_Management_System.User_Panel.Issued_Book_History" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>Issued Book History</h1>
    </div>
        <br />
        <br />

        <div align="center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Entity_No" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                    <asp:BoundField DataField="Book_Title" HeaderText="Title" SortExpression="Book_Title" />
                    <asp:BoundField DataField="Issue_Date" HeaderText="Issue_Date" dataformatstring="{0:dd-MM-yyy}" SortExpression="Issue_Date" />
                    <asp:BoundField DataField="Return_Date" HeaderText="Return_Date" dataformatstring="{0:dd-MM-yyy}" SortExpression="Return_Date" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Dashboard/Member_Dashboard.aspx">Back to Dashboard</asp:HyperLink>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librarydb %>" SelectCommand="SELECT * FROM issue_details A INNER JOIN books B ON A.ISBN = B.ISBN WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:SessionParameter Name="Username" SessionField="Username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

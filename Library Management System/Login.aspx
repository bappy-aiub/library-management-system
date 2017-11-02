<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Library_Management_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 618px;
            text-align: right;
        }
        .auto-style4 {
            width: 618px;
            height: 27px;
            text-align: right;
        }
        .auto-style5 {
            height: 27px;
            width: 600px;
        }
        .auto-style7 {
            height: 27px;
            width: 216px;
        }
        .auto-style8 {
            width: 216px;
        }
        .auto-style9 {
            width: 600px;
        }
        .auto-style10 {
            width: 618px;
            text-align: right;
            height: 23px;
        }
        .auto-style11 {
            width: 216px;
            height: 23px;
        }
        .auto-style12 {
            width: 600px;
            height: 23px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1" align="center">
    
        Login Page<br />
        <br />
    </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">Username</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtUsername" runat="server" Width="194px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="*Please Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtPassword" runat="server" Width="194px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Width="198px" />
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
            </tr>
        </table>
        <p style="text-align: center">
            &nbsp;</p>
        <p style="text-align: center">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Welcome.aspx">Back to Homepage</asp:HyperLink>
        </p>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Member.aspx.cs" Inherits="Library_Management_System.Member_Manager.Member_Details.AddMember" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            width: 276px;
            text-align: right;
        }
        .auto-style5 {
            width: 202px;
        }
        .auto-style6 {
            width: 220px;
        }
        .auto-style7 {
            width: 276px;
            text-align: right;
            height: 34px;
        }
        .auto-style8 {
            width: 202px;
            height: 34px;
        }
        .auto-style9 {
            width: 220px;
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <h1>Add Member</h1>
            <br />
            <br />
        </div>
        
        <div  align="center">
            <table cellpadding="4" cellspacing="4" style="margin-left: 0px">
          <tr>
            <td class="auto-style4">Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtName" runat="server" Width="171px"></asp:TextBox></td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*Name is invalid(Only Characters)" ValidationExpression="^[a-zA-Z]+$" ForeColor="Red"></asp:RegularExpressionValidator>
              </td>
            </tr>

           <tr>
            <td class="auto-style4">Phone</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPhone" runat="server" Width="172px"></asp:TextBox></td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="*Phone Number is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Invalid Phone Number" ValidationExpression="^(?:\+88|01)?\d{11}$" ForeColor="Red"></asp:RegularExpressionValidator>
               </td>
            </tr>
            

               <tr>
            <td class="auto-style7">Date of Birth</td>
            <td class="auto-style8"><asp:TextBox ID="txtDateofBirth" runat="server" Width="172px"></asp:TextBox></td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDateofBirth" ErrorMessage="*Select Date of Birth" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtDateofBirth" ErrorMessage="*Date Format (dd-MM-yyyy)" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" ForeColor="Red"></asp:RegularExpressionValidator>
                   </td>
            </tr>

            <tr>
            <td class="auto-style4">Gender</td>
           
            <td class="auto-style6">
                <asp:DropDownList ID="dropdownGender" runat="server" style="margin-left: 0px" Width="172px">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="dropdownGender" ErrorMessage="*Select Gender" ForeColor="Red" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
            <td class="auto-style4">Email</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtEmail" runat="server" Width="172px"></asp:TextBox>
                </td>
            <td class="auto-style6"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
            <td class="auto-style4">Age</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtAge" runat="server" Width="172px"></asp:TextBox>
                </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAge" ErrorMessage="*Age is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtAge" ErrorMessage="*Invalid Input(Numbers only)" ValidationExpression="^[0-9]*$" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
            <td class="auto-style4">Joining Date</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtJoinDate" runat="server" Width="172px"></asp:TextBox>
                </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtJoinDate" ErrorMessage="*Select Joining Date" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtJoinDate" ErrorMessage="*Date Formation (dd-MM-yyyy)" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>


            <tr>
            <td class="auto-style4">Username</td>
            <td class="auto-style5"><asp:TextBox ID="txtUsername" runat="server" Width="167px"></asp:TextBox></td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtUsername" ErrorMessage="*Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

                <tr>
            <td class="auto-style4">Password</td>
            <td class="auto-style5"><asp:TextBox ID="txtPassword" runat="server" Width="167px"></asp:TextBox></td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            

                <tr>
            <td class="auto-style4">Confirm Passwor</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtConfirmPassword" runat="server" Width="172px"></asp:TextBox>
                    </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="*Confirm Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="*Password doesn't match" ForeColor="Red"></asp:CompareValidator>
                    </td>
            </tr>
            

          <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5"><asp:Button ID="btnSave" runat="server" Text="Save" Width="97px" OnClick="btnSave_Click" /></td>
            <td class="auto-style6">&nbsp;</td>
          </tr>
            
          

        </table>
            <asp:Label ID="lblConfirmation" runat="server" Text=""></asp:Label>

            <br/>
            <br/>
            <h3>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin Panel/Member Manager/Member_Manager.aspx">Back to Member Manager</asp:HyperLink></h3>
        </div>

    </form>
</body>
</html>

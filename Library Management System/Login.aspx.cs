using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Library_Management_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["librarydb"].ConnectionString);
            con.Open();

            string checkUsername = "SELECT count(*) from User_Access WHERE Username='"  +txtUsername.Text+  "'";
            SqlCommand userCmd = new SqlCommand(checkUsername, con);

            int temp = Convert.ToInt32(userCmd.ExecuteScalar().ToString());
            con.Close();

            if (temp == 1)
            {
                con.Open();
                string checkPassword = "SELECT Password from User_Access WHERE Username='" +txtUsername.Text+ "'";

                SqlCommand passCmd = new SqlCommand(checkPassword, con);
                string password = passCmd.ExecuteScalar().ToString().Replace(" ","");

                if( password == txtPassword.Text)
                {
                    string checkUserType = "SELECT Role from User_Access Where Username='" +txtUsername.Text+ "'";
                    SqlCommand userTypeCmd = new SqlCommand(checkUserType, con);

                    string userType = userTypeCmd.ExecuteScalar().ToString();

                    if (userType == "Admin")
                    {
                        Session["Username"] = txtUsername.Text;
                        Session["Password"] = txtPassword.Text;
                        Response.Redirect("~/Dashboard/Admin_Dashboard.aspx");
                    }
                    else
                    {
                        Session["Username"] = txtUsername.Text;
                        Session["Password"] = txtPassword.Text;
                       Server.Transfer("~/Dashboard/Member_Dashboard.aspx");
                    }
                }
                else
                {
                    Response.Write("Password is Incorrect");
                }
            }

            else
            {
                Response.Write("Username is incorrect");
            }

        }


    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System.Member_Manager.Member_Details
{
    public partial class AddMember : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["librarydb"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null && Session["Password"] != null)
            {

            }
            else
            {
                Response.Redirect("~/Login.aspx");
            } 
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);

            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "INSERT INTO User_Access VALUES (@username,@password, 'Member' )";
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            

            
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            cmd.Parameters.Clear();


            cmd.CommandText = "INSERT INTO Users VALUES (@username,@name,@phone,@gender,@dob,@email,@age,@joindate)";
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
            cmd.Parameters.AddWithValue("@gender", dropdownGender.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@dob", txtDateofBirth.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@age", txtAge.Text);
            cmd.Parameters.AddWithValue("@joindate", txtJoinDate.Text);
            cmd.ExecuteNonQuery();

            lblConfirmation.Text = "User Information Added Successfully";
            con.Close();

            /*string str = "INSERT INTO Users VALUES ('" + txtUsername.Text + "', '" + txtName.Text + "', '" + txtPhone.Text + "' , '" + dropdownGender.SelectedItem + "' , '" + txtDateofBirth.Text + "', '" +txtEmail.Text + "', '" + txtAge.Text + "' ,'" + txtJoinDate.Text + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            
            con.Close();*/
        }
    }
}
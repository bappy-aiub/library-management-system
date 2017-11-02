using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System.Borrower_Manager
{
    public partial class BorrowerManager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null && Session["Password"] !=null)
            {
                
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            } 
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM USERS WHERE (Username LIKE '%' + @search + '%') ";
            string connectionString = ConfigurationManager.ConnectionStrings["librarydb"].ConnectionString;
            SqlConnection connect = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(sql, connect);

            cmd.Parameters.Add("@search", SqlDbType.VarChar).Value = TextBox1.Text;

            connect.Open();

            cmd.ExecuteNonQuery();

            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = cmd;
            DataSet ds = new DataSet();
            sda.Fill(ds, "Username");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            connect.Close();
        }
    }
}
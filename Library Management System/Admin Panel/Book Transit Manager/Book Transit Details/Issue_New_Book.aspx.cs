using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System.Book_Transit_Manager.Book_Transit_Details
{
    public partial class Issue_New_Book : System.Web.UI.Page
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

            loadBooksList();
            loadUsernameList();
           // txtIssueDate.Text = DateTime.Now.ToString("yyyy-MM-dd");
            txtReturnDate.Text = DateTime.Today.AddDays(7).ToString("yyyy-MM-dd");
        }

        private void loadBooksList()
        {
            DataTable books = new DataTable();

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM Books", con);
                    adapter.Fill(books);

                    DropDownList1.DataSource = books;
                    DropDownList1.DataTextField = "Book_Title";
                    DropDownList1.DataValueField = "ISBN";
                    DropDownList1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write(ex);
                }
            }
        }

        private void loadUsernameList()
        {
            DataTable usernames = new DataTable();

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT Username FROM Users", con);
                    adapter.Fill(usernames);

                    DropDownList2.DataSource = usernames;
                    DropDownList2.DataTextField = "Username";
                    DropDownList2.DataValueField = "Username";
                    DropDownList2.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write(ex);
                }

            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);

            con.Open();

            string str = "INSERT INTO Issue_Details VALUES ('" + txtIssueDate.Text + "', '" + txtReturnDate.Text + "', 'Issued', '" + DropDownList1.SelectedValue + "' , '" + DropDownList2.SelectedValue + "' )";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            lblConfirmation.Text = "Book Issued Successfully";
            con.Close();
        }

        }
      }


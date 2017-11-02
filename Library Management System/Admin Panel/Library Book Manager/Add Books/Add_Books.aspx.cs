using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Library_Management_System.Library_Book_Manager.Add_Books
{
    public partial class Add_Books : System.Web.UI.Page
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

            loadAuthorList();
            loadCategoryList();
            loadPublisherList();
        }

        private void loadAuthorList()
        {
            DataTable authors = new DataTable();
 
            using(SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM Author", con);
                    adapter.Fill(authors);

                    dropdownAuthorName.DataSource = authors;
                    dropdownAuthorName.DataTextField = "Author_Name";
                    dropdownAuthorName.DataValueField = "Author_ID";
                    dropdownAuthorName.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write(ex);
                }

               // dropdownAuthorName.Items.Insert(0, new ListItem("Select Author", "0"));

            }
        }

        private void loadCategoryList()
        {
            DataTable categories = new DataTable();

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM Category", con);
                    adapter.Fill(categories);

                    dropdownCategory.DataSource = categories;
                    dropdownCategory.DataTextField = "Category";
                    dropdownCategory.DataValueField = "Category_ID";
                    dropdownCategory.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write(ex);
                }

             //   dropdownCategory.Items.Insert(0, new ListItem("Select Category", "0"));
            }
        }

        private void loadPublisherList()
        {
            DataTable publishers = new DataTable();

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM Publisher", con);
                    adapter.Fill(publishers);

                    dropdownPublisherName.DataSource = publishers;
                    dropdownPublisherName.DataTextField = "Publisher_Name";
                    dropdownPublisherName.DataValueField = "Publisher_ID";
                    dropdownPublisherName.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write(ex);
                }

              //  dropdownPublisherName.Items.Insert(0, new ListItem("Select Publisher", "0"));
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);

            con.Open();

           string str = "INSERT INTO Books VALUES ('" + txtISBN.Text + "', '" + txtBookTitle.Text + "', '" + txtPublicationYear.Text + "' , '" + dropdownLanguage.SelectedItem + "' , '" + txtQuantity.Text + "', '" + dropdownAuthorName.SelectedValue + "', '" + dropdownCategory.SelectedValue + "' ,'" + dropdownPublisherName.SelectedValue + "')";
           SqlCommand cmd = new SqlCommand(str, con);
           cmd.ExecuteNonQuery();
           lblConfirmation.Text = "Book Information Added Successfully";
           con.Close();

           Response.Redirect("~/Admin Panel/Library Book Manager/Add Books/Add_Books.aspx");

           
        }

        private void clear()
        {
            txtISBN.Text = String.Empty;
            txtBookTitle.Text = String.Empty;
            txtPublicationYear.Text = String.Empty;
            txtQuantity.Text = String.Empty;

          

        }
    }
}
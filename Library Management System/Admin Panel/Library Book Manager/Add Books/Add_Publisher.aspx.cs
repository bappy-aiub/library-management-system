﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Library_Management_System.Library_Book_Manager.Add_Books
{
    public partial class Add_Publisher : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["librarydb"].ConnectionString);
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
            con.Open();

            string str = "INSERT INTO Publisher(Publisher_Name) VALUES ('" + txtPublisher.Text + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            lblConfirmation.Text = "Publisher Added Successfully";

            con.Close();
            txtPublisher.Text = "";
        }
    }
}
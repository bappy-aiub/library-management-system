using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System.Book_Transit_Manager
{
    public partial class Book_Transit_Manager : System.Web.UI.Page
    {
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
    }
}
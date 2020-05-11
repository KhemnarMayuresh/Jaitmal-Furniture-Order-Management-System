using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace miniProject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //session check
            if (Session["username"] == null)
                Response.Redirect("Login.aspx");

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("Login.aspx");    
        }
    }
}
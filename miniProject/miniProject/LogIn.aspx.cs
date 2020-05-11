using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace miniProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "Jaitmal" && TextBox2.Text == "IJ@39")
            {
                Label1.Text = "Sucessful";
                Session["username"] = TextBox1.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Label1.Text = "Your username and password is incorrect";
            }  
  
        }
    }
}
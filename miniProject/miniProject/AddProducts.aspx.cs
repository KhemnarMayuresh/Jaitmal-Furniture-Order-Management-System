using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.IO;

namespace miniProject
{
    public partial class AddProducts : System.Web.UI.Page
    {
      OleDbConnection con = new OleDbConnection(@"PROVIDER = Microsoft.SQLSERVER.CE.OLEDB.3.5;" + @" Data Source=C:\Users\Yash\Documents\miniproject.sdf");

        protected void Page_Load(object sender, EventArgs e)
        {
            //session check
            if (Session["username"] == null)
                Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name, price,image;
            //Input data
            name = TextBox1.Text; price = TextBox2.Text;
            string path = Server.MapPath("Images/");
            if (FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".jpg" || ext==".png")
                {
                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    image = "Images/" + FileUpload1.FileName;
                    con.Open();
                    OleDbCommand cmd = new OleDbCommand(); cmd.Connection = con;
                    cmd.CommandText = "insert into Product (Name,Price,Image) values ('" + name + "','" + price + "','" + image + "')";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("Data Saved Successfully!");
                }
                else
                {
                    lblMessage.Text = "Only jpg or png file can selected";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            else{
                lblMessage.Text = "No File Selected";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
               
        }
    }
}
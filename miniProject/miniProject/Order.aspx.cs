using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.IO;
using System.Data;

namespace miniProject
{
    public partial class Order : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(@"PROVIDER = Microsoft.SQLSERVER.CE.OLEDB.3.5;" + @" Data Source=C:\Users\Yash\Documents\miniproject.sdf");

        protected void Page_Load(object sender, EventArgs e)
        {
            //session check
            if (Session["username"] == null)
                Response.Redirect("Login.aspx");

            referesh();
        }
        protected void referesh()
        {
            con.Open();
            OleDbCommand cmd = new OleDbCommand(); cmd.Connection = con;
            cmd.CommandText = "select * from OrderDetails order by Oid desc";
            OleDbDataAdapter da = new OleDbDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string id,deldate;
            deldate=DateTime.Now.ToString("dd/MM/yyyy");
            id= TextBox1.Text;

            con.Open();
            OleDbCommand cmd = new OleDbCommand(); cmd.Connection = con;
            cmd.CommandText = "update OrderDetails set Rem = '00', Delivered='Yes', DelDate='" + deldate + "' where Oid='"+id+"'";
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            Response.Write("Order Delievered !!");
            referesh();
        }
    }
}
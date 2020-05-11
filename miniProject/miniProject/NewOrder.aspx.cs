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
    public partial class NewOrder : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(@"PROVIDER = Microsoft.SQLSERVER.CE.OLEDB.3.5;" + @" Data Source=C:\Users\Yash\Documents\miniproject.sdf");
 
        protected void Page_Load(object sender, EventArgs e)
        {
            //session check
            if (Session["username"] == null)
                Response.Redirect("Login.aspx");

            if (!IsPostBack)
            {
                con.Open();
                string dbSQL = "";
                dbSQL = "Select Name from Product order by Id";
                OleDbCommand dbCommand = new OleDbCommand(dbSQL, con);
                dbCommand.CommandType = CommandType.Text;
                OleDbDataAdapter daList = new OleDbDataAdapter(dbCommand);
                DataTable dtList = new DataTable();
                daList.Fill(dtList);

                DropDownList1.DataSource = dtList;
                DropDownList1.DataTextField = "Name";
                DropDownList1.DataValueField = "Name";
                DropDownList1.DataBind();

                con.Close();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedtext = DropDownList1.SelectedValue;
            con.Open();
            OleDbCommand cmd = new OleDbCommand(); cmd.Connection = con;
            cmd.CommandText = "Select * from Product";
            OleDbDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                if (reader.GetValue(1).ToString() == selectedtext)
                {
                    Productid.Text = reader.GetValue(0).ToString();
                    Label8.Text = reader.GetValue(2).ToString();
                    Image1.ImageUrl = reader.GetValue(3).ToString();
                }
            }
            reader.Close();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string total, paid, full_name,date,quantity,no,rem,del;
            full_name = TextBox3.Text; quantity = TextBox4.Text; no = TextBox5.Text;
            total = TextBox1.Text; paid = TextBox2.Text; del = "No";
            rem = (Convert.ToInt32(total) - Convert.ToInt32(paid)).ToString();
            date=DateTime.Now.ToString("dd/MM/yyyy");
            con.Open();
            OleDbCommand cmd = new OleDbCommand(); cmd.Connection = con;
            cmd.CommandText = "insert into OrderDetails (Pid,BuyerName,Date,No,Paid,Total,Rem,Delivered,Quantity) values ('" + Productid.Text + "','" + full_name + "','" + date + "','" + no + "','" + paid + "','" + total + "','" + rem + "','" + del + "','" + quantity + "')";
            int res=cmd.ExecuteNonQuery();
            if (res > 0)
            {
                string msg = "Remaning Amount is Rs. " + rem;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                Response.Write("Order Added Sucessfully!!");
            }
            else
                Response.Write("Error !!");
            con.Close();
        }

        //Validators
        protected void TextBox4_TextChanged(object sender, System.EventArgs e)
        {
            if (Convert.ToInt32(TextBox4.Text) > 0)
            {
                TextBox1.Text = (Convert.ToDouble(TextBox4.Text) * Convert.ToDouble(Label8.Text)).ToString();
                messagequan.Text = "";
            }
            else
            {
                messagequan.Text = "Quantity Can't be Negative or Zero";
                TextBox1.Text = "";
            }
        }

        protected void MobileNoValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length == 10)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    }
}
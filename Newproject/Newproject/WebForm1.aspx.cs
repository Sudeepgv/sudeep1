using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Newproject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-RBACH3RD;Initial Catalog=log;User ID=sa;Password=Sigma@123");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand order = new SqlCommand("select username from log where username ='" + DropDownList1.Text + "'and password='" + Textpass.Text + "'", con);
            SqlDataReader dr = order.ExecuteReader();
            if (dr.Read())
            {
                Session["id"] = DropDownList1.Text;
                Response.Redirect("WebForm2.aspx");
            }
            else
            {
                Response.Write("Password does not Match");
            }
        }
    }
}
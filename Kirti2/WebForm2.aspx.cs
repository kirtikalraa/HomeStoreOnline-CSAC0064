using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kirti
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\registration.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            string check = "select count (*) from [table] where name= '" + TextBox1.Text + "' and Password= '" + TextBox2.Text + "'";
            SqlCommand com = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if(temp==1)
            {
                Response.Redirect("Mainpage.aspx");
            }
            else
            {
                Label10.ForeColor = System.Drawing.Color.Red;
                Label10.Text = "Your Username or Password is Invalid";
            }
        }
    }
}
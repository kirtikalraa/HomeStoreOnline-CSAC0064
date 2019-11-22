using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalproject
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("select passwd from Table where passwd= '"+ textbox1.Text + "' ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count.ToString() == "1")
            {
                if(newpassword==conpass)
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Update Table set passwd= '"+ conpas.Text+"' where passwd='"+ textbox1.Text +"'",con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label1.Text = "Succesfully Updated";
                    Label1.ForeColor = System.Drawing.Color.Green;

                }
            }
            else
            {
                Label1.Text = "Please Check your old passwsord";
            }
        }
    }
}
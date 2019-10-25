using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kirti
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\registration.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ins = "Insert into[table](name, phonenumber, password, conpass)values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox14.Text + "','" + TextBox24.Text + "')";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            captcha1.ValidateCaptcha(TextBox1.Text.Trim());
            if (captcha1.UserValidated)
            {
                Label4.ForeColor = System.Drawing.Color.Green;
                Label4.Text = "Your Captcha Text Has Been Verified Successfully. You Have Entered Valid Captcha";
               Panel1.Visible = false;
            }
            else
            {
                Label4.ForeColor = System.Drawing.Color.Red;
                Label4.Text = "Your Captcha Text Verification is UnSuccessfully. You Have Entered Invalid Captcha";
            }


        }
    }
}
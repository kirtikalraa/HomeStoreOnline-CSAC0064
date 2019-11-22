using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace finalproject
{
    public partial class registration : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\marina.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string ins = "INSERT INTO [Table](urname,email,passwd) values('" + txturname.Text + "','" + txtemail.Text + "','" + txtpasswd.Text +  "')";
               SqlCommand com = new SqlCommand(ins, con);

            con.Open();
            com.ExecuteNonQuery();

            con.Close();
            }
        }
    }

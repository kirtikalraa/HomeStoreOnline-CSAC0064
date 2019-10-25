using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace kirti
{
    public partial class categorylist : System.Web.UI.Page
    {
        String connectionString2 =
        @"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Karanvir\source\repos\kirti\App_Data\Database1.mdf;Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateGridView();
            }
        }

        void PopulateGridView()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString2))
            {

                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT [CategoryName], [CategoryID] FROM editcategory", sqlCon);

                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                GridView1.Rows[0].Cells[0].Text = "No Data found..!!";
                GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           
            if (e.CommandName.Equals("AddNew"))
            {
                    using (SqlConnection sqlcon = new SqlConnection(connectionString2))
                    {
                        sqlcon.Open();
                        string query = "INSERT INTO editcategory (CategoryName, CategoryID) VALUES(@CategoryName,@CategoryID)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlcon);
                        sqlCmd.Parameters.AddWithValue("@CategoryName", (GridView1.FooterRow.FindControl("txtCategoryNameFooter") as TextBox).Text.Trim());

                        sqlCmd.Parameters.AddWithValue("@CategoryID", (GridView1.FooterRow.FindControl("txtCategoryIDFooter") as TextBox).Text.Trim());
                        sqlCmd.ExecuteNonQuery();
                       
                        PopulateGridView();
                        lblsuccessmessage.Text = "New record Added";
                        lblerrormessage.Text = "";
                    }
                }
            }
 

        

       

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            PopulateGridView();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            PopulateGridView();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {

              
                    using (SqlConnection sqlcon = new SqlConnection(connectionString2))
                    {
                        sqlcon.Open();
                        string query = "UPDATE editcategory SET CategoryName=@CategoryName,CategoryID=@CategoryID";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlcon);
                        sqlCmd.Parameters.AddWithValue("@CategoryName", (GridView1.Rows[e.RowIndex].FindControl("txtCategoryNameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@CategoryID", (GridView1.Rows[e.RowIndex].FindControl("txtCategoryIDFooter") as TextBox).Text.Trim());
                        sqlCmd.ExecuteNonQuery();
                        GridView1.EditIndex = -1;
                        PopulateGridView();
                        lblsuccessmessage.Text = "New record Added";
                        lblerrormessage.Text = "";
                    }
                
            }
            catch (Exception ex)
            {
                lblsuccessmessage.Text = "";
                lblerrormessage.Text = "ex.Message";
            }

        }
    

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {

                
                    using (SqlConnection sqlcon = new SqlConnection(connectionString2))
                    {
                        sqlcon.Open();
                        string query = "DELETE INTO editcategory WHERE CategoryID= @id";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlcon);
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
                        sqlCmd.ExecuteNonQuery();

                        PopulateGridView();
                        lblsuccessmessage.Text = "SELECTED RECORD DELETED";
                        lblerrormessage.Text = "";
                    }
                }
            
            catch (Exception ex)
            {
                lblsuccessmessage.Text = "";
                lblerrormessage.Text = "ex.Message";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
         
         }
    }
}
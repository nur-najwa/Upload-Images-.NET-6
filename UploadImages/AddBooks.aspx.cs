using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace UploadImages
{
    public partial class AddBooks : System.Web.UI.Page
    {
        //connect sqlserver
        string connectionString = @"Data Source=localhost\MSSQLSERVER04;Initial Catalog=ImageSys;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //add books button
        protected void AddBook_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    if(FileUpload1.HasFile)
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO Books (BookID,BookName,Price,Img) VALUES (@BookID,@BookName,@Price,@Img)";
                        SqlCommand sqlCommand = new SqlCommand(query, sqlCon);
                        FileUpload1.SaveAs(Server.MapPath("~/BookImg/") + System.IO.Path.GetFileName(FileUpload1.FileName));
                        string linkPath = "BookImg/" + System.IO.Path.GetFileName(FileUpload1.FileName);

                        sqlCommand.Parameters.AddWithValue("@BookID", TxBookID.Text);
                        sqlCommand.Parameters.AddWithValue("@BookName", TxBookName.Text);
                        sqlCommand.Parameters.AddWithValue("@Price", TxPrice.Text);
                        sqlCommand.Parameters.AddWithValue("@Img", linkPath);

                        sqlCommand.ExecuteNonQuery();
                        sqlCon.Close();
                    }
                }

                MessageBox.Show("Add successful");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Add failed!");
            }
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}
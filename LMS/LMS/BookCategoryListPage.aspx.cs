using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LMS
{
    public partial class BookCategoryListPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void delete(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "delete")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow selectedRow = GridView1.Rows[index];
                TableCell id = selectedRow.Cells[0];
                int cid = Convert.ToInt32(id.Text);
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ookyawsoe\Desktop\LMS\LMS\LMS\LMS\App_Data\lms_db.mdf;Integrated Security=True");
                con.Open();
                string query = "delete from b_category where id=@id";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@id", cid);
                cmd.ExecuteNonQuery();
                Response.Write(Request.RawUrl);

                con.Close();
                Response.Write(Request.RawUrl);

            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
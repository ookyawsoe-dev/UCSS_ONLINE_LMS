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
    public partial class MemberList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ookyawsoe\Desktop\LMS\LMS\LMS\LMS\App_Data\lms_db.mdf;Integrated Security=True");
            con.Open();
            string sql = "select id,name,email,password,destination,department,description,profile_image  from members";
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
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
                string query = "delete from members where id=@id";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@id", cid);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect(Request.RawUrl);
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
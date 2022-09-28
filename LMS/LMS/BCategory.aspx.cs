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
    public partial class BCategory : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ookyawsoe\Desktop\LMS\LMS\LMS\LMS\App_Data\lms_db.mdf;Integrated Security=True"); 
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;
        String query;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            //Response.Write("<script language='javascript'>alert('Session Accepted')</script>");
            String str = Session["category"].ToString();
            con.Open();
            query = "select b.b_name as  Name,b.author as Author,b.ISBN,b.edition as Edition,bc.category_name as Category from books as b join b_category as bc on bc.id=b.b_type_id where bc.category_name='" + str + "'";
            cmd = new SqlCommand(query, con);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("MemberBookBorrow.aspx");

            //Response.Write("<script language='javascript'> alert('Book Borrowed Successfully')</script>");
        }

        protected void Select(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "select")
            {
                string name = "";
                string author = "";
                string isbn = "";
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow selectedRow = GridView1.Rows[index];
                TableCell id = selectedRow.Cells[0];
                int cid = Convert.ToInt32(id.Text);
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ookyawsoe\Desktop\LMS\LMS\LMS\LMS\App_Data\lms_db.mdf;Integrated Security=True");
                con.Open();
                string query = "select b_name,author,isbn from books where id=@id";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@id", cid);
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    name = rd["b_name"].ToString();
                    author = rd["author"].ToString();
                    isbn = rd["isbn"].ToString();



                    Session["book_name"] = name;
                }
            }
        }
    }
}
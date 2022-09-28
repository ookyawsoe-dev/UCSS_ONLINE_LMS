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
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }else{

            }
            int count = 0;
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ookyawsoe\Desktop\LMS\LMS\LMS\LMS\App_Data\lms_db.mdf;Integrated Security=True");
            con.Open();
            SqlCommand bookCount = new SqlCommand("select count(id) from books", con);
            count = Convert.ToInt32(bookCount.ExecuteScalar());
            totalBookCount.Text = count.ToString();

            SqlCommand memberCount = new SqlCommand("select count(id) from members", con);
            count = Convert.ToInt32(memberCount.ExecuteScalar());
            totalmemberCount.Text = count.ToString();

            SqlCommand borrowBookCount = new SqlCommand("select count(id) from book_borrow_receive where status=@borrow", con);
            borrowBookCount.Parameters.AddWithValue("@borrow", "borrow");
            count = Convert.ToInt32(borrowBookCount.ExecuteScalar());
            totalBorrowBookCount.Text = count.ToString();

            SqlCommand returnBookCount = new SqlCommand("select count(id) from book_borrow_receive where status=@return", con);
            returnBookCount.Parameters.AddWithValue("@return", "return");
            count = Convert.ToInt32(returnBookCount.ExecuteScalar());
            totalReturnBookCount.Text = count.ToString();
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void select(object sender, GridViewCommandEventArgs e)
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

                if (name != "")
                {
                    Session["book_name"] = name;
                    Session["author"] = author;
                    Session["isbn"] = isbn;

                }
                else
                {
                    Session["book_name"] = null;
                }

                Response.Redirect("~/BorrowReceivedBook.aspx");
                con.Close();
            }
           
        }
    }
}
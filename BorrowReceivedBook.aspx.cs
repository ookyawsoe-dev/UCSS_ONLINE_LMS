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
    public partial class BorrowReceivedBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["book_name"] != null)
            {
                txtAdmin.Text = Session["Name"].ToString();
                txtBookName.Text = Session["book_name"].ToString();
                txtAuthor.Text = Session["author"].ToString();
                txtISBN.Text = Session["isbn"].ToString();



            }
            
           
        }

        protected void txtReturn_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnBorrow_Click(object sender, EventArgs e)
        {
            string status = "borrow";
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ookyawsoe\Desktop\LMS\LMS\LMS\LMS\App_Data\lms_db.mdf;Integrated Security=True");
            con.Open();
            string sql = "insert into book_borrow_receive values (@admin_name,@member_name,@book_name,@status,@borrow_date,@receive_date)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@admin_name", txtAdmin.Text);
            cmd.Parameters.AddWithValue("@member_name", txtBorrower.Text);
            cmd.Parameters.AddWithValue("@book_name", txtBookName.Text);
            cmd.Parameters.AddWithValue("@status", status);
            cmd.Parameters.AddWithValue("@borrow_date", txtBorrowDate.Text);
            cmd.Parameters.AddWithValue("@receive_date", txtReturnDate.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("BookBorrowList.aspx");
        }

        protected void txtClear_Click(object sender, EventArgs e)
        {
            //Response.Redirect(Request.RawUrl);
        }
    }
}
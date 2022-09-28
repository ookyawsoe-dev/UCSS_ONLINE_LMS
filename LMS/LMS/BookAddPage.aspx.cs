using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace LMS
{
    public partial class BookAddPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtClear_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookAddPage.aspx");
        }

        protected void txtAdd_Click(object sender, EventArgs e)
        {
            string id = "";
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ookyawsoe\Desktop\LMS\LMS\LMS\LMS\App_Data\lms_db.mdf;Integrated Security=True");
            con.Open();
            SqlCommand BookCategoryID = new SqlCommand("select id from b_category where ([category_name] = '" + DropDownList1.SelectedItem.Value + "') ", con);
            SqlDataReader rd = BookCategoryID.ExecuteReader();
            while (rd.Read())
            {
                 id = rd["id"].ToString();
            }
            rd.Close();
            string insq = "insert into books(b_name,author,ISBN,edition,qty,b_type_id,b_staff,description,cover_image,pdf,created_date,update_date) values(@b_name,@author,@ISBN,@edition,@qty,@b_type_id,@b_staff,@description,@cover_image,@pdf,@created,@updated)";
            SqlCommand cmd = new SqlCommand(insq, con);

            if (FileUpload1 == null || FileUpload2 == null)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Choose File!!')</script>");

            }
            else
            {

                string fileName = FileUpload1.FileName.ToString();
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/images/") + fileName);

                string fileNameOne = FileUpload2.FileName.ToString();
                FileUpload2.PostedFile.SaveAs(Server.MapPath("~/upload/files/") + fileNameOne);
                try
                {
                    cmd.Parameters.AddWithValue("@b_name", txtName.Text);
                    cmd.Parameters.AddWithValue("@author", txtAuthor.Text);
                    cmd.Parameters.AddWithValue("@ISBN", txtISBN.Text);
                    cmd.Parameters.AddWithValue("@edition", txtEdition.Text);
                    cmd.Parameters.AddWithValue("@qty", txtQty.Text);
                    cmd.Parameters.AddWithValue("@b_type_id", id);
                    cmd.Parameters.AddWithValue("@b_staff", txtStaff.Text);
                    cmd.Parameters.AddWithValue("@description", txtDescription.Text);
                    cmd.Parameters.AddWithValue("@cover_image", "/upload/images/" + fileName);
                    cmd.Parameters.AddWithValue("@pdf", "/upload/files/" + fileNameOne);
                    cmd.Parameters.AddWithValue("@created", DateTime.Now);
                    cmd.Parameters.AddWithValue("@updated", DateTime.Now);
                    cmd.ExecuteNonQuery();
                    //Response.Write("<script LANGUAGE='JavaScript' >alert('Book Successfully Added!!')</script>");
                    Response.Redirect("BookListPage.aspx");
                }
                finally
                {
                    con.Close();
                }

            }
             
        }
    }
}
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
    public partial class AddNewMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void txtAdd_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ookyawsoe\Desktop\LMS\LMS\LMS\LMS\App_Data\lms_db.mdf;Integrated Security=True");
            con.Open();
            string sql = "insert into members values (@name,@email,@password,@destination,@department,@description,@profile,@created,@updated)";
            SqlCommand cmd = new SqlCommand(sql, con);
            string fileName = FileUpload1.FileName.ToString();
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/memberImage/") + fileName);

            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            cmd.Parameters.AddWithValue("@destination", txtDestination.Text);  
            cmd.Parameters.AddWithValue("@department", txtDept.Text);
            cmd.Parameters.AddWithValue("@description", txtDescription.Text);
            cmd.Parameters.AddWithValue("@profile", "/upload/memberImage/" + fileName);
            cmd.Parameters.AddWithValue("@created", DateTime.Now);
            cmd.Parameters.AddWithValue("@updated", DateTime.Now);
            cmd.ExecuteNonQuery();
            //Response.Write("<script LANGUAGE='JavaScript' >alert('Memeber Successfully Added!!')</script>");
            Response.Redirect("MemberListPage.aspx");

            con.Close();
        }

        protected void txtClear_Click(object sender, EventArgs e)
        {
           
        }
    }
}
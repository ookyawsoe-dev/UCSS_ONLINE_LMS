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
    public partial class MemberRgisteration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ookyawsoe\Desktop\LMS\LMS\LMS\LMS\App_Data\lms_db.mdf;Integrated Security=True");
        SqlCommand cmd, CheckMember;
        SqlDataAdapter da, Checkda;
        DataTable dt, Checkdt;
        String query = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void FillDrop()
        {
            //throw new NotImplementedException();
            DDList2.DataSource = getMemberData();
            DDList2.DataTextField = "dpartyear";
            DDList2.DataValueField = "id";
            DDList2.DataBind();

        }

        private object getMemberData()
        {
            //throw new NotImplementedException();
            if (rBtn1.Checked == true)
            {

                cmd = new SqlCommand("select * from dpart where status='tutor'", con);
                //cmd.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
            }
            else if (rBtn2.Checked == true)
            {
                cmd = new SqlCommand("select * from dpart where status='std'", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
            }
            return dt;
        }

        protected void btnRegs_Click(object sender, EventArgs e)
        {
           
        }

        protected void radioButton_onChanged(object sender, EventArgs e)
        {
            FillDrop();
        }

        protected void txtPwd_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Response.Redirect("MemberRegistration.aspx");
        }

        protected void btnRegs_Click1(object sender, EventArgs e)
        {
            String member = "";
            if (rBtn1.Checked)
            {
                member = "Educator";
            }
            else if (rBtn2.Checked)
            {
                member = "Student";
            }

            con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ookyawsoe\Desktop\LMS\LMS\LMS\LMS\App_Data\lms_db.mdf;Integrated Security=True");
            con.Open();
            CheckMember = new SqlCommand("Select email from members where ([email]='" + txtEmail.Text + "')", con);
            Checkda = new SqlDataAdapter(CheckMember);
            Checkdt = new DataTable();
            Checkda.Fill(Checkdt);
            if (Checkdt.Rows.Count > 0)
            {
                Response.Write("<script language='javascript'> alert('Member Already Exit!')</script>");
            }
            else
            {
                query = @"insert into members(name,email,password,destination,department,profile_image,description) values(@na,@email,@pwd,@dest,@Dpart,@FUpload,@desc)";
                cmd = new SqlCommand(query, con);

                if (FileUpload == null)
                {
                    Response.Write("<script language='javascript'> alert('Please Choose your Profile Image')</script>");
                }

                else
                {
                    String fileName = FileUpload.FileName.ToString();
                    FileUpload.PostedFile.SaveAs(Server.MapPath("~/upload/memberImage/") + fileName);
                    try
                    {
                        cmd.Parameters.AddWithValue("@na", txtName.Text);
                        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                        cmd.Parameters.AddWithValue("@pwd", txtPwd.Text);
                        cmd.Parameters.AddWithValue("@dest", member);
                        cmd.Parameters.AddWithValue("@Dpart", DDList2.SelectedItem.ToString());
                        cmd.Parameters.AddWithValue("@FUpload", "~/upload/memberImage/" + fileName);
                        cmd.Parameters.AddWithValue("@desc", "အဆင်ပြေပါရေ");

                        cmd.ExecuteNonQuery();
                        Response.Write("<script language='javascript'> alert('Register Success')</script>");
                        Response.Redirect("LoginPage.aspx");
                       
                    }
                    finally
                    {
                        txtName.Text = "";
                        txtEmail.Text = "";
                        txtPwd.Text = "";
                        txtComPwd.Text = "";
                        
                        con.Close();
                    }
                }
            }
        }

        protected void btnClear_Click1(object sender, EventArgs e)
        {
            Response.Redirect("MemberRegistration.aspx");
        }
    }
}
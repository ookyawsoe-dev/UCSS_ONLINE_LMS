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
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ookyawsoe\Desktop\LMS\LMS\LMS\LMS\App_Data\lms_db.mdf;Integrated Security=True");
            con.Open();
           
            if (rdoAdmin.Checked)
            {
                string data = "select * from admin where ([name] = '" + txtName.Text + "')";
                SqlCommand cmd = new SqlCommand(data, con);
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    Session["ID"] = rd["id"].ToString();
                    Session["Email"] = rd["email"].ToString();
                    Session["Phone"] = rd["phone"].ToString();
                    Session["Password"] = rd["password"].ToString();

                }
                con.Close();
            }
            else
            {
                string memberdata = "select * from members where ([name] = '" + txtName.Text + "')";                
                SqlCommand cmdd = new SqlCommand(memberdata, con);
                SqlDataReader rdd = cmdd.ExecuteReader();
                while (rdd.Read())
                {
                    Session["ID"] = rdd["id"].ToString();
                    Session["Email"] = rdd["email"].ToString();
                    Session["Password"] = rdd["password"].ToString();

                }
            }
            
          
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtPassword.Text = "";
            lbShow.Text = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Session["Name"] = txtName.Text;

            if (txtName.Text == "" && txtPassword.Text == "")
            {
                lbShow.Text = "Please Enter Your Information";
            }
            else if (txtName.Text == "")
            {
                lbShow.Text = "Please Enter Your Name";
            }
            else if (txtPassword.Text == "")
            {
                lbShow.Text = "Please Enter Your Password";
            }
            else if (rdoAdmin.Checked)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ookyawsoe\Desktop\LMS\LMS\LMS\LMS\App_Data\lms_db.mdf;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select name, password from admin where name = @username and password = @password ", con);
                cmd.Parameters.AddWithValue("@username", txtName.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    Session["Name"] = txtName.Text;
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    lbShow.Text = "နာမည်နဲ့ပက်စဝက်မှားနေပါတယ်ရှင့်";
                    Response.Redirect("LoginPage.aspx");

                }
                con.Close();
            }
            else if (rdoMember.Checked)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ookyawsoe\Desktop\LMS\LMS\LMS\LMS\App_Data\lms_db.mdf;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select name, password from members where name = @na and password = @pass", con);
                cmd.Parameters.AddWithValue("@na", txtName.Text);
                cmd.Parameters.AddWithValue("@pass", txtPassword.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dta = new DataTable();
                sda.Fill(dta);

                if (dta.Rows.Count > 0)
                {
                    Session["Name"] = txtName.Text;
                    Response.Redirect("MemberHomePage.aspx");
                }
                else
                {
                    lbShow.Text = "နာမည်နဲ့ပက်စဝက်မှားနေပါတယ်";
                    Response.Redirect("LoginPage.aspx");

                }
                con.Close();
            }
            else
            {
                lbShow.Text = "Invalid User";
                Response.Redirect("LoginPage.aspx");
            }
        }
    }
}
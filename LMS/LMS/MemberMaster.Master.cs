 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMS
{
    public partial class MemberMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            else
            {

                profileName.Text = Session["Name"].ToString();
                

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Response.Write("<script language='javascript'> alert('Index changed Successfully')</script>");
            Session["category"] = DDListBCatg.SelectedItem.ToString();
            Response.Redirect("BCategory.aspx");                        
        }
    }
}
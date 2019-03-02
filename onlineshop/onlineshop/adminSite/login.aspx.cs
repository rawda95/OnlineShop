using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using onlineshop.BL;
using System.Data;

namespace onlineshop.adminSite
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string username = txt_name.Text;
            string password = txt_pass.Text;

            // return user id
            DataTable result = Users.check(username, password, 3);
             if (result.Rows.Count>0)
            {
                Session["user_id"] = result.Rows[0][0];
                lab_error.Text = Session["user_id"].ToString();
                Response.Redirect("~/adminSite/AdminMangement.aspx");

            }
            else
            {
                lab_error.Text = "wrong name or pasword";
                
            }

            txt_name.Text = "";
            txt_pass.Text = "";

        }
    }
}
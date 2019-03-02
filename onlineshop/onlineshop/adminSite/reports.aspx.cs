using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineshop.adminSite
{
    public partial class reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/adminSite/Report1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/adminSite/Report2.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/adminSite/Report3.aspx");

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/adminSite/Report4.aspx");

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/adminSite/Report5.aspx");

        }
    }
}
using System;

namespace onlineshop.gust
{
    public partial class gust : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lb_home_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/all.aspx");
        }

        protected void contact_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/all.aspx");

        }

        protected void lb_about_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/all.aspx");
        }
    }
}

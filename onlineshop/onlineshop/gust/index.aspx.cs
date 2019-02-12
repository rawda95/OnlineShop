using System;

namespace onlineshop.gust
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_Sele_With_Us_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/seller/login.aspx");
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/seller/login.aspx");
        }
    }
}

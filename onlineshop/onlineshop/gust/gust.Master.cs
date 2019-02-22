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
            Response.Redirect("~/gust/index.aspx");
        }

        protected void contact_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ContactPage.aspx");

        }

        protected void lb_about_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AboutUs.aspx");
        }

        protected void LB_AR_Click(object sender, EventArgs e)
        {

            Session["Lang"] = "en";
        }

        protected void LB_En_Click(object sender, EventArgs e)
        {
            Session["Lang"] = "ar";
        }



        protected void lb_signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/customer/signup.aspx");
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/customer/login.aspx");
        }

        protected void btnSaleWithUs_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/seller/login.aspx");
        }
    }
}

using System;
using System.Globalization;
using System.Threading;

namespace onlineshop
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected override void InitializeCulture()
        {
            if (Session["Lang"] != null)
            {
                Thread.CurrentThread.CurrentCulture = new CultureInfo(Session["Lang"].ToString());
                Thread.CurrentThread.CurrentUICulture = new CultureInfo(Session["Lang"].ToString());
            }
            base.InitializeCulture();
        }

        protected void Page_Load(object sender, EventArgs e)
        {


        }



        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/customer/login.aspx");
        }

        protected void lb_signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/customer/signup.aspx");
        }

        protected void btn_Sele_With_Us_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/seller/login.aspx");
        }
    }
}

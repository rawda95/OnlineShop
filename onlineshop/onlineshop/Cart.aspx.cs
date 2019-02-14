using System;
using System.Web.UI;

namespace onlineshop
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!Page.IsPostBack)
            {
                Session["customer_id"] = 2;
            }
            Session["customer_id"] = 2;
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            int customer_id = (int)Session["customer_id"];

            // Orders.add(customer_id, );
            btn_submit.Text = "done";
            Response.Redirect("~/cart.aspx");


        }
    }
}

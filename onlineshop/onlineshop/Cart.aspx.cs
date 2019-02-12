using onlineshop.Bl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

            Orders.add(customer_id, DateTime.Now);
            btn_submit.Text = "done";
            Response.Redirect("~/cart.aspx");


        }
    }
}
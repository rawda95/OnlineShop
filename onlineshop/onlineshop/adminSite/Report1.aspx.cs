using onlineshop.Bl;
using System;

namespace onlineshop.adminSite
{
    public partial class Report1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grd_customerorders.DataSource = Orders.GetOrders();
                grd_customerorders.DataBind();
            }
        }

        protected void grd_customerorders_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}

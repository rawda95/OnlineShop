using onlineshop.Bl;
using System;

namespace onlineshop.adminSite
{
    public partial class CanceledOrderReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dl_CanceledOrders.DataSource = Orders.GetCanceledOrders();
                dl_CanceledOrders.DataBind();
            }
        }
    }
}

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
    }
}

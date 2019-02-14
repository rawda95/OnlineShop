using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using onlineshop.BL;
using onlineshop.Bl;

namespace onlineshop.adminSite
{
    public partial class CanceledOrderReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                dl_CanceledOrders.DataSource = Orders.GetCanceledOrders();
                dl_CanceledOrders.DataBind();
            }
        }
    }
}
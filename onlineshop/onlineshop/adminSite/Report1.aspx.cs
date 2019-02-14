using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using onlineshop.Bl;
using onlineshop.BL;

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
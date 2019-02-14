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
    public partial class ShopandSellerInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                grd_shopsellerinfo.DataSource = Shop.getShopinfoSellerinfo();
                grd_shopsellerinfo.DataBind();
            }
        }

        protected void seller_info_Click(object sender, EventArgs e)
        {

        }
    }
}
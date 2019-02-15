using onlineshop.BL;
using System;
namespace onlineshop.adminSite
{
    public partial class ShopandSellerInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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

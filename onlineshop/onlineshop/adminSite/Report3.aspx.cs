using System;

namespace onlineshop.adminSite
{
    public partial class Report3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //  grd_ShopSellerinfo.DataSource = Shop.getShopinfoSellerinfo();
                grd_ShopSellerinfo.DataBind();
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using onlineshop.Bl;
using onlineshop.BL;

namespace onlineshop.adminSite
{
    public partial class AdminMangeShop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                grd_shopinfo.DataSource =NewShop.GetShopInfo();
                grd_shopinfo.DataBind();
            }
        }

        protected void grd_shopinfo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grd_shopinfo_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow row = grd_shopinfo.Rows[e.NewSelectedIndex];
            //int id = row.Cells[0].Text;

        }
    }
}
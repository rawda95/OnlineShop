using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using onlineshop.Bl;
using onlineshop.BL;
using onlineshop.Dl;
using System.Data;


namespace onlineshop.adminSite
{
    public partial class allsellers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = Users.getAllseller();
            GV_seller.DataSource = dt;
            GV_seller.DataBind();
        }

        protected void GV_seller_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = (int)GV_seller.DataKeys[e.RowIndex].Value;

           // Users.reomveseller(id,);
            
            GV_seller.DataSource = Users.getAllseller();
            GV_seller.DataBind();
        }

        protected void GV_seller_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GV_seller_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GV_seller_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }
    }
}
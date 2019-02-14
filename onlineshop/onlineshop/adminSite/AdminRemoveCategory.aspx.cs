using onlineshop.Bl;
using System;
using System.Web.UI.WebControls;

namespace onlineshop.adminSite
{
    public partial class AdminRemoveCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // grd_shopcategory.DataSource = Category.GetAllCategory();
                grd_shopcategory.DataBind();
            }
        }

        protected void grd_shopcategory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grd_shopcategory_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = (int)grd_shopcategory.DataKeys[e.RowIndex].Value;
            //int id = (int)e.Keys[e.RowIndex];
            int rowseffects = Category.reomve(id);
            grd_shopcategory.DataSource = Category.getAll();
            grd_shopcategory.DataBind();

        }
    }
}

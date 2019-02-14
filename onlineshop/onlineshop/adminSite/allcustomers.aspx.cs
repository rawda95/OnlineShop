using System;
using System.Web.UI.WebControls;

namespace onlineshop.adminSite
{
    public partial class allcustomers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //  DataTable dt = Users.getAllcustomers();
            //  GV_custmers.DataSource = dt;
            GV_custmers.DataBind();

        }

        protected void GV_custmers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GV_custmers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GV_custmers_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GV_custmers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }
    }
}

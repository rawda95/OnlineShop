using System;

namespace onlineshop.adminSite
{
    public partial class UserOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //  grd_customerorders.DataSource = Order_Products.GetCustomerOrder(3);
                grd_customerorders.DataBind();
            }
        }
    }
}

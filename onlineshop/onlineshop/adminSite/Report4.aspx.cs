using onlineshop.BL;
using System;
namespace onlineshop.adminSite
{
    public partial class Report4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            string username = txt_username.Text;

            grd_users.DataSource = Shop.SearchingUser(username);

            grd_users.DataBind();
        }
    }
}

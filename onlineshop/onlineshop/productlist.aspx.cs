using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using onlineshop.Bl;
using onlineshop.BL;
using onlineshop.Dl;

namespace onlineshop
{
    public partial class productlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    gv_list.DataSource = product.getAll();
                    gv_list.DataBind();
                }
                catch (Exception ex)
                {
                    //this.(ex);
                }


            }
        }
    }
}
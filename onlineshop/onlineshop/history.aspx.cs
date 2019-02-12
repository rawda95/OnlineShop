using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using onlineshop.Bl;
using onlineshop.BL;

namespace onlineshop
{
    public partial class history : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // check for session is null or not !! 
                //if session is Null will be redirect to login page 
             
                DataTable dt = Orders.get_customer_orders(1 /*Convert.ToInt32(Session["id"])*/);
                gv_history.DataSource = dt;
                gv_history.DataBind();
            }
        }

        protected void gv_history_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = (int)gv_history.DataKeys[e.RowIndex].Value;
            DataTable dt = Orders.getCustomerOrders(1/*Convert.ToInt32(Session["id"])*/);

            int value = int.Parse(dt.Rows[e.RowIndex]["order_status"].ToString());
            if (value == 1)
            {
                int roeeefect = Orders.reomve(index);
                if (roeeefect > 0)
                {
                    gv_history.DataSource = Orders.get_customer_orders(1 /*Convert.ToInt32(Session["id"])*/);
                    gv_history.DataBind();
                }
            }
            else
            {

            }
        }
    }
}
using System;
using System.Web.UI.WebControls;

namespace onlineshop.Customer
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dlcart.DataSource = onlineshop.BL.cart.get_Cart_Products(1);
                dlcart.DataBind();
            }
        }

        protected void dlcart_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            int item = int.Parse(dlcart.DataKeys[(int)e.Item.ItemIndex].ToString());
            Session["customer_id"] = 1;
            int cust_id = int.Parse(Session["customer_id"].ToString());
            onlineshop.BL.cart.remove_product(cust_id, item);
            dlcart.DataSource = onlineshop.BL.cart.get_Cart_Products(int.Parse(Session["customer_id"].ToString()));
            dlcart.DataBind();

        }

        protected void btn_checkout_Click(object sender, EventArgs e)
        {
            Session["customer_id"] = 1;
            int cust_id = int.Parse(Session["customer_id"].ToString());
            onlineshop.Bl.Orders.add(cust_id, DateTime.Now);
            btn_checkout.Text = "done";
        }
    }
}

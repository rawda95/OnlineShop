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

                //  if (Session["id"] != null)
                // {
                Session["id"] = 1;
                int customer_id = int.Parse(Session["id"].ToString());
                dlcart.DataSource = onlineshop.BL.cart.get_Cart_Products(customer_id);
                dlcart.DataBind();
                // }
                //else
                // {
                //  Response.Redirect("~/customer/login.aspx");

                // }
            }
        }

        protected void dlcart_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            int product_id = int.Parse(dlcart.DataKeys[(int)e.Item.ItemIndex].ToString());
            Session["id"] = 1;
            int cust_id = int.Parse(Session["id"].ToString());
            onlineshop.BL.cart.remove_product(cust_id, product_id);
            BindCart();


        }


        private void BindCart()
        {
            int cust_id = int.Parse(Session["id"].ToString());
            dlcart.DataSource = onlineshop.BL.cart.get_Cart_Products(cust_id);
            dlcart.DataBind();
            UpdatePanel_cart.Update();
        }


        protected void btn_checkout_Click(object sender, EventArgs e)
        {
            Session["id"] = 1;
            int cust_id = int.Parse(Session["id"].ToString());
            onlineshop.Bl.Orders.add(cust_id, string.Format("{0:HH:mm:ss tt}", DateTime.Now));
            BindCart();
            btn_checkout.Text = "done";

        }

        protected void dlcart_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int cust_id = int.Parse(Session["id"].ToString());
            int product_id = int.Parse(dlcart.DataKeys[(int)e.Item.ItemIndex].ToString());
            BL.cart.decrease_qty(cust_id, product_id, 1);
            BindCart();
        }



        protected void dlcart_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            int cust_id = int.Parse(Session["id"].ToString());
            int product_id = int.Parse(dlcart.DataKeys[(int)e.Item.ItemIndex].ToString());
            BL.cart.increase_qty(cust_id, product_id, 1);
            BindCart();
        }
    }
}

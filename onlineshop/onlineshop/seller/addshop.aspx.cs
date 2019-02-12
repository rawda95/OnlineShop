using onlineshop.BL;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineshop
{
    public partial class addshop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                int seller_id = int.Parse(Session["id"].ToString());
                DataTable temp = Shop.get_Shop_by_owner(seller_id);
                if (temp.Rows.Count > 0)
                {
                    Response.Redirect("~/seller/productList.aspx");
                }
            }
            else
                Response.Redirect("~/seller/login.aspx");

        }

        protected void btn_add_shop_Click(object sender, EventArgs e)
        {
            string path = "~/images/shop" + fu_shop.FileName;
            fu_shop.SaveAs(Server.MapPath(path));
            int seller_id = int.Parse(Session["id"].ToString());

            Shop.add(txt_shop_name.Text, txt_shop_locations.Text, txt_shop_desc.Text, path, seller_id);
            lbl_msg.Text = "shop added ";
            Response.Redirect("~/addcategory.aspx");
            CleartextBoxes(this);

            //foreach (Control c in Parent.Controls)
            //{
            //    if ((c.GetType() == typeof(TextBox)))
            //    {

            //        ((TextBox)(c)).Text = "";
            //    }
            //}
        }
        public void CleartextBoxes(Control parent)
        {

            foreach (Control c in parent.Controls)
            {
                if ((c.GetType() == typeof(TextBox)))
                {

                    ((TextBox)(c)).Text = "";
                }

                if (c.HasControls())
                {
                    CleartextBoxes(c);
                }
            }
        }

    }
}

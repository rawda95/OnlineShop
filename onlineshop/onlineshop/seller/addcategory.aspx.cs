using onlineshop.Bl;
using onlineshop.BL;
using System;
using System.Data;

namespace onlineshop
{
    public partial class addcategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //check for user access
            if (Session["id"] == null)
            {
                Response.Redirect("~/seller/login.aspx");
            }
            else
            {
                int seller_id = int.Parse(Session["id"].ToString());
                DataTable shop = Seller.get_shop_ID(seller_id);
                if (shop.Rows.Count < 0)
                {
                    Response.Redirect("~/seller/addshop.aspx");
                }
            }
        }

        protected void btn_add_category_Click(object sender, EventArgs e)
        {
            //try
            //{
            if (Category.name_is_exist(txt_category_name.Text))
            {
                lbl_msg.Text = "category is exist ";
            }
            else
            {
                Category.add(txt_category_name.Text);
                int category_id = Category.get_Id_by_name(txt_category_name.Text);
                int seller_id = int.Parse(Session["id"].ToString());
                int shop_id = int.Parse((Seller.get_shop_ID(seller_id).Rows[0][0]).ToString());
                shop_category.add(shop_id, category_id);
                lbl_msg.Text = "Category Added";
                txt_category_name.Text = string.Empty;
                Response.Redirect("~/seller/addproduct.aspx");
            }

            //}
            //catch
            //{

            //}
        }
    }
}

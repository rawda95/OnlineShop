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
                lb_name.Text = BL.Seller.getName(seller_id);

                DataTable shop = Seller.get_shop_ID(seller_id);
                if (shop.Rows.Count < 0)
                {
                    Response.Redirect("~/seller/addshop.aspx");
                }
                else
                {
                    ddl_category.DataSource = Category.getAll();
                    ddl_category.DataTextField = "name";
                    ddl_category.DataValueField = "id";
                    ddl_category.DataBind();
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


        protected void lb_logout_Click(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                Session.Clear();

            }
            if (Request.Cookies["mycookie"] != null)
            {
                Response.Cookies["mycookie"].Expires = DateTime.Now.AddDays(-1);
            }
            Response.Redirect("~/seller/login.aspx");

        }

        protected void lb_profile_Click(object sender, EventArgs e)
        {

        }

        protected void btn_select_Click(object sender, EventArgs e)
        {

        }
    }
}

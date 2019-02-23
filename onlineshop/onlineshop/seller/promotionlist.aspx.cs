using onlineshop.Bl;
using onlineshop.BL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineshop.seller
{
    public partial class promotionlist : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                int id = int.Parse(Session["id"].ToString());
                lb_name.Text = BL.Seller.getName(id);


                // or 
                int shop_id = int.Parse((Seller.get_shop_ID(id).Rows[0][0]).ToString());
                Session["shop_id"] = shop_id;
                //  dl_product.DataSource = Stock.get_shop_product(shop_id);
                // dl_product.DataBind();
                Bind_Dl_product(Promotions.get_Shop_promotions(shop_id));
                dl_shop_category.DataSource = shop_category.get_shop_category(shop_id);
                dl_shop_category.DataBind();

                // DataTable d = (DataTable)dl_product.DataSource;
            }
        }



        private void Bind_Dl_product(DataTable data)
        {
            r_product.DataSource = data;
            ViewState["products"] = data;
            r_product.DataBind();

            UpdatePanel_product.Update();
        }
        public object SafeEval(object container, string expression)
        {
            try
            {
                return DataBinder.Eval(container, expression);
            }
            catch (HttpException e)
            {
                // Write error details to minimize the harm caused by suppressed exception 
                // Trace.Write("DataBinding", "Failed to process the Eval expression", e);
            }

            return "Put here whatever default value you want";
        }

        protected void dl_shop_category_ItemCommand(object source, System.Web.UI.WebControls.DataListCommandEventArgs e)
        {
            if (e.Item.ItemType != ListItemType.Footer)
            {
                int category_id = int.Parse(dl_shop_category.DataKeys[(int)e.Item.ItemIndex].ToString());
                int shop_id = int.Parse(Session["shop_id"].ToString());
                // dl_product.DataSource = shop_category.get_Shop_category_products(shop_id, category_id);
                //dl_product.DataBind();
                //  UpdatePanel_product.Update();
                Bind_Dl_product(shop_category.get_Shop_category_promation(shop_id, category_id));

            }
            else
            {
                int seller_id = int.Parse(Session["id"].ToString());

                int shop_id = int.Parse((Seller.get_shop_ID(seller_id).Rows[0][0]).ToString());
                Bind_Dl_product(Promotions.get_Shop_promotions(shop_id));
            }



        }



        protected void search_TextChanged(object sender, EventArgs e)
        {
            int seller_id = int.Parse(Session["id"].ToString());
            int shop_id = int.Parse((Seller.get_shop_ID(seller_id).Rows[0][0]).ToString());


            if (!string.IsNullOrWhiteSpace(search.Text))
            {
                DataTable product_list;
                // product_list = new DataTable();
                product_list = (DataTable)ViewState["products"];
                product_list.DefaultView.RowFilter = "name like '%" + search.Text + "%'";
                Bind_Dl_product(product_list);

                // serchByname(search.Text);
                // Bind_Dl_product(Stock.search_shop_products(shop_id, Regex.Replace(search.Text, @"\s+", "")));
            }
            else
            {
                Bind_Dl_product((DataTable)ViewState["products"]);

                // serchByname(search.Text);
            }


        }

        protected void dl_product_ItemCommand(object source, ListViewCommandEventArgs e)
        {
            int product_id = int.Parse(r_product.DataKeys[(int)e.Item.DataItemIndex].Value.ToString());
            Response.Redirect(string.Format("~/seller/promotionDetials.aspx?id={0}", product_id));

        }

        protected void link_Click(object sender, EventArgs e)
        {

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

        [WebMethod]
        public List<string> GetProductName(string ProductName)
        {
            DataTable product_list;
            product_list = (DataTable)ViewState["products"];
            product_list.DefaultView.RowFilter = "name like '%" + ProductName + "%'";
            Bind_Dl_product(product_list);


            //DataTable dt = product.getNamesByName(ProductName);

            List<string> result = new List<string>();
            foreach (DataRow row in product_list.Rows)
            {
                result.Add(row["name"].ToString());
            }
            return result;


        }

    }
}

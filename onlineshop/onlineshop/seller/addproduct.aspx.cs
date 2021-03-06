﻿using onlineshop.BL;
using System;
using System.Data;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace onlineshop
{
    public partial class addproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["id"] == null)
                {
                    Response.Redirect("~/seller/login.aspx");
                }
                int shop_id = (int)Shop.get_Shop_by_owner(int.Parse(Session["id"].ToString())).Rows[0][0];
                if (!shop_category.shop_has_categorys(shop_id))
                {
                    Response.Redirect("~/seller/addcategory.aspx");
                }
                int seller_id = int.Parse(Session["id"].ToString());
                lb_name.Text = BL.Seller.getName(seller_id);

                ddl_category.DataSource = shop_category.get_shop_category(shop_id);
                ddl_category.DataTextField = "name";
                ddl_category.DataValueField = "id";
                ddl_category.DataBind();
            }
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            try
            {
                //error file upload
                string path = "~/images/product-details/" + FU_product.FileName;
                FU_product.SaveAs(Server.MapPath(path));

                product.add(txt_name.Text, int.Parse(txt_price.Text), txt_desc.Text, path, int.Parse(ddl_category.SelectedValue));

                int shop_id = -1;

                DataTable shop = Seller.get_shop_ID(int.Parse(Session["id"].ToString()));
                if (shop.Rows.Count > 0)
                {
                    // or 
                    shop_id = int.Parse((shop.Rows[0][0]).ToString());
                }

                Stock.add(product.get_last_inserted_id(), shop_id, 1);
                lbl_msg.Text = " product  added ";
                Response.Redirect("~/seller/productList.aspx");

                CleartextBoxes(this);

            }
            catch (Exception ex)
            {
                this.LogError(ex);
            }

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
        private void LogError(Exception ex)
        {
            string msg = string.Format("Time : {0}", DateTime.Now.ToString());
            msg += "\n";
            msg += string.Format(ex.Message);
            msg += "\n";
            msg += string.Format("Source : {0} ", ex.Source);
            msg += "\n";

            string path = Server.MapPath("~/ErrorLog/ErrorLog.txt");
            using (StreamWriter writer = new StreamWriter(path, true))
            {
                writer.WriteLine(msg);
                writer.Close();
            }
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

    }
}

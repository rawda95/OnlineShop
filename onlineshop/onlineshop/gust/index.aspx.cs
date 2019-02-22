﻿using onlineshop.Bl;
using onlineshop.BL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Threading;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineshop.gust
{
    public partial class index : System.Web.UI.Page
    {


        protected override void InitializeCulture()
        {
            if (Session["Lang"] != null)
            {
                Thread.CurrentThread.CurrentCulture = new CultureInfo(Session["Lang"].ToString());
                Thread.CurrentThread.CurrentUICulture = new CultureInfo(Session["Lang"].ToString());
            }
            base.InitializeCulture();
        }

        protected void btn_Sele_With_Us_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/seller/login.aspx");
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/customer/login.aspx");
        }

        protected void lb_signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/customer/signup.aspx");

        }



        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                Bind_Dl_product(product.getAll());


                //int customer = int.Parse(Session["id"].ToString());


                dl_shop_category.DataSource = Category.getAll();
                dl_shop_category.DataBind();


            }
        }




        private void Bind_Dl_product(DataTable data)
        {
            dl_product.DataSource = data;
            ViewState["products"] = data;
            dl_product.DataBind();

            UpdatePanel_product.Update();
        }



        protected void search_TextChanged(object sender, EventArgs e)
        {

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

        [WebMethod]
        public static List<string> GetProductName(string ProductName)
        {
            DataTable dt = product.getNamesByName(ProductName);
            List<string> result = new List<string>();
            foreach (DataRow row in dt.Rows)
            {
                result.Add(row["name"].ToString());
            }
            return result;


        }

        protected void dl_product_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int peoduct_id = int.Parse(dl_product.DataKeys[(int)e.Item.ItemIndex].ToString());
            // Session["cust_id"] = 1;
            int customer_id = int.Parse(Session["id"].ToString());

            //String item = ((Label)e.Item.FindControl("id")).Text;

            //product.remove(int.Parse(item));
            cart.add(customer_id, peoduct_id, 1);

            Bind_Dl_product(product.getAll());
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
                Bind_Dl_product(product.get_By_category_id(category_id));

            }
            else
            {
                //int seller_id = int.Parse(Session["seller_id"].ToString());

                //int shop_id = int.Parse((Seller.get_shop_ID(seller_id).Rows[0][0]).ToString());
                Bind_Dl_product(product.getAll());
            }



        }
        protected void link_Click(object sender, EventArgs e)
        {

        }
    }
}

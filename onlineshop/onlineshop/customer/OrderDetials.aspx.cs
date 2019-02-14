using onlineshop.BL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineshop.Customer
{
    public partial class OrderDetials : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!Page.IsPostBack)
            {
                //  Session["id"] = 1;
                if (Session["id"] != null)
                {
                    int oreder_id = int.Parse(Request.QueryString["id"].ToString());
                    Bind_Dl_product(Bl.Orders.get_order_products(oreder_id));


                    //int customer = int.Parse(Session["id"].ToString());


                }
                else
                {
                    Response.Redirect("~/customer/login.aspx");
                }


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
            // Session["id"] = 1;
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





    }



}

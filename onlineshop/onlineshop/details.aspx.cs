using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using onlineshop.adminSite;
using onlineshop.Bl;
using onlineshop.BL;
using System.IO;


namespace onlineshop
{
    public partial class details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //try to catch id from previoues page and take id 

                //   int idp = int.Parse(Request.QueryString["id"]);

                DataTable dt = product.getbyId(2);
                DataTable pt = Promotions.get_product_promotion(1);
                DataTable qt = Promotions.get_qty_for_product(1002, 2);
                lbl_name.Text = dt.Rows[0]["name"].ToString();
                lbl_price.Text = dt.Rows[0]["price"].ToString();
                lbl_desc.Text = dt.Rows[0]["description"].ToString();
                img_product.ImageUrl = dt.Rows[0]["photo"].ToString();
                lbl_cat.Text = dt.Rows[0]["category_id"].ToString();
                lbl_promtions.Text = pt.Rows[0]["promotion_value"].ToString();
                lbl_qty.Text = qt.Rows[0]["qty"].ToString();

            }

        }

        protected void btn_add_to_cart_Click(object sender, EventArgs e)
        {
            // take id from query string 
            //int.Parse(Request.QueryString["id"])
            //int peoduct_id = int.Parse(dl_product.DataKeys[(int)e.Item.ItemIndex].ToString());
            //Session["cust_id"] = 1;
            //int customer_id = int.Parse(Session["cust_id"].ToString());

            ////String item = ((Label)e.Item.FindControl("id")).Text;

            ////product.remove(int.Parse(item));
            //cart.add(customer_id, peoduct_id, 1);
           

            // if (Session["id"] != null)
            {
                //check for id 
                //int id = int.Parse(Request.QueryString["id"]);

                //// Check for Existence of Product in Cart Table

                //DataTable dtCart = cart.SelectbyProandUser(1, Convert.ToInt32(Session["id"]));


                //if (dtCart.Rows.Count == 0/*[0]["productId"] == null || dtCart.Rows[0]["userId"]==null*/)
                //{

                    //    DataTable dt = product.getAll();
                    //    DataTable qt = Promotions.get_qty_for_product(1002, 2);
                    //    //string name = dt.Rows[0]["name"].ToString();
                    //   // string price = dt.Rows[0]["price"].ToString();
                    //    int product_id = Convert.ToInt32(dt.Rows[0]["id"]);
                    //   // int quantity = Convert.ToInt32(dt.Rows[0]["qty"]);
                    //    //string CatNam = dt.Rows[0]["catName"].ToString();
                    //    //string Description = dt.Rows[0]["description"].ToString();
                    //    int userID = 1;//int.Parse(Session["id"].ToString());

                    //    int EfeectedRows = cart.add(userID,product_id,10);
                    //    if (EfeectedRows > 0)
                    //    {
                    //        lbl_msg.Text = "Added to cart";
                    //    }
                    //    else
                    //    {
                    //        lbl_msg.Text = "Error";
                    //    }
                    //}
                    ////Updating Quantity
                    //else
                    //{
                    //    //update cart
                    //}
                }
            }
        }
    }

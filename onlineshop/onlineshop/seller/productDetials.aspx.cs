using onlineshop.BL;
using System;
using System.Data;
using System.Web.UI;

namespace onlineshop.seller
{
    public partial class productDetials : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int product_id = int.Parse(Request.QueryString["id"].ToString());
                DataTable dt = product.getbyId(product_id);
                lbl_ProductShowName.Text = dt.Rows[0][1].ToString();
                lbl_desc.Text = dt.Rows[0][3].ToString();
                lbl_priceshow.Text = dt.Rows[0][2].ToString();
                lbl_categoryShow.Text = dt.Rows[0][5].ToString();
                IMG_Product.ImageUrl = dt.Rows[0][4].ToString();


            }
        }
    }
}

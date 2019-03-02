using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using onlineshop.BL;
using onlineshop.Bl;

namespace onlineshop.adminSite
{
    public partial class AdminSearchProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox2.Text = "";

            TextBox3.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string productName = TextBox1.Text;
            GridView1.DataSource = product.getNamesByName(productName);
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text!=null && TextBox3.Text!=null)
            {
                int startprice = int.Parse(TextBox2.Text);
                int endprice = int.Parse(TextBox3.Text);
                GridView1.DataSource = product.ge_by_price(startprice, endprice);
                GridView1.DataBind();
            }

        }
    }
}
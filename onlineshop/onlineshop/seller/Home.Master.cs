﻿using System;

namespace AspProject
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lb_home_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/products.aspx");
        }

        protected void contact_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ContactPage.aspx");

        }

        protected void lb_about_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AboutUs.aspx");
        }


        protected void lb_addCategory_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/seller/addcategory.aspx");

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {

        }

        protected void lb_addProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/seller/addproduct.aspx");

        }

        protected void lb_promotion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/seller/promotionlist.aspx");

        }
    }

}

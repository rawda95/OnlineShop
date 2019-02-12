using onlineshop.BL;
using System;
using System.Data;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineshop.seller
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {

                if (Request.Cookies["mycookie"] != null)
                {

                    Session["id"] = Request.Cookies["mycookie"].Values["cookieId"].ToString();

                    // redircet main

                    //  Response.Redirect("~/seller/productList.aspx");
                    has_shop_redirecte();
                }
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
        protected void btn_LogInSeller_Click(object sender, EventArgs e)
        {
            //checking user name& password 
            if (IsValid)
            {
                try
                {
                    DataTable dt = Users.check(txt_NameLoginSeller.Text, txt_LoginPassSeller.Text, 1);

                    if (dt.Rows.Count > 0)
                    {

                        //keeping user signedin
                        DataTable did = Seller.get_id(int.Parse(dt.Rows[0][0].ToString()));
                        Session["id"] = did.Rows[0][0];

                        //rememberuser
                        if (CB_rememberMeSeller.Checked)
                        {

                            HttpCookie co = new HttpCookie("mycookie");
                            co.Values.Add("cookieId", did.Rows[0][0].ToString());
                            co.Expires = DateTime.Now.AddDays(15);
                            Response.Cookies.Add(co);
                        }


                        //Response.Redirect("~/seller/productList.aspx");
                        has_shop_redirecte();

                    }
                    else
                    {
                        lbl_checkSeller.Text = "invalid username or password";
                    }
                }
                catch (Exception ex)
                {
                    this.LogError(ex);
                }

                CleartextBoxes(this);
            }
        }

        protected void btn_signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/seller/signup.aspx");
        }

        private void has_shop_redirecte()
        {
            int seller_id = int.Parse(Session["id"].ToString());
            DataTable temp = Shop.get_Shop_by_owner(seller_id);
            if (temp.Rows.Count > 0)
            {
                Response.Redirect("~/seller/productList.aspx");

            }
            else
            {
                Response.Redirect("~/seller/addshop.aspx");
            }

        }

        protected void logout_Click(object sender, EventArgs e)
        {

        }
    }

}

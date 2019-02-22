using onlineshop.BL;
using System;
using System.Data;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineshop.Customer
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
                    Response.Redirect("~/customer/products.aspx");

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
                        DataTable did = BL.customer.get_id(int.Parse(dt.Rows[0][0].ToString()));
                        Session["id"] = did.Rows[0][0];

                        //rememberuser
                        if (CB_rememberMeSeller.Checked)
                        {

                            HttpCookie co = new HttpCookie("mycookie");
                            co.Values.Add("cookieId", did.Rows[0][0].ToString());
                            co.Expires = DateTime.Now.AddDays(15);
                            Response.Cookies.Add(co);
                        }

                        Response.Redirect("~/customer/products.aspx");

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


        protected void lb_forget_pass_Click(object sender, EventArgs e)
        {
            Response.Redirect("reoveryPassword.aspx");
        }


        protected void btn_Sele_With_Us_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/seller/signup.aspx");

        }

        protected void lb_signup_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/customer/signup.aspx");

        }
    }
}

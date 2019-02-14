using onlineshop.BL;
using System;
using System.Data;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace onlineshop.Customer
{
    public partial class signup : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["id"] != null)
            {
                Session.Clear();

            }
            if (Request.Cookies["mycookie"] != null)
            {
                Response.Cookies["mycookie"].Expires = DateTime.Now.AddDays(-1);
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
        protected void btn_signup_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                try
                {
                    string path = "~/Photos/" + FU_CustomerImage.FileName;
                    FU_CustomerImage.SaveAs(Server.MapPath(path));
                    //checking extension
                    //saving file

                    //FU_CustomerImage.SaveAs(Server.MapPath("~/Photos/" + FU_CustomerImage.FileName));
                    // lbl_CustSinCheck.Text = "Signed in successfully";
                    //check if user exists
                    bool user = Users.UserNameExsit(txt_CustUserName.Text);
                    DataTable dt = BL.customer.getByEmail(txt_CustemailSignup.Text);
                    int emailCount = dt.Rows.Count;

                    if (user == false)
                    {

                        if (emailCount <= 0)
                        {
                            //adding customer data to database

                            BL.customer.add(txt_CustUserName.Text, txt_CustFName.Text, txt_CustLName.Text, txt_CustemailSignup.Text, path, Txt_CustAddress.Text, Txt_CustAddress.Text, txt_CustpassSignup.Text);
                            Session["id"] = BL.customer.getByEmail(txt_CustemailSignup.Text);
                            Response.Redirect("~/customer/products.aspx");
                        }
                        else
                        {
                            lbl_CustSinCheck.Text = "this email is already exists";
                        }
                    }
                    else
                    {
                        lbl_CustSinCheck.Text = "this user already exists";
                    }

                }
                catch (Exception ex)
                {
                    this.LogError(ex);
                }

                CleartextBoxes(this);

            }
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

    }
}

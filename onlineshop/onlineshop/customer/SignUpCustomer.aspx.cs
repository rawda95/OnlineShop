using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using onlineshop.BL;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace SignUpPage
{
    public partial class SignUpCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
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
                    lbl_CustSinCheck.Text = "Signed in successfully";
                    //check if user exists
                    bool user = Users.UserNameExsit(txt_CustFName.Text);
                    if (user == false)
                    {

                        //adding customer data to database
                        customer.add(txt_CustUserName.Text, txt_CustFName.Text, txt_CustLName.Text, txt_CustemailSignup.Text, path, Txt_CustAddress.Text, Txt_CustAddress.Text, txt_CustpassSignup.Text);
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
            
            

        

    }
}
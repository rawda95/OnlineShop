using onlineshop.BL;
using System;
using System.Data;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineshop.seller
{
    public partial class signup : System.Web.UI.Page
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
                    string path = "~/Photos/" + FU_SellerImg.FileName;
                    FU_SellerImg.SaveAs(Server.MapPath(path));
                    lbl_SinCheckSeller.Text = "Signed in successfully ";

                    bool user = Users.UserNameExsit(txt_FirstName.Text);
                    if (user == false)
                    {
                        //adding Seller data to database
                        Seller.add(txt_UserSellerName.Text, txt_FirstName.Text, txt_LastName.Text, txt_emailSignupSeller.Text, path, txt_passSellerSignup.Text);
                        DataTable seller = Seller.getByEmail(txt_emailSignupSeller.Text);
                        Session["seller_id"] = seller.Rows[0][0].ToString();
                        Response.Redirect("~/seller/productList.aspx");
                    }

                    else
                    {
                        lbl_SinCheckSeller.Text = "this user already exists";
                    }
                }
                catch (Exception ex)
                {
                    this.LogError(ex);
                }

                CleartextBoxes(this);
                ////checking extension
                ////saving file
                //// string uploadFolder = Request.PhysicalApplicationPath + "~/Photos";
                //string uploadFolder = "~/Photos/"+FU_SellerImg.FileName;
                //if (FU_SellerImg.HasFile)
                //{
                //    string extension =Path.GetExtension(FU_SellerImg.PostedFile.FileName);
                //    if (extension.ToLower() == ".jpg"||extension.ToLower()== ".png")
                //    {
                //        // FU_SellImg.SaveAs(uploadFolder + FU_SellImg.FileName);
                //        FU_SellerImg.SaveAs(Server.MapPath(uploadFolder));
                //        lbl_SinCheckSeller.Text = "File uploaded successfully: " + FU_SellerImg.PostedFile.FileName;




                //    }

            }



            //check if user exists
            //bool user = Users.UserNameExsit(txt_FirstName.Text);
            //if (user == false)
            //{
            //    //adding customer data to database
            //    Seller.add(txt_UserSellerName.Text, txt_FirstName.Text, txt_LastName.Text, txt_emailSignupSeller.Text, Server.MapPath("~/Photos/" + FU_SellerImg.FileName), txt_passSellerSignup.Text);
            //}

            //else
            //{
            //    lbl_SinCheckSeller.Text = "this user already exists";
            //}

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/seller/login.aspx");
        }
    }

}

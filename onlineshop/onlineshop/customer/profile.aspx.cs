using System;
using System.Data;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineshop.Customer
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                Session["id"] = 1;

                if (Session["id"] != null)
                {
                    int id = int.Parse(Session["id"].ToString());
                    DataTable dt = BL.customer.getById(id);
                    lbl_NameShow.Text = dt.Rows[0][2].ToString() + " " + dt.Rows[0][3].ToString();
                    lbl_emailShow.Text = dt.Rows[0][4].ToString();
                    IMG_user.ImageUrl = dt.Rows[0][5].ToString();
                    lbl_locationShow.Text = dt.Rows[0][6].ToString();
                    lbl_delivery_show.Text = dt.Rows[0][7].ToString();
                }
                else
                {
                    Response.Redirect("~/customer/login.aspx");
                }
            }
        }




        protected void btn_edit_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Session["id"].ToString());
            DataTable dt = BL.customer.getById(id);
            txt_FNameEdit.Text = dt.Rows[0][2].ToString();
            txt_LNameEdit.Text = dt.Rows[0][3].ToString();
            txt_emailEdit.Text = dt.Rows[0][4].ToString();
            // FU_ImgProfile.ur = dt.Rows[0][5].ToString();
            Img_edit.ImageUrl = dt.Rows[0][5].ToString();
            txt_locationEdit.Text = dt.Rows[0][6].ToString();
            txt_deliveryEdit.Text = dt.Rows[0][7].ToString();

            MV_profileFinal.ActiveViewIndex = 1;

        }

        //clearing textboxes
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
        //checking error & saving them in a separeted file
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
        protected void btn_save_Click(object sender, EventArgs e)
        {

            if (IsValid)
            {
                try
                {
                    //saving file
                    string path = "~/Photos/" + FU_ImgProfile.FileName;
                    FU_ImgProfile.SaveAs(Server.MapPath(path));

                    //updating customer data to database

                    int id = int.Parse(Session["id"].ToString());
                    BL.customer.update(id, txt_FNameEdit.Text, txt_LNameEdit.Text, txt_emailEdit.Text, path, txt_locationEdit.Text, txt_deliveryEdit.Text);

                    lbl_saveCheck.Text = "your profile updated successfuly";
                    MV_profileFinal.ActiveViewIndex = 0;


                }
                catch (Exception ex)
                {
                    this.LogError(ex);
                }

                CleartextBoxes(this);

            }
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            lbl_Cancel_Check.Text = "yor upadates are canceled";

            MV_profileFinal.ActiveViewIndex = 0;
        }

        protected void btn_ChangePass_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/customer/ChangePassword.aspx");
        }
    }
}

using onlineshop.BL;
using System;
using System.Data;
using System.Web.UI;

namespace onlineshop.seller
{
    public partial class Profile : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                if (Session["id"] != null)
                {
                    int id = int.Parse(Session["id"].ToString());
                    DataTable dt = Seller.getById(id);
                    lbl_nameSeller.Text = dt.Rows[0][2].ToString() + " " + dt.Rows[0][3].ToString();
                    lbl_emailSeller.Text = dt.Rows[0][4].ToString();
                    IMG_userSeller.ImageUrl = dt.Rows[0][5].ToString();
                    //lbl_addressShow.Text = dt.Rows[0][6].ToString();
                }


            }
        }
    }
}

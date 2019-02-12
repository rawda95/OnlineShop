using onlineshop.BL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineshop
{
    public partial class products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                BindDataList(product.getAll());

            }
        }


        private void BindDataList(DataTable data)
        {
            DataList1.DataSource = data;
            DataList1.DataBind();
            UpdatePanel2.Update();
        }

        protected void search_TextChanged(object sender, EventArgs e)
        {
            if (search.Text != string.Empty)
            {
                BindDataList(product.searchByname(search.Text));
            }
        }

        [WebMethod]
        public static List<string> GetProductName(string ProductName)
        {
            DataTable dt = product.getNamesByName(ProductName);
            List<string> result = new List<string>();
            foreach (DataRow row in dt.Rows)
            {
                result.Add(row["name"].ToString());
            }
            return result;


        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int peoduct_id = int.Parse(DataList1.DataKeys[(int)e.Item.ItemIndex].ToString());
            Session["cust_id"] = 1;
            int customer_id = int.Parse(Session["cust_id"].ToString());

            //String item = ((Label)e.Item.FindControl("id")).Text;

            //product.remove(int.Parse(item));
            cart.add(customer_id, peoduct_id, 1);

            BindDataList(product.getAll());
        }


    }
}

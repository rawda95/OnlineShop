using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; 
using onlineshop.BL;
using System.Web.Services;
using System.Net.Mail;

namespace onlineshop
{
    public partial class divtry : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            BindDataList(product.searchByname(search.Text));

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

        public void dlBooks_ItemDataBound()
        {

        }


        protected void onDeleteProduct(object sender, EventArgs e)
        {

            // object item = (sender as Button).NamingContainer ;
            //string bookName = (item.FindControl("lblbookName") as Label).Text;
            // int id = Convert.ToInt32((item.FindControl("id") as Label).Text);
            // error.Text = (item.Controls[1] as Label).Text;
            //  product.remove(id); ;
            // this.DataBind();

        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            String item = DataList1.DataKeys[(int)e.Item.ItemIndex].ToString();

            //String item = ((Label)e.Item.FindControl("id")).Text;

            product.remove(int.Parse(item));
            BindDataList(product.getAll());

        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add("rawda95.r@gmail.com");
            mail.From = new MailAddress("rawda95.r@gmail.com", "Email head", System.Text.Encoding.UTF8);
            mail.Subject = "This mail is send from asp.net application";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = "This is Email Body Text";
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            SmtpClient client = new SmtpClient();
            client.Credentials = new System.Net.NetworkCredential("rawda95.r@gmail.com", "gooroozyahoo1212");
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            try
            {
                client.Send(mail);
                Button2.Text = "sent";
               // Page.RegisterStartupScript("UserMsg", "<script>alert('Successfully Send...');if(alert){ window.location='SendMail.aspx';}</script>");
            }
            catch (Exception ex)
            {
                Exception ex2 = ex;
                string errorMessage = string.Empty;
                while (ex2 != null)
                {
                    errorMessage += ex2.ToString();
                    ex2 = ex2.InnerException;

                    Button2.Text = "not sent";
                }
               // Page.RegisterStartupScript("UserMsg", "<script>alert('Sending Failed...');if(alert){ window.location='SendMail.aspx';}</script>");
            }
        }
    }
   
            
    

}



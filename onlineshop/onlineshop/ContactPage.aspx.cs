using System;
using System.Net.Mail;
using System.Web.UI;

namespace perfume
{
    public partial class ContactPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)//for validation
                {
                    //send mail to adminstrator
                    MailMessage mailMessage = new MailMessage();
                    mailMessage.From = new MailAddress("");
                    mailMessage.To.Add("");
                    mailMessage.Subject = txt_sub.Text;
                    mailMessage.Body = "<b>Sender Name : </b>" + txt_name.Text + "<br/>" +
                      "<b>Sender Email : </b>" + txt_mail.Text;
                    mailMessage.IsBodyHtml = true;
                    SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                    smtpClient.EnableSsl = true;
                    smtpClient.Credentials = new System.Net.NetworkCredential("", "");
                    smtpClient.Send(mailMessage);
                    lbl_finish.ForeColor = System.Drawing.Color.Blue;
                    lbl_finish.Text = "Thank you for contacting us";
                    txt_name.Enabled = false;
                    txt_mail.Enabled = false;
                    txt_sub.Enabled = false;
                    btn_submit.Enabled = false;
                }
            }
            catch (Exception ex)
            {
                lbl_finish.ForeColor = System.Drawing.Color.Blue;
                lbl_finish.ForeColor = System.Drawing.Color.Red;
                lbl_finish.Text = "There is unknown problem. please try later ";
            }
        }

        protected void btn_submit_Click1(object sender, EventArgs e)
        {


        }

    }
}

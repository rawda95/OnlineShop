﻿using System;
using System.Data;
using System.Net.Mail;
using System.Web.Security;

namespace onlineshop.seller
{
    public partial class reoveryPassword : System.Web.UI.Page
    {


        protected void lb_seller_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/seller/login.aspx");

        }

        protected void signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/customer/signup.aspx");

        }




        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_reset_Click(object sender, EventArgs e)
        {

            if (IsValid)
            {
                string email = txt_email.Text;
                DataTable cust = BL.customer.getByEmail(email);
                if (cust.Rows.Count > 0)
                {
                    // put in sp  //future work
                    int id = int.Parse(cust.Rows[0]["id"].ToString());
                    string newPassword = Membership.GeneratePassword(6, 3);
                    BL.customer.ChangePassword(id, newPassword, "");


                    //sent mail 

                    MailMessage mail = new System.Net.Mail.MailMessage();
                    mail.To.Add("rawda95.r@gmail.com");
                    mail.From = new MailAddress("rawda95.r@gmail.com", "password recovery", System.Text.Encoding.UTF8);
                    mail.Subject = "online shop acount password recovery";
                    mail.SubjectEncoding = System.Text.Encoding.UTF8;
                    mail.Body = "your new passowrd is : " + newPassword;
                    mail.BodyEncoding = System.Text.Encoding.UTF8;

                    mail.Priority = MailPriority.High;
                    SmtpClient client = new SmtpClient();
                    client.Credentials = new System.Net.NetworkCredential("rawda95.r@gmail.com", "password");
                    client.Port = 587;
                    client.Host = "smtp.gmail.com";
                    client.EnableSsl = true;
                    try
                    {
                        client.Send(mail);
                        lbl_error.Text = "sent";

                        //Response.Redirect("~/login.aspx");
                    }
                    catch (Exception ex)
                    {
                        lbl_error.Text = ex.Message;
                        // Page.RegisterStartupScript("UserMsg", "<script>alert('Sending Failed...');if(alert){ window.location='SendMail.aspx';}</script>");
                    }
                }
                else
                {
                    lbl_error.Text = "cant find that email !! ";
                }



            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using ShoppingSite.UILayer;


namespace ShoppingSite
{
    public partial class ForgetPass1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            
        }

      
        //Sending Email
        public static bool SendMail(string Subject, string msg, string to)
        {
            MailMessage MMSG = new MailMessage("itishopping86@gmail.com", to, Subject, msg);

            //SMTP : Simple Message Transfer Protocol
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.UseDefaultCredentials = false;

            NetworkCredential cre = new NetworkCredential("itishopping86@gmail.com", "123456ahmed");
            client.Credentials = cre;
            client.EnableSsl = true;

            try
            {
                client.Send(MMSG);
                return true;
            }
            catch
            {
                
                return false;
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

        protected void btn_email_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                try
                {

                    int ReturnValue = UserLayer.PassRecov(txt_mail.Text);
                    if (ReturnValue == 0 || ReturnValue < 0)
                    {
                        lbl_msg.Text = "Enter correct Email";
                        txt_mail.Text = "";
                    }
                    else
                    {
                        SendMail("Password Recovery", "Hi Sir \n Hope this mail finds you well, \n If you Requested Forgetting password \n your new Password : 123456 if you don't please ignore this E-mail. \n Best Regards \n ITI Shopping Admin site ", txt_mail.Text);
                        lbl_msg.Text = "your Password Changed , Check your Mail";
                        txt_mail.Text = "";
                    }
                }
                catch (Exception ex)
                {
                    this.LogError(ex);
                    
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UILayer/LoginPage.aspx");
        }
    }
}
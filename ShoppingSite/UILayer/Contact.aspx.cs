using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingSite.BusinessLayers;
using System.IO;

namespace ShoppingSite.UILayer
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (Session["id"] == null)
            {
                Response.Redirect("~/UILayer/LoginPage.aspx");
            }
            if (!IsPostBack)
            {
                txt_msg.Attributes.Add("placeholder", "Enter your Message ...........");
            }
        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                int id = Convert.ToInt32(Session["id"]);
                string msg = txt_msg.Text;

                if (Session["id"] == null)
                {
                    lbl_msg.Text = "Plaese Login with your Account";
                }
                else
                {
                    try
                    {

                        int EffectedRows = ContactUsLayer.Insert(id, msg);
                        if (EffectedRows > 0)
                        {
                            lbl_msg.Text = "Thank you , your message sent";
                            txt_msg.Text = "";
                        }
                        else
                        {
                            lbl_msg.Text = "Check your message please";
                        }
                    }
                    catch (Exception ex)
                    {
                        this.LogError(ex);
                    }
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
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using ShoppingSite.UILayer;

namespace ShoppingSite.UILayer
{
    public partial class Registeration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["id"] != null)
            {
                Response.Redirect("~/UILayer/Home.aspx");
            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UILayer/LoginPage.aspx");
        }

        protected void btn_reg_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                try
                {
                    DataTable dt = UserLayer.CheckEmail(txt_mail.Text);
                    if (dt.Rows.Count != 0)
                    {
                        lbl_msg.Text = "you are registerd before by this email";
                    }
                    else
                    {
                        string path = "~/Pic/" + fu_image.FileName;
                        fu_image.SaveAs(Server.MapPath(path));


                        UserLayer.Insert(txt_fname.Text, txt_lname.Text, txt_mail.Text, txt_userName.Text, path, txt_city.Text, txt_pass.Text, txt_phone.Text);
                        Response.Redirect("~/UILayer/LoginPage.aspx");
                    }
                }
                catch (Exception ex)
                {
                    //lbl_msg.Text = "Error 404";
                    this.LogError(ex);
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
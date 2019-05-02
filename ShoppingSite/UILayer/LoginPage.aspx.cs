using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingSite.UILayer;

namespace ShoppingSite
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["id"] != null)
            {
                Response.Redirect("~/UILayer/UserProfile.aspx");
            }
           
        }

        protected void lbtn_forgetpass_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UILayer/ForgetPass.aspx");
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {

            if (IsValid)
            {

                try
                {
                    DataTable dt = UserLayer.Check(txt_name.Text, txt_pass.Text);

                    if (dt.Rows.Count != 0)
                    {
                        Session.Add("name", dt.Rows[0]["userName"].ToString());
                        Session.Add("id", dt.Rows[0]["id"].ToString());
                        Session.Add("isAdmin", dt.Rows[0]["isAdmin"].ToString());
                        Session.Add("status", dt.Rows[0]["status"].ToString());

                        // if you checked on remember me
                        if (ch_rememberme.Checked == true)
                        {
                            HttpCookie co = new HttpCookie("local");
                            co.Values.Add("name", dt.Rows[0]["userName"].ToString());
                            co.Values.Add("id", dt.Rows[0]["id"].ToString());
                            co.Values.Add("isAdmin", dt.Rows[0]["isAdmin"].ToString());
                            co.Expires = DateTime.Now.AddDays(10);
                            Response.Cookies.Add(co);
                        }

                        if (bool.Parse(dt.Rows[0]["isAdmin"].ToString()) == true)
                        {
                            Response.Redirect("~/UILayer/AdminPanel.aspx");
                        }
                        else
                        {
                            Response.Redirect("~/UILayer/UserProfile.aspx");
                        }
                    }
                    else
                    {
                        lbl_msg.Text = " Wrong Username or Password";
                        txt_pass.Text = txt_name.Text = "";
                    }
            }
                catch (Exception ex)
            {

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

        protected void btn_register_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UILayer/Registeration.aspx");
        }

        
    }
}
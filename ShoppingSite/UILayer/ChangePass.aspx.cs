using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingSite.UILayer;
using System.IO;

namespace ShoppingSite.UILayer
{
    public partial class ChangePass : System.Web.UI.Page
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

                if (Session["id"] == null)
                {
                    Response.Redirect("~/UILayer/LoginPage.aspx");

                }
               
            }
           
        }

        protected void btn_pass_Click(object sender, EventArgs e)
        {

            //int id= int.Parse(txt_new1.Text);
            //int password= int.Parse(Session["id"].ToString());
            // lbl_change.Text = UserLayer.change_passward(id, password).ToString() + "change sucsessfully";
            if (IsValid)
            {
                try
                {
                    int EffectedRows = UserLayer.ChangePass(int.Parse(Session["id"].ToString()), txt_new1.Text, txt_old.Text);
                    if (EffectedRows > 0)
                    {
                        lbl_change.Text = "Password Updated";
                    }
                    else
                    {
                        lbl_change.Text = "Wrong Password";
                    }
                }
                catch (Exception ex)
                {
                    lbl_change.Text = "Wrong Password";
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
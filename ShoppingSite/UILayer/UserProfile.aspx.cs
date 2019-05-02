using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using ShoppingSite.UILayer;
using System.IO;

namespace ShoppingSite.UILayer
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btn_admin.Visible = false;
            if(Convert.ToBoolean( Session["isAdmin"]) == true)
            {
                btn_admin.Visible = true;
            }
           
            try
            {
                if (Session["id"] == null)
                {
                    Response.Redirect("~/UILayer/LoginPage.aspx");
                }
                
                else
                {

                    int id = int.Parse((Session["id"].ToString()));
                    DataTable dt = UserLayer.User_selById(id);
                    lbl_fname.Text = dt.Rows[0]["fName"].ToString();
                    lbl_lname.Text = dt.Rows[0]["lName"].ToString();
                    lbl_username.Text = dt.Rows[0]["userName"].ToString();
                    lbl_mail.Text = dt.Rows[0]["email"].ToString();
                    lbl_phone.Text = dt.Rows[0]["phone"].ToString();
                    lbl_add.Text = dt.Rows[0]["address"].ToString();
                    img_profile.ImageUrl = dt.Rows[0]["image"].ToString();
                    lbl_state.Text = dt.Rows[0]["status"].ToString();
                    /*if (int.Parse(dt.Rows[0]["status"].ToString()) == 0)
                    {
                        lbl_state.Text = "pendding";
                    }
                    else
                    {
                        lbl_state.Text = "accepted";
                    }*/

                }

            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }

        }

        protected void btn_edit_profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UILayer/EditProfile.aspx");
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            try
            {
                HttpCookie c = new HttpCookie("local");
                c.Expires = DateTime.Now.AddDays(-20);
                Response.Cookies.Add(c);

                Session["name"] = null;
                Session["password"] = null;
                Session["id"] = null;
                Response.Redirect("~/UILayer/LoginPage.aspx");
            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }
        }

        protected void btn_edit_pass_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UILayer/ChangePass.aspx");
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

        protected void btn_admin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UILayer/AdminPanel.aspx");
        }
    }
}
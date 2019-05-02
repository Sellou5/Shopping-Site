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
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["isAdmin"]) == false || Session["id"] == null)
            {
                Response.Redirect("~/UILayer/Home.aspx");
            }
        }

        protected void btn_user_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UILayer/ManageUser.aspx");
        }

        protected void btn_Orders_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UILayer/ManageOrder.aspx");
        }

        protected void btn_msg_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UILayer/AdminMsg.aspx");
        }

        protected void btn_user0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UILayer/ManageProducts.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
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
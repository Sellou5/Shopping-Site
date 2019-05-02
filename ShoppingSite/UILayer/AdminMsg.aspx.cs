using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ShoppingSite.BusinessLayers;
using System.IO;

namespace ShoppingSite.UILayer
{
    public partial class AdminMsg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["isAdmin"]) == false || Session["id"] == null)
            {
                Response.Redirect("~/UILayer/Home.aspx");
            }
            if (!IsPostBack)
            {
                try
                {


                    DataTable dt = ContactUsLayer.SelectMsgs();
                    gv_msg.DataSource = dt;
                    gv_msg.DataBind();
                }
                catch(Exception ex)
                {
                    this.LogError(ex);
                }
            }
        }

        protected void gv_msg_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int id = (int)gv_msg.DataKeys[e.RowIndex].Value;
                ContactUsLayer.DeletebyID(id);
                DataTable dt = ContactUsLayer.SelectMsgs();
                gv_msg.DataSource = dt;
                gv_msg.DataBind();
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
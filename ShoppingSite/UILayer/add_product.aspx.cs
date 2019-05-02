using ShoppingSite.BusinessLayers;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingSite.UILayer
{
    public partial class showProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["isAdmin"]) == false || Session["id"] == null)
            {
                Response.Redirect("~/UILayer/Home.aspx");
            }
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            try
            {
                ddl_cat.DataSource = CategoryLayer.selectAll();
                ddl_cat.DataTextField = "name";
                ddl_cat.DataValueField = "id";
                ddl_cat.DataBind();
            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }
        }
        protected void btn_upload_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                try
                {
                    string path = "~/Pic/" + fu_admin.FileName;
                    fu_admin.SaveAs(Server.MapPath(path));

                    ProductLayer.insert(txt_name.Text, path, int.Parse(txt_price.Text), int.Parse(txt_offer.Text), int.Parse(ddl_cat.SelectedValue), txt_desc.Text, int.Parse(txt_quantity.Text));
                    txt_name.Text = txt_desc.Text = txt_offer.Text = txt_price.Text = txt_quantity.Text = "";
                    lbl_msg.Text = "Product Uploaded";
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
    }
}
using ShoppingSite.BusinessLayers;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingSite.UILayer
{
    public partial class edit_category1 : System.Web.UI.Page
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
                    DataTable dt = CategoryLayer.selectAll();
                    Session.Add("addcategory", dt);
                    gv_category.DataSource = dt;
                    gv_category.DataBind();
                }
                catch(Exception ex)
                {
                    this.LogError(ex);
                }
            }
        }
        protected void gv_category_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            try
            {
                gv_category.EditIndex = e.NewEditIndex;
                DataTable dt = CategoryLayer.selectAll();
                gv_category.DataSource = dt;
                gv_category.DataBind();
            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }
        }

        protected void gv_category_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                string name = ((TextBox)gv_category.Rows[e.RowIndex].FindControl("txt_cat")).Text;

                int id = (int)gv_category.DataKeys[e.RowIndex].Value;
                CategoryLayer.update(id, name);
                gv_category.EditIndex = -1;
                gv_category.DataSource = CategoryLayer.selectAll();
                gv_category.DataBind();
            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }
        }

        protected void gv_category_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int id = (int)gv_category.DataKeys[e.RowIndex].Value;
                //CategoryLayer.DeleteById(id);
                ProductLayer.deleteBycategory(id);
                CategoryLayer.DeleteById(id);
                gv_category.DataSource = CategoryLayer.selectAll();
                gv_category.DataBind();
            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }
        }

        protected void gv_category_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            try
            {
                gv_category.EditIndex = -1;
                gv_category.DataSource = CategoryLayer.selectAll();
                gv_category.DataBind();
            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            try
            {
                CategoryLayer.Insert(txt_add_cat.Text);
                gv_category.DataSource = CategoryLayer.selectAll();
                gv_category.DataBind();
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
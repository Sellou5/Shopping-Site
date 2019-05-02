using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace ShoppingSite.UILayer
{
    public partial class ManageUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Convert.ToBoolean(Session["isAdmin"]) == false || Session["id"] == null)
            {
                Response.Redirect("~/UILayer/Home.aspx");
            }
            if (!IsPostBack)
            {
                try
                {


                    DataTable dt = UserLayer.SelectAll();
                    gv_user.DataSource = dt;
                    gv_user.DataBind();
                }
                catch(Exception ex)
                {
                    this.LogError(ex);
                }
            }
        }

        protected void gv_user_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                gv_user.EditIndex = e.NewEditIndex;
                DataTable dt = UserLayer.SelectAll();
                gv_user.DataSource = dt;
                gv_user.DataBind();

                DropDownList ddl = (DropDownList)gv_user.Rows[e.NewEditIndex].FindControl("ddl_isadmin");
                ddl.SelectedValue = dt.Rows[e.NewEditIndex]["isAdmin"].ToString();

                DropDownList ddl2 = (DropDownList)gv_user.Rows[e.NewEditIndex].FindControl("ddl_status");
                ddl2.SelectedValue = dt.Rows[e.NewEditIndex]["status"].ToString();
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

        protected void gv_user_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            try
            {
                gv_user.EditIndex = -1;
                DataTable dt = UserLayer.SelectAll();
                gv_user.DataSource = dt;
                gv_user.DataBind();
            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }
        }

        protected void gv_user_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                DropDownList ddl = (DropDownList)gv_user.Rows[e.RowIndex].FindControl("ddl_isadmin");
                string isadmin = ddl.SelectedValue;

                DropDownList ddl2 = (DropDownList)gv_user.Rows[e.RowIndex].FindControl("ddl_status");
                string status = ddl2.SelectedValue;

                int id = (int)gv_user.DataKeys[e.RowIndex].Value;

                UserLayer.UpdateUser(id, isadmin, status);
                gv_user.EditIndex = -1;

                DataTable dt = UserLayer.SelectAll();
                gv_user.DataSource = dt;
                gv_user.DataBind();
            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }
        }

        protected void gv_user_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int id = (int)gv_user.DataKeys[e.RowIndex].Value;
                UserLayer.DeletebyID(id);
                DataTable dt = UserLayer.SelectAll();
                gv_user.DataSource = dt;
                gv_user.DataBind();
            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }
        }
    }
}
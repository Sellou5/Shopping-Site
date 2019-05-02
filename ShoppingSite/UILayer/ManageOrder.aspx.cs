using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingSite.BusinessLayers;
using ShoppingSite.UILayer;
using System.IO;

namespace ShoppingSite.UILayer
{
    public partial class ManageOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["isAdmin"]) == false || Session["id"] == null)
            {
                Response.Redirect("~/UILayer/Home.aspx");
            }
            if (OrederLayer.SelectAll().Rows.Count == 0)
            {
                lbl_masg_empty.Text = "there is no any order";

            }
            else
            {
                if (!IsPostBack)
                {
                    try
                    {
                        gv_vieworder.DataSource = OrederLayer.SelectAll();
                        gv_vieworder.DataBind();
                    }
                    catch(Exception ex)
                    {
                        this.LogError(ex);
                    }
                }
            }
        }
        protected void gv_vieworder_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            try
            {
                lbl_msg.Text = " ";
                gv_vieworder.EditIndex = -1;

                DataTable dt = OrederLayer.SelectAll();
                gv_vieworder.DataSource = dt;
                gv_vieworder.DataBind();
            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }
        }

        protected void gv_vieworder_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int id = (int)gv_vieworder.DataKeys[e.RowIndex].Value;
                if (OrederLayer.Select_for_status(id).Rows.Count > 0)
                {
                    lbl_msg.Text = " ";


                   // OrederLayer.Delete_or(id);
                    OrederLayer.Delete(id);
                    DataTable dt = OrederLayer.SelectAll();
                    gv_vieworder.DataSource = dt;
                    gv_vieworder.DataBind();

                    //OrederLayer.Delete(id);s
                    //DataTable dt = OrederLayer.SelectAll();
                    //gv_vieworder.DataSource = dt;
                    //gv_vieworder.DataBind();



                    if (dt.Rows.Count == 0)
                    {

                        lbl_masg_empty.Text = "there is no any order";
                    }
                }
                else
                {
                    lbl_msg.Text = "Attention!!the status is not approved";
                }

            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }


        }

        protected void gv_vieworder_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                lbl_msg.Text = " ";
                lbl_msg.Text = " ";
                gv_vieworder.EditIndex = e.NewEditIndex;
                DataTable dt = OrederLayer.SelectAll();
                gv_vieworder.DataSource = dt;
                gv_vieworder.DataBind();

                DropDownList ddl1 = (DropDownList)gv_vieworder.Rows[e.NewEditIndex].FindControl("ddl_status");
                ddl1.SelectedValue = dt.Rows[e.NewEditIndex]["status"].ToString();
            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }
        }

        protected void gv_vieworder_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {


                int id = (int)gv_vieworder.DataKeys[e.RowIndex].Value;
                DropDownList ddl1 = (DropDownList)gv_vieworder.Rows[e.RowIndex].FindControl("ddl_status");
                string status = ddl1.SelectedValue;
                OrederLayer.Update_status(id, status);
                gv_vieworder.EditIndex = -1;
                DataTable dt = OrederLayer.SelectAll();
                gv_vieworder.DataSource = dt;
                gv_vieworder.DataBind();

            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }
        }

        protected void gv_vieworder_SelectedIndexChanged(object sender, EventArgs e)
        {

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
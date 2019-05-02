using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ShoppingSite.UILayer
{
    public partial class History : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("~/UILayer/LoginPage.aspx");
            }
            DataTable dt =BusinessLayers.OrederLayer.Select_from_order(Convert.ToInt32(Session["id"]));
            gv_history.DataSource = dt;
            gv_history.DataBind();
        }

        protected void gv_history_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = (int)gv_history.DataKeys[e.RowIndex].Value;
            DataTable dt= BusinessLayers.OrederLayer.SelectbyuserID(Convert.ToInt32(Session["id"]));

            
            if (dt.Rows[e.RowIndex]["status"].ToString()== "pendding")
            {
                int roeeefect = BusinessLayers.OrederLayer.Delete(index);
                if (roeeefect > 0)
                {
                    gv_history.DataSource = BusinessLayers.OrederLayer.SelectbyuserID(Convert.ToInt32(Session["id"]));
                    gv_history.DataBind();
                }
            }
            else
            {

            }
        }
    }
}
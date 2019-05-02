using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ShoppingSite.BusinessLayers;

namespace ShoppingSite.UILayer
{
    public partial class ViewCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["id"] == null)
            {
                Response.Redirect("~/UILayer/LoginPage.aspx");
            }
            DataTable dt = CartLayer.SelectbyuserID(Convert.ToInt32(Session["id"]));
            gv_cart.DataSource = dt;
            gv_cart.DataBind();
        }

        protected void gv_cart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = (int)gv_cart.DataKeys[e.RowIndex].Value;
            int roeeefect = CartLayer.Delete(index);
            if (roeeefect > 0)
            {
                gv_cart.DataSource = CartLayer.SelectbyuserID(Convert.ToInt32(Session["id"]));
                gv_cart.DataBind();
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
              DataTable dt = BusinessLayers.CartLayer.selectAll();
            for (int i = 0; i < gv_cart.Rows.Count; i++)
            {
      
                int roweffect_order = BusinessLayers.OrederLayer.Insert_into_order
                   (Convert.ToInt32(Session["id"]), (dt.Rows[i]["name"].ToString()), (DateTime)(dt.Rows[i]["lastModifiedDate"]), "pendding", (dt.Rows[i]["orderedPrice"].ToString()));

               
            }


            int roweffect_cart = CartLayer.Delete_from_cart(Convert.ToInt32(Session["id"]));
            gv_cart.DataSource = (DataTable)CartLayer.SelectbyuserID((Convert.ToInt32(Session["id"])));
            gv_cart.DataBind();
            //gv_cart.Visible = false;

        }

            protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UILayer/History.aspx");
        }
    }
}
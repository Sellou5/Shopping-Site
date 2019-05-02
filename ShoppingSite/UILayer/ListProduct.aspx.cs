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
    public partial class ListProduct : System.Web.UI.Page
    {
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
                    gv_product.DataSource = ProductLayer.selectAll();
                    gv_product.DataBind();
                }
                catch(Exception ex)
                {
                    this.LogError(ex);
                }
            }
        }
        protected void gv_product_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                gv_product.EditIndex = e.NewEditIndex;
                DataTable dt = ProductLayer.selectAll();
                gv_product.DataSource = dt;
                gv_product.DataBind();


                DropDownList ddl = (DropDownList)gv_product.Rows[e.NewEditIndex].FindControl("ddl_cat_edit");
                ddl.DataSource = CategoryLayer.selectAll();
                ddl.DataTextField = "name";
                ddl.DataValueField = "id";
                ddl.DataBind();


                ddl.SelectedValue = dt.Rows[e.NewEditIndex]["categoryId"].ToString();
            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }
        }

        protected void gv_product_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                string name = ((TextBox)gv_product.Rows[e.RowIndex].FindControl("txt_name_edit")).Text;
                string img = ((Image)gv_product.Rows[e.RowIndex].FindControl("img_product")).ImageUrl;
                int price = int.Parse(((TextBox)gv_product.Rows[e.RowIndex].FindControl("txt_price_edit")).Text);
                int offer = int.Parse(((TextBox)gv_product.Rows[e.RowIndex].FindControl("txt_offer_edit")).Text);
                int category = int.Parse(((DropDownList)gv_product.Rows[e.RowIndex].FindControl("ddl_cat_edit")).SelectedValue);
                string desc = ((TextBox)gv_product.Rows[e.RowIndex].FindControl("txt_desc_edit")).Text;
                int quan = int.Parse(((TextBox)gv_product.Rows[e.RowIndex].FindControl("txt_quantity_edit")).Text);
                int id = (int)gv_product.DataKeys[e.RowIndex].Value;
                ProductLayer.update(id, name, img, price, offer, category, desc, quan);
                gv_product.EditIndex = -1;
                gv_product.DataSource = ProductLayer.selectAll();
                gv_product.DataBind();
            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }
        }

        protected void gv_product_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            try
            {
                gv_product.EditIndex = -1;
                gv_product.DataSource = ProductLayer.selectAll();
                gv_product.DataBind();
            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }
        }

        protected void gv_product_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int id = (int)gv_product.DataKeys[e.RowIndex].Value;
                ProductLayer.delete(id);
                gv_product.DataSource = ProductLayer.selectAll();
                gv_product.DataBind();
            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            try
            {
                if (txt_search.Text == "")
                {
                    gv_product.DataSource = ProductLayer.selectAll();
                    gv_product.DataBind();
                }
                else
                {
                    gv_product.DataSource = ProductLayer.search(txt_search.Text);
                    gv_product.DataBind();
                }
            }
            catch(Exception ex)
            {
                this.LogError(ex);
            }
        }
    }
}
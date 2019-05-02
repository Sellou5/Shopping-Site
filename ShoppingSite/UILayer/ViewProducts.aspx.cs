using ShoppingSite.BusinessLayers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingSite.MasterPage3
{
    public partial class ViewProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dl_view.DataSource = ProductLayer.selectAll();
            dl_view.DataBind();

        }

        protected void dl_view_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            if(txt_search.Text=="")
            {
                dl_view.DataSource = ProductLayer.selectAll();
                dl_view.DataBind();
            }
            else
            { 
            dl_view.DataSource = ProductLayer.search(txt_search.Text);
            dl_view.DataBind();
            }

        }

        protected void btn_addTOcart_Click(object sender, EventArgs e)
        {

            
            
            
        }
    }
}
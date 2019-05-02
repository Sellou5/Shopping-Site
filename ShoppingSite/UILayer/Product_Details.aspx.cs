using ShoppingSite.BusinessLayers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingSite.UILayer
{
    public partial class Product_Details : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
             id = int.Parse(Request.QueryString["id"].ToString());
             r1.DataSource = ProductLayer.selById(id);
             r1.DataBind();

        }

        protected void btn_return_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProducts.aspx");
        }
    }
}
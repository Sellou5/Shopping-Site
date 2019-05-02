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
    public partial class DetailedPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                int id = int.Parse(Request.QueryString["id"]);
                try
                {
                    DataTable dt = ProductLayer.IDselect(id);
                    lbl_name.Text = dt.Rows[0]["name"].ToString();
                    Image1.ImageUrl = dt.Rows[0]["image"].ToString();
                    lbl_price.Text = dt.Rows[0]["price"].ToString();
                    lbl_offer.Text = dt.Rows[0]["offer"].ToString();
                    lbl_quantity.Text = dt.Rows[0]["quantity"].ToString();
                    lbl_cat.Text = dt.Rows[0]["catName"].ToString();
                    lbl_desc.Text = dt.Rows[0]["description"].ToString();
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

        

        protected void lbtn_addtoCart_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["id"] != null)
                {

                    if (Session["status"].ToString() == "Approved")
                    {
                        int id = int.Parse(Request.QueryString["id"]);

                        // Check for Existence of Product in Cart Table

                        DataTable dtCart = CartLayer.SelectbyProandUser(id, Convert.ToInt32(Session["id"]));


                        if (dtCart.Rows.Count == 0/*[0]["productId"] == null || dtCart.Rows[0]["userId"]==null*/)
                        {

                            DataTable dt = ProductLayer.IDselect(id);
                            string name = dt.Rows[0]["name"].ToString();
                            string price = dt.Rows[0]["price"].ToString();
                            // int quantity = Convert.ToInt32(dt.Rows[0]["quantity"]);
                            string CatNam = dt.Rows[0]["catName"].ToString();
                            string Description = dt.Rows[0]["description"].ToString();
                            int userID = int.Parse(Session["id"].ToString());

                            int EfeectedRows = CartLayer.Insert(name, price, /*quantity,*/ id, userID, DateTime.Now, "Pending");
                            if (EfeectedRows > 0)
                            {
                                lbl_msg.Text = "Added to cart";
                            }
                            else
                            {
                                lbl_msg.Text = "Error";
                            }
                        }
                        //Updating Quantity
                        else
                        {
                            int RowsEfected = CartLayer.UpdateQuantity(id, Convert.ToInt32(Session["id"]));
                            if (RowsEfected > 0)
                            {
                                lbl_msg.Text = "Quantity Updated";
                            }
                        }
                    }
                    else
                    {

                        lbl_msg.Text = "your account is not Approved yet";
                    }
                }

                else
                {
                    lbl_msg.Text = "Login First then add to your cart";
                }
            }
            catch (Exception ex)
            {
                this.LogError(ex);
            }
        }
    }
}
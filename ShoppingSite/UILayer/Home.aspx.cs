using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ShoppingSite.BusinessLayers;
using ShoppingSite.UILayer;
using System.IO;

namespace ShoppingSite.MasterPage3
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    gv_home.Columns[0].ItemStyle.Width = 400;
                    gv_home.Columns[1].ItemStyle.Width = 200;
                    gv_home.Columns[2].ItemStyle.Width = 100;
                    gv_home.Columns[3].ItemStyle.Width = 100;
                    gv_home.Columns[4].ItemStyle.Width = 100;
                    gv_home.Columns[5].ItemStyle.Width = 100;

                    DataTable dt = ProductLayer.SelectForHome();
                    gv_home.DataSource = dt;
                    gv_home.DataBind();
                }
                catch(Exception ex)
                {
                    this.LogError(ex);
                }
            }
        }

        protected void gv_home_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "addcart")
            {
                try
                {
                    if (Session["id"] != null)
                    {
                        if (Session["status"].ToString() == "Approved")
                        {
                            int rIndex = Convert.ToInt32(e.CommandArgument);
                            int id = (int)gv_home.DataKeys[rIndex].Value;

                            // Check for Existence of Product in Cart Table

                            DataTable dtCart = CartLayer.SelectbyProandUser(id, Convert.ToInt32(Session["id"]));


                            if (dtCart.Rows.Count == 0/*[0]["productId"] == null || dtCart.Rows[0]["userId"]==null*/)
                            {

                                DataTable dt = ProductLayer.IDselect(id);
                                string name = dt.Rows[0]["name"].ToString();
                                string price = dt.Rows[0]["price"].ToString();
                                //int quantity = Convert.ToInt32(dt.Rows[0]["quantity"]);
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
                            lbl_msg.Text = "your account is not approved yet";
                        }
                    }

                    else
                    {
                        lbl_msg.Text = "Login First then add to your cart";
                    }
                }
                catch(Exception ex)
                {
                    this.LogError(ex);
                }
                
                
            }
            else if(e.CommandName == "details")
            {
                try
                {

                    int rIndex = Convert.ToInt32(e.CommandArgument);
                    int id = (int)gv_home.DataKeys[rIndex].Value;
                    Response.Redirect("~/UILayer/DetailedPage.aspx?id=" + id);
                }
                catch(Exception ex)
                {
                    this.LogError(ex);
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UILayer/ViewCart.aspx");
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
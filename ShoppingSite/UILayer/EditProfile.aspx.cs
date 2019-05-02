using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using ShoppingSite.UILayer;
using System.IO;

namespace ShoppingSite.UILayer
{
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("~/UILayer/LoginPage.aspx");
            }
            else
            {

                if (!IsPostBack)
                {
                    try
                    {
                        int id = int.Parse((Session["id"].ToString()));
                        DataTable dt = UserLayer.User_selById(id);
                        txt_fname.Text = dt.Rows[0]["fName"].ToString();
                        txt_lname.Text = dt.Rows[0]["lName"].ToString();
                        txt_username.Text = dt.Rows[0]["userName"].ToString();
                        txt_email.Text = dt.Rows[0]["email"].ToString();
                        txt_phone.Text = dt.Rows[0]["phone"].ToString();
                        txt_add.Text = dt.Rows[0]["address"].ToString();
                        img_profile.ImageUrl = dt.Rows[0]["image"].ToString();
                    }
                    catch(Exception ex)
                    {
                        this.LogError(ex);
                    }
                }
             }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                try
                {
                    if (up_image.HasFile == true)
                    {
                        try
                        {
                            string fname = txt_fname.Text;
                            string lname = txt_lname.Text;
                            string mail = txt_email.Text;
                            string username = txt_username.Text;
                            string city = txt_add.Text;
                            string phone = txt_phone.Text;
                            int id = (int)Session["id"];
                            string path = "~/Pic/" + up_image.FileName;
                            int row_effect = UserLayer.User_update(id, fname, lname, username, mail, path, city, phone);
                            up_image.SaveAs(Server.MapPath(path));
                            if (row_effect > 0)
                            {
                                Label1.Text = "your data updated";
                            }
                            else
                            {
                                Label1.Text = "you failed";
                            }
                        }
                        catch (Exception ex)
                        {
                            this.LogError(ex);
                        }
                    }
                    else
                    {
                        try
                        {
                            string fname = txt_fname.Text;
                            string lname = txt_lname.Text;
                            string mail = txt_email.Text;
                            string username = txt_username.Text;
                            string city = txt_add.Text;
                            string phone = txt_phone.Text;
                            int id = int.Parse(Session["id"].ToString());

                            int row_effect = UserLayer.User_update_without(id, fname, lname, username, mail, city, phone);

                            if (row_effect > 0)
                            {
                                Response.Redirect("~/UILayer/UserProfile.aspx");
                            }
                            else
                            {
                                Label1.Text = "you failed to update your data ";
                            }
                        }
                        catch (Exception ex)
                        {
                            this.LogError(ex);
                        }
                    }
                    /*else if ((txt_fname.Text = txt_lname.Text = txt_phone.Text = txt_username.Text = txt_email.Text = txt_add.Text) == " "&&(up_image.HasFile==false))
                     {
                        btn_update.Enabled = false;
                        Label1.Text = "To update your data you should enter data";

                    }*/

                }
                catch (Exception ex)
                {
                    this.LogError(ex);
                }
                finally
                {

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
    }
}


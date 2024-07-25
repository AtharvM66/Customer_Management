using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;
using CRM.DataModel;
using System.Configuration;

namespace CRM
{
    public partial class login : System.Web.UI.Page
    {
        DB_CRMEntities db = new DB_CRMEntities();

    protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;


            using (var db = new DB_CRMEntities())
            {
                if (!string.IsNullOrEmpty(username) && !string.IsNullOrEmpty(password))
                {
                    var user = db.Tbl_User.FirstOrDefault(x => x.Username == username && x.Password == password);
                    if (user != null && user.UserID !=1)
                    {
                        Session["UserId"] = user.UserID;
                        Response.Redirect("home.aspx");
                    }
                    else if (user != null && user.UserID == 1) {
                        Session["UserId"] = user.UserID;
                        Response.Redirect("admindash.aspx");
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid username or password.');", true);
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please fill username or password.');", true);
                }
            }
        }

       
    }
}
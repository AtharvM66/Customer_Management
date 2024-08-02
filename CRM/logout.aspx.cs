using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRM
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Buttonlogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();

            // Redirect to login page
            Response.Redirect("login.aspx");
        }
    }
}

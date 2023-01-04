using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mitre
{
    public partial class History : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                string username = Session["username"].ToString();
                btnUser.Text = username;
                navHistory.Visible = true;
                navHardware.Visible = true;
                navCredentials.Visible = true;
            }
            else
            {
                btnUser.Text = "Login";
            }
            if (btnUser.Text == "Login")
            {
                btnLogout.Visible = false;
            }
        }

        protected void btnUser_Click(object sender, EventArgs e)
        {
            if (btnUser.Text == "Login")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Redirect("Profile.aspx");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }

        protected void btnHardware_Click(object sender, EventArgs e)
        {

        }
    }
}
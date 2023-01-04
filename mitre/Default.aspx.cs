using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//contain classes for accessing and managing data from diversesources
using System.Configuration;//contains the types that provide the programming modelfor handling configuration data
using System.Data.SqlClient; //Data Provider for SQL Server
using System.Diagnostics;

namespace Mitre
{
    public partial class _Default : Page
    {
        public static string username;
        public static string password;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                username = Session["username"].ToString();
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
    }
}
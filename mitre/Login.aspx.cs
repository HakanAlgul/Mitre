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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["rememberPassword"] != null)
            {
                txtUsername.Text = Request.Cookies["username"].Value;
                txtPassword.Text = Request.Cookies["password"].Value;
            }
        }

        protected int CheckAccount(string username, string password)
        {
            int accountFound = 0;
            object account;
            SqlConnection connection = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=MitreAttack;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Encrypt=False;TrustServerCertificate=False");
            connection.Open();
            string checkString = string.Format("SELECT COUNT(*) FROM Accounts WHERE username='{0}' AND password='{1}'", username, password);
            if (connection.State == ConnectionState.Open)
            {
                SqlCommand command = new SqlCommand(checkString, connection);
                account = command.ExecuteScalar();
                accountFound = Convert.ToInt32(account);
                connection.Close();
                return accountFound;
            }
            else
            {
                connection.Close();
                return accountFound;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int accountChecked = CheckAccount(txtUsername.Text, txtPassword.Text);
            if (accountChecked == 1)
            {
                Session["username"] = txtUsername.Text;
                Session["password"] = txtPassword.Text;
                Debug.WriteLine(Session["username"].ToString());

                if (checkRemember.Checked)
                {
                    Response.Cookies["username"].Value = txtUsername.Text;
                    Response.Cookies["password"].Value = txtPassword.Text;
                    Response.Cookies["username"].Expires = DateTime.Now.AddDays(1);
                    Response.Cookies["password"].Expires = DateTime.Now.AddDays(1);
                    Response.Cookies["rememberPassword"].Value = "yes";
                    Response.Cookies["rememberPassword"].Expires = DateTime.Now.AddDays(1);
                }
                else
                {
                    Response.Cookies["rememberPassword"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["password"].Expires = DateTime.Now.AddDays(-1);
                }
                Debug.WriteLine("You can login.");
                Response.Redirect("Default.aspx");
            }
            else
            {
                Debug.WriteLine("Wrong username or password");
            }
        }
    }
}
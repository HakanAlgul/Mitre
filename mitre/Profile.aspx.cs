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
    public partial class Profile : System.Web.UI.Page
    {
        public class user
        {
            public string account_id { get; set; }
            public string username { get; set; }
            public string password { get; set; }
            public string name { get; set; }
            public string email { get; set; }
            public string phone { get; set; }
        }

        public static string username;
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

        protected void btnFill_Click(object sender, EventArgs e)
        {
            user user = new user();
            SqlConnection connection = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=MitreAttack;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Encrypt=False;TrustServerCertificate=False");
            connection.Open();
            if (Session["username"] != null)
            {
                username = Session["username"].ToString();
            }
            string accountSearchString = string.Format("SELECT id, username, password FROM Accounts WHERE username='{0}'", username);
            if (connection.State == ConnectionState.Open)
            {
                SqlCommand accountCommand = new SqlCommand(accountSearchString, connection);
                using (SqlDataReader reader = accountCommand.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        user.account_id = reader["id"].ToString();
                        user.username = reader["username"].ToString();
                        user.password = reader["password"].ToString();
                    }
                }

                string customerSearchString = string.Format("SELECT name, email, phone FROM Customers WHERE account_id={0}", user.account_id);
                SqlCommand customerCommand = new SqlCommand(customerSearchString, connection);
                using (SqlDataReader reader = customerCommand.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        user.name = reader["name"].ToString();
                        user.email = reader["email"].ToString();
                        user.phone = reader["phone"].ToString();
                    }
                }
                Debug.WriteLine(user.account_id);
                Debug.WriteLine(user.username);
                Debug.WriteLine(user.password);
                Debug.WriteLine(user.name);
                Debug.WriteLine(user.email);
                Debug.WriteLine(user.phone);

            }
            txtAccountId.Text = user.account_id;
            txtUsername.Text = user.username;
            txtPassword.Text = user.password;
            txtCompanyName.Text = user.name;
            txtEmail.Text = user.email;
            txtPhone.Text = user.phone;
            connection.Close();
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
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=MitreAttack;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Encrypt=False;TrustServerCertificate=False");
            connection.Open();
            user user = new user();
            user.username = txtUsername.Text;
            user.password = txtPassword.Text;
            user.account_id = txtAccountId.Text;
            user.name = txtCompanyName.Text;
            user.email = txtEmail.Text;
            user.phone = txtPhone.Text;
            string accountUpdateString = string.Format("UPDATE Accounts SET username='{0}', password='{1}' WHERE id={2}", user.username, user.password, user.account_id);
            string customerUpdateString = string.Format("UPDATE Customers SET name='{0}', email='{1}', phone='{2}' WHERE account_id='{3}'", user.name, user.email, user.phone, user.account_id);
            Debug.WriteLine(accountUpdateString);
            Debug.WriteLine(customerUpdateString);
            if (connection.State == ConnectionState.Open)
            {
                SqlCommand accountUpdateCommand = new SqlCommand(accountUpdateString, connection);
                SqlCommand customerUpdateCommand = new SqlCommand(customerUpdateString, connection);
                int accountUpdateResult = accountUpdateCommand.ExecuteNonQuery();
                int customerUpdateResult = customerUpdateCommand.ExecuteNonQuery();
                if (accountUpdateResult == 1 && customerUpdateResult == 1)
                {
                    Debug.WriteLine("Your user information was successfully saved!");
                }
                else
                {
                    Debug.WriteLine("Your user information couldn't be saved!");
                }
            }
            Response.Redirect("Default.aspx");
            connection.Close();
        }
    }
}
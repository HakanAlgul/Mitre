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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { }
        private int CreateAccount(string username, string password)
        {
            int accountCreated = 0;
            //string connectionString = ;
            SqlConnection connection = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=MitreAttack;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Encrypt=False;TrustServerCertificate=False");
            connection.Open();
            string insertString = string.Format("INSERT INTO Accounts (username,password) VALUES ('{0}', '{1}')", username, password);
            string searchString = string.Format("SELECT * FROM Accounts WHERE username='{0}'", username);

            if (connection.State == ConnectionState.Open)
            {
                SqlCommand command = new SqlCommand(insertString, connection);
                accountCreated = command.ExecuteNonQuery();
                if (accountCreated == 1)
                {
                    Debug.WriteLine("Successfully created account.");
                }
                else
                {
                    Debug.WriteLine("There was a problem creating account.");
                }
                SqlCommand searchCommand = new SqlCommand(searchString, connection);
                object account = searchCommand.ExecuteScalar();
                int accountId = Convert.ToInt32(account);
                int customerCreated = CreateCustomer(txtCompanyName.Text, txtEmail.Text, txtPhone.Text, accountId);
                if (customerCreated == 1)
                {
                    Debug.WriteLine("Successfully created customer.");
                }
                else
                {
                    Debug.WriteLine("There was a problem creating customer.");
                }
                if (accountCreated == 1 && customerCreated == 1)
                {
                    connection.Close();
                    return 1;
                }
                else
                {
                    connection.Close();
                    return 0;
                }
            }
            else
            {
                Debug.WriteLine("There was a problem connecting to database");
                connection.Close();
                return 0;
            }
        }
        private int CreateCustomer(string name, string email, string phone, int account_id)
        {
            int result = 0;
            //string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=MitreAttack;Integrated Security=True";
            SqlConnection connection = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=MitreAttack;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Encrypt=False;TrustServerCertificate=False");
            connection.Open();
            string insertString = string.Format("INSERT INTO Customers (name,email,phone,account_id) VALUES ('{0}', '{1}', '{2}','{3}')", name, email, phone, account_id);

            if (connection.State == ConnectionState.Open)
            {
                SqlCommand command = new SqlCommand(insertString, connection);
                result = command.ExecuteNonQuery();
            }
            connection.Close();
            return result;
        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Debug.WriteLine("Buraya geldi mi");
            int result = CreateAccount(txtUsername.Text, txtPassword.Text);
            if (result == 1)
            {
                Debug.WriteLine("Successfully created account and customer.");
            }
            else
            {
                Debug.WriteLine("There was a problem creating account and customer.");
            }
            Response.Redirect("Login.aspx");
        }
    }
}
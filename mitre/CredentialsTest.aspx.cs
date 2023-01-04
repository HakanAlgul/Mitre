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
using System.Windows;
using System.Windows.Forms;

namespace Mitre
{
    public partial class CredentialsTest : System.Web.UI.Page
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

        protected string checkFile(string filename)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=MitreAttack;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Encrypt=False;TrustServerCertificate=False");
            connection.Open();
            string checkFileString = string.Format("SELECT * FROM Harmful_Applications WHERE name='{0}'", filename);
            if (connection.State == ConnectionState.Open)
            {
                SqlCommand checkCommand = new SqlCommand(checkFileString, connection);
                if (checkCommand.ExecuteScalar() != null)
                {
                    connection.Close();
                    Debug.WriteLine("File is dangerous.");
                    return "dangerous";
                }
                else
                {
                    connection.Close();
                    Debug.WriteLine("File is safe.");
                    return "safe";
                }
            }
            connection.Close();
            return "safe";
        }

        protected void saveHistory(string result, string filename, string username)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=MitreAttack;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Encrypt=False;TrustServerCertificate=False");
            connection.Open();
            string saveHistoryString = string.Format("INSERT INTO Credentials_From_Password_Stores (result, filename, username) VALUES ('{0}', '{1}', '{2}')", result, filename, username);
            if (connection.State == ConnectionState.Open)
            {
                SqlCommand saveCommand = new SqlCommand(saveHistoryString, connection);
                int isInserted = saveCommand.ExecuteNonQuery();
                if (isInserted == 1)
                {
                    Debug.WriteLine("Inserted into Credentials From Password Stores History successfully");
                }
                else
                {
                    Debug.WriteLine("Couldn't insert into Credentials From Password Stores History successfully");
                }
            }
        }

        protected string outputMessage(string result, string filename, string username)
        {
            string msg = string.Format("Hello {0}, the file {1} is {2} to use.", username, filename, result);
            return msg;
        }

        protected void btnTest_Click(object sender, EventArgs e)
        {
            string filename = txtFilename.Text;
            string isFileSafe = checkFile(filename);
            saveHistory(isFileSafe, filename, Session["username"].ToString());
            string message = outputMessage(isFileSafe, filename, Session["username"].ToString());
            MessageBox.Show(message);
        }
    }
}
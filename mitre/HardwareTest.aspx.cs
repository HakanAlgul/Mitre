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
using System.Windows.Forms;


namespace Mitre
{
    public partial class HardwareTest : System.Web.UI.Page
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

        protected string checkMac(string mac)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=MitreAttack;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Encrypt=False;TrustServerCertificate=False");
            connection.Open();
            string checkMacString = string.Format("SELECT * FROM MAC_Addresses WHERE mac_address = '{0}'", mac);
            if (connection.State == ConnectionState.Open)
            {
                SqlCommand checkCommand = new SqlCommand(checkMacString, connection);
                if (checkCommand.ExecuteScalar() != null)
                {
                    connection.Close();
                    Debug.WriteLine("Mac address is safe.");
                    return "safe";
                }
                else
                {
                    connection.Close();
                    Debug.WriteLine("Mac address is dangerous.");
                    return "dangerous";
                }
            }
            connection.Close();
            return "dangerous";
        }

        protected void saveHistory(string result, string mac, string username)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=MitreAttack;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Encrypt=False;TrustServerCertificate=False");
            connection.Open();
            string saveHistoryString = string.Format("INSERT INTO Hardware_Additions (result, checked_device, username) VALUES ('{0}', '{1}', '{2}')", result, mac, username);
            if (connection.State == ConnectionState.Open)
            {
                SqlCommand saveCommand = new SqlCommand(saveHistoryString, connection);
                int isInserted = saveCommand.ExecuteNonQuery();
                if (isInserted == 1)
                {
                    Debug.WriteLine("Inserted into Hardware Additions History successfully");
                }
                else
                {
                    Debug.WriteLine("Couldn't insert into Hardware Additions History successfully");
                }
            }
        }

        protected string outputMessage(string result, string mac, string username)
        {
            string msg = string.Format("Hello {0}, the device with mac address {1} is {2}.", username, mac, result);
            return msg;
        }
        protected void btnHardware_Click(object sender, EventArgs e)
        {
            string mac = txtMac.Text;
            string isMacSafe = checkMac(mac);
            saveHistory(isMacSafe, mac, Session["username"].ToString());
            string message = outputMessage(isMacSafe, mac, Session["username"].ToString());
            MessageBox.Show(message);
        }
    }
}
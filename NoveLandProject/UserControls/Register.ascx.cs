using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace NoveLandProject.UserControls
{
    public partial class Register : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            string email = txtUserName.Text;
            string password = txtPassword.Text;
            string role = "user";
            string phone = txtPhone.Text;
            string address = txtAddress.Text;
            string gender = radioGender.SelectedItem.Value.ToString();
            PBKDF2Hash PwdHash = new PBKDF2Hash(password);
            string passwordhash = PwdHash.HashedPassword;
            //lblPasswordHash.Text = passwordhash;
            bool enabled = true;

            SqlConnection conn = new SqlConnection(ConfigurationManager.
                ConnectionStrings["ConnectionString"].ConnectionString);

            string sql = @"INSERT INTO user_reg (username, passwordhash, role, phone, address, gender, enabled)
                    VALUES (@username, @passwordhash, @role, @phone, @address, @gender, @enabled)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@username", email);
            cmd.Parameters.AddWithValue("@passwordhash", passwordhash);
            cmd.Parameters.AddWithValue("@role", role);
            cmd.Parameters.AddWithValue("@phone", phone);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@enabled", enabled);

            try
            {
                conn.Open(); cmd.ExecuteNonQuery();
                //lblStatus.Text = "Status: Data successfully saved.";
            }
            catch (SqlException ex)
            {
                //lblStatus.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }


        }
    }
}
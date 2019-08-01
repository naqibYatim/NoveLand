using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NoveLandProject.UserControls
{
    public partial class LoginStatus : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null && Session["role"] != null)
            {
                HyperLinkLogin.Visible = false;
                HyperLinkRegister.Visible = false;
                btnLogout.Visible = true;
                //lblLoginStatus.Text = "You are logged in as "
                //    + Session["username"].ToString() + " - " + Session["role"];
            }

            else
            {
                HyperLinkLogin.Visible = true;
                HyperLinkRegister.Visible = true;
                btnLogout.Visible = false;
                //lblLoginStatus.Text = "You are not logged in.";
            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB; 
                    AttachDBFilename=|DataDirectory|\NoveLandDB.mdf; 
                    Integrated Security=True");

            SqlCommand cmd = new SqlCommand("delete from cart", conn);

            try
            {
                // Open connection                 
                conn.Open();

                // delete table cart data
                cmd.ExecuteNonQuery();
                // release all session
                Session.RemoveAll();
                Response.Redirect("Default.aspx");

            }
            catch (Exception exc)
            {

            }
            finally
            {
                conn.Close();
            }
        }
    }
}
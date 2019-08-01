using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NoveLandProject.UserControls
{
    public partial class Login : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            string sql = "SELECT * FROM user_reg WHERE username=@username";
            SqlConnection conn = new SqlConnection(ConfigurationManager.
                ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@username", txtUserName.Text);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable(); sda.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Object objpasswordhash = dt.Rows[0]["passwordhash"];
                Object objrole = dt.Rows[0]["role"];
                Object objphone = dt.Rows[0]["phone"];
                Object objaddress = dt.Rows[0]["address"];
                Object objgender = dt.Rows[0]["gender"];
                Object objenabled = dt.Rows[0]["enabled"];

                string password = txtPassword.Text;
                string storedpasswordhash = objpasswordhash.ToString();
                PBKDF2Hash PwdHash = new PBKDF2Hash(password, storedpasswordhash);
                bool passwordcheck = PwdHash.PasswordCheck;
                bool enabled = Convert.ToBoolean(objenabled);

                if (passwordcheck == true && enabled == true)
                {
                    Session["username"] = txtUserName.Text;
                    Session["role"] = objrole;
                    Session["phone"] = objphone;
                    Session["address"] = objaddress;
                    Session["gender"] = objgender;

                    if (Session["role"].ToString() == "admin")
                        Response.Redirect("EditDeleteItems.aspx");
                    else if (Session["role"].ToString() == "user")
                        Response.Redirect("Default.aspx");
                    else
                        Response.Redirect("Default.aspx");

                    Session.RemoveAll();
                }
                else
                {
                    lblStatus.Text = "You're username and/or password is incorrect";
                    lblStatus.ForeColor = System.Drawing.Color.Red;
                }
            }


        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NoveLandProject
{
    public partial class Evaluation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string q1, q2, q3, q4, q5, q6, q7p1, q7p2, q7p3, q8;
            q1 = txtProfession.Text;
            q2 = RadioButtonListEasyToFind.SelectedValue.ToString();
            q3 = RadioButtonListClearlyPresented.SelectedValue.ToString();
            q4 = RadioButtonListAbleToFind.SelectedValue.ToString();
            q5 = txtOtherInformation.Text;
            q6 = txtEasierToUse.Text;
            q7p1 = RadioButtonListAccessibility.SelectedValue.ToString();
            q7p2 = RadioButtonListContent.SelectedValue.ToString();
            q7p3 = RadioButtonListPresentation.SelectedValue.ToString();
            q8 = txtEmail.Text;

            //lblStatus.Text = "Q1: " + q1 + "  Q2: " + q2 + "  Q3: " + q3 + "  Q4: " + q4 + 
            //    "  Q5: " + q5 + "  Q6: " + q6 + " Q7.1: " + q7p1 + "  Q7.2: " + q7p2 + 
            //    "  Q7.3: " + q7p3 + "  Q8: " + q8;



            //SqlConnection conn = new SqlConnection(ConfigurationManager.
            //    ConnectionStrings["ConnectionString"].ConnectionString);

            //string sql = @"INSERT INTO evaluation (q1, q2, q3, q4, q5, q6, q7p1, q7p2, q7p3, q8)
            //        VALUES (@q1, @q2, @q3, @q4, @q5, @q6, @q7p1, @q7p2, @q7p3, @q8)";
            //SqlCommand cmd = new SqlCommand(sql, conn);
            //cmd.Parameters.AddWithValue("@q1", q1);
            //cmd.Parameters.AddWithValue("@q2", q2);
            //cmd.Parameters.AddWithValue("@q3", q3);
            //cmd.Parameters.AddWithValue("@q4", q4);
            //cmd.Parameters.AddWithValue("@q5", q5);
            //cmd.Parameters.AddWithValue("@q6", q6);
            //cmd.Parameters.AddWithValue("@q7p1", q7p1);
            //cmd.Parameters.AddWithValue("@q7p2", q7p2);
            //cmd.Parameters.AddWithValue("@q7p3", q7p3);
            //cmd.Parameters.AddWithValue("@q8", q8);

            //try
            //{
            //    conn.Open(); cmd.ExecuteNonQuery();
            //    lblStatus.Text = "Status: Data successfully saved.";
            //}
            //catch (SqlException ex)
            //{
            //    lblStatus.Text = ex.Message;
            //}
            //finally
            //{
            //    conn.Close();
            //    // show alert message and redirect to default page
            //    //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
            //    //    "alert('Product added to cart!');window.location ='Default.aspx';",
            //    //    true);
            //}


            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB; 
                    AttachDBFilename=|DataDirectory|\NoveLandDB.mdf; 
                    Integrated Security=True");

            string Query = "INSERT INTO evaluation (q1, q2, q3, q4, q5, q6, q7p1, q7p2, q7p3, q8) VALUES('" + q1 + "', '" + q2 + "', '" + q3 + "', '" + q4 + "', '" + q5 + "', '" + q6 + "', '" + q7p1 + "', '" + q7p3 + "', '" + q7p3 + "', '" + q8 + "');";

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(Query, conn);
                cmd.ExecuteNonQuery();
                lblStatus.Text = "Status: Data successfully saved.";
            }
            catch (Exception ex)
            {
                lblStatus.Text = ex.Message;
            }
            finally
            {

                conn.Close();
                // show notification and redirect to default page
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                    "alert('You evaluation form has been submitted! Thanks you for your response');window.location ='Default.aspx';",
                    true);

            }

        }

        protected void RadioButtonListEasyToFind_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonListClearlyPresented_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonListAbleToFind_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonListAccessibility_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonListContent_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonListPresentation_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
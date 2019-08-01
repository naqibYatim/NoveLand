using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NoveLandProject
{
    public partial class Cart : System.Web.UI.Page
    {

        protected bool showField = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["phone"] != null) {
                
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB; 
                    AttachDBFilename=|DataDirectory|\NoveLandDB.mdf; 
                    Integrated Security=True");

                SqlCommand cmd = new SqlCommand("select * from cart", conn);
                DataTable dt = new DataTable();

                try
                {
                    // Open connection                 
                    conn.Open();

                    cmd.ExecuteNonQuery();

                    SqlDataAdapter ad = new SqlDataAdapter(cmd);
                    ad.Fill(dt);

                    // check if table cart has data or empty
                    if (dt.Rows.Count > 0)
                    {
                        // set the cart header paragraph to notify user number of item currently in cart table
                        cartpar.Text = "You have " + dt.Rows.Count + " item in your cart";
                        // set details view visibility to true
                        showField = true;
                        // set button visibiility to true
                        btnConfirm.Visible = true;
                    }
                    else
                    {
                        cartpar.Text = "You have no item in cart";
                        showField = false;
                        btnConfirm.Visible = false;
                    }

                }
                catch (Exception exc)
                {

                }
                finally
                {
                    conn.Close();
                }
                
            }
            else
            {
                cartpar.Text = "Please login or register to view cart page";
                showField = false;
                btnConfirm.Visible = false;
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {

            string phone, email, address;
            phone = Session["phone"].ToString();
            email = Session["username"].ToString();
            address = Session["address"].ToString();

            double total = 0;

            SqlDataReader rdr = null;

            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB; 
                    AttachDBFilename=|DataDirectory|\NoveLandDB.mdf; 
                    Integrated Security=True");

            SqlCommand cmd = new SqlCommand("select * from cart", conn);
            
            try
            {
                // Open connection                 
                conn.Open();

                rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {

                    SqlConnection conn2 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB; 
                    AttachDBFilename=|DataDirectory|\NoveLandDB.mdf; 
                    Integrated Security=True");

                    // get the results of each column
                    int item_id = (int)rdr["item_id"];
                    string item_genre = (string)rdr["item_genre"];
                    string item_title = (string)rdr["item_title"];
                    double item_price = (double)rdr["item_price"];
                    string item_image = (string)rdr["item_image"];
                    int item_quantity = (int)rdr["item_quantity"];

                    total = item_price * item_quantity;

                    //LabelStatus.Text = "item_id: " + item_id + "  item_genre: " + item_genre + "  item_title: " + item_title + "  item_price: " + item_price + "  item_image: " + item_image + "  item_quantity: " + item_quantity + "  total: " + total + "  phone: " + phone + "  email: " + email + "  address: " + address;
                    
                    string Query = "INSERT INTO orders (user_phone, user_email, user_address, pd_id, pd_genre,pd_title, pd_price, pd_image, order_quantity, total_price) VALUES('" + phone + "', '" + email + "', '" + address + "', '" + item_id + "', '" + item_genre + "', '" + item_title + "', '" + item_price + "', '" + item_image + "', '" + item_quantity + "', '" + total + "');";

                    string Query2 = "DELETE FROM cart;";

                   conn2.Open();

                    SqlCommand cmd2 = new SqlCommand(Query, conn2);

                    cmd2.ExecuteNonQuery();


                    SqlCommand cmd3 = new SqlCommand(Query2, conn2);

                    cmd3.ExecuteNonQuery();

                    conn2.Close();

                }
                
                //LabelStatus.Text = "cart items added to order table";

                
            }
            catch(Exception exc)
            {
                //LabelStatus.Text = "Sorry, there is an error. Phone: " + phone + "  Email: " + email + "  Address: " + address + "  Error: " + exc;
            }
            finally
            {

                conn.Close();
                // show notification and redirect to default page
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                    "alert('Order Confirmed! Thanks for your purchase');window.location ='Default.aspx';",
                    true);

            }





        }
    }
}
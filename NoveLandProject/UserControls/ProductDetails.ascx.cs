
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.ComponentModel;

namespace NoveLandProject.UserControls
{
    public partial class ProductDetails : System.Web.UI.UserControl
    {
        protected bool showField = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["phone"] != null)
            {
                // set the 'add to cart' button visibility to true
                showField = true;
            }
            else
            {
                showField = false;
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            int itemId, itemGenre, itempages;
            double itemPrice;
            string itemTitle, itemDesc, itemImage, itemIsbn, itemAuthor, itemPublisher,
                itemFormat, itemDimensions, itemNotes, itemGenreStr;

            Label lblid, lblgenre, lbltitle, lblprice, lbldesc, lblimage, lblisnb, lblauthor,
                lblpublisher, lblpages, lblformat, lbldimensions, lblnotes;

            // reference to label
            Button btn = (Button)sender;
            DataListItem item = (DataListItem)btn.NamingContainer;
            lblid = (Label)item.FindControl("lblitemid");
            lblgenre = (Label)item.FindControl("lblitemgenre");
            lbltitle = (Label)item.FindControl("lblitemtitle");
            lblprice = (Label)item.FindControl("lblitemprice");
            lbldesc = (Label)item.FindControl("lblitemdesc");
            lblimage = (Label)item.FindControl("lblitemimage");
            lblisnb = (Label)item.FindControl("lblitemisbn");
            lblauthor = (Label)item.FindControl("lblitemauthor");
            lblpublisher = (Label)item.FindControl("lblitempublisher");
            lblpages = (Label)item.FindControl("lblitempages");
            lblformat = (Label)item.FindControl("lblitemformat");
            lbldimensions = (Label)item.FindControl("lblitemdimensions");
            lblnotes = (Label)item.FindControl("lblitemnotes");

            itemId = int.Parse(lblid.Text);
            itemGenre = int.Parse(lblgenre.Text);
            itemTitle = lbltitle.Text;
            itemPrice = Double.Parse(lblprice.Text);
            itemDesc = lbldesc.Text;
            itemImage = lblimage.Text;
            itemIsbn = lblisnb.Text;
            itemAuthor = lblauthor.Text;
            itemPublisher = lblpublisher.Text;
            itempages = int.Parse(lblpages.Text);
            itemFormat = lblformat.Text;
            itemDimensions = lbldimensions.Text;
            itemNotes = lblnotes.Text;

            if (itemGenre == 1)
            {
                itemGenreStr = "Comedy";
            }
            else if (itemGenre == 2)
            {
                itemGenreStr = "Crime";
            }
            else if (itemGenre == 3)
            {
                itemGenreStr = "Fantasy";
            }
            else if (itemGenre == 4)
            {
                itemGenreStr = "History";
            }
            else if (itemGenre == 5)
            {
                itemGenreStr = "Romance";
            }
            else
            {
                itemGenreStr = "True Story";
            }


            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB; 
                    AttachDBFilename=|DataDirectory|\NoveLandDB.mdf; 
                    Integrated Security=True");

            SqlCommand cmd = new SqlCommand("AddCart", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@itemId", SqlDbType.Int).Value = itemId;
            cmd.Parameters.Add("@itemGenre", SqlDbType.VarChar).Value = itemGenreStr;
            cmd.Parameters.Add("@itemTitle", SqlDbType.VarChar).Value = itemTitle;
            cmd.Parameters.Add("@itemPrice", SqlDbType.Float).Value = itemPrice;
            cmd.Parameters.Add("@itemDesc", SqlDbType.VarChar).Value = itemDesc;
            cmd.Parameters.Add("@itemImage", SqlDbType.VarChar).Value = itemImage;
            cmd.Parameters.Add("@itemIsbn", SqlDbType.VarChar).Value = itemIsbn;
            cmd.Parameters.Add("@itemAuthor", SqlDbType.VarChar).Value = itemAuthor;
            cmd.Parameters.Add("@itemPublisher", SqlDbType.VarChar).Value = itemPublisher;
            cmd.Parameters.Add("@itempages", SqlDbType.Int).Value = itempages;
            cmd.Parameters.Add("@itemFormat", SqlDbType.VarChar).Value = itemFormat;
            cmd.Parameters.Add("@itemDimensions", SqlDbType.VarChar).Value = itemDimensions;
            cmd.Parameters.Add("@itemNotes", SqlDbType.VarChar).Value = itemNotes;


            try
            {
                // Open connection                 
                conn.Open();
                cmd.ExecuteNonQuery();
                //LabelStatus.Text = "Product added to cart";
            }
            catch (SqlException ex)
            {
                //LabelStatus.Text = "Sorry, there is an error.";
            }
            finally
            {
                // Close connection                 
                conn.Close();

                // show alert message and redirect to default page
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                    "alert('Product added to cart!');window.location ='Default.aspx';",
                    true);

            }


        }

    }
}
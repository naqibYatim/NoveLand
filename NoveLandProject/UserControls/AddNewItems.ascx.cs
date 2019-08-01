using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;

namespace NoveLandProject.UserControls
{
    public partial class AddNewItems : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile != null)
            {

                int genreId, pages, quantity;
                string title, desc, image, isbn, author, publisher, format, dimensions, notes;
                double price;
                bool promotion;

                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                //Save files to images folder 
                FileUpload1.SaveAs(Server.MapPath("~/Images/CoverBooks/" + filename));
                this.imgItem.ImageUrl = "~/Images/CoverBooks/" + filename;
                txtItemImage.Text = filename;
                // set the variables
                genreId = int.Parse(genredropdown.Text);
                title = txtItemTitle.Text;
                double pr = double.Parse(txtItemPrice.Text);
                price = Math.Round(pr, 2);
                desc = txtItemDesc.Text;
                image = txtItemImage.Text;
                isbn = txtItemIsbn.Text;
                author = txtItemAuthor.Text;
                publisher = txtItemPublisher.Text;
                pages = int.Parse(txtItemPages.Text);
                format = formatdropdown.Text;
                dimensions = txtItemDimensions.Text;
                notes = txtItemNotes.Text;
                quantity = int.Parse(txtItemQuantity.Text);
                promotion = chkItemPromotion.Checked;
                // make connection
                SqlConnection conn = new SqlConnection(ConfigurationManager.
                ConnectionStrings["ConnectionString"].ConnectionString);
                // sql syntax
                string sql = @"INSERT INTO novels 
                    VALUES (@genre_id, @novel_title, @novel_price, @novel_desc, @novel_image, 
                        @novel_isbn, @novel_author, @novel_publisher, @novel_pages, @novel_format, 
                        @novel_dimensions, @novel_notes, @novel_quantity, @novel_promotion)";
                SqlCommand cmd = new SqlCommand(sql, conn);
                // set the values with variables
                cmd.Parameters.AddWithValue("@genre_id", genreId);
                cmd.Parameters.AddWithValue("@novel_title", title);
                cmd.Parameters.AddWithValue("@novel_price", price);
                cmd.Parameters.AddWithValue("@novel_desc", desc);
                cmd.Parameters.AddWithValue("@novel_image", image);
                cmd.Parameters.AddWithValue("@novel_isbn", isbn);
                cmd.Parameters.AddWithValue("@novel_author", author);
                cmd.Parameters.AddWithValue("@novel_publisher", publisher);
                cmd.Parameters.AddWithValue("@novel_pages", pages);
                cmd.Parameters.AddWithValue("@novel_format", format);
                cmd.Parameters.AddWithValue("@novel_dimensions", dimensions);
                cmd.Parameters.AddWithValue("@novel_notes", notes);
                cmd.Parameters.AddWithValue("@novel_quantity", quantity);
                cmd.Parameters.AddWithValue("@novel_promotion", promotion);
                try
                {
                    conn.Open(); cmd.ExecuteNonQuery();
                    lblStatus.Text = "Status: Data successfully saved.";
                }
                catch (SqlException ex)
                {
                    lblStatus.Text = ex.Message;
                }
                finally
                {
                    conn.Close();
                }
            }

        }
    }
}
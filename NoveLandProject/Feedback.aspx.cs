using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// mail message class
using System.Net.Mail;


namespace NoveLandProject
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            String from, passfrom, to, subject, comment;

            from = txtEmail.Text;
            passfrom = txtPassword.Text;
            to = "novelandadm@gmail.com";
            subject = txtSubject.Text;
            comment = txtComment.Text;

            SendEmail(from, passfrom, to, subject, comment);

            // show alert message and redirect to default page
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                "alert('Feedback sent! Thank you for your comment');window.location ='Default.aspx';",
                true);

        }

        // method to send an email
        public static void SendEmail(string from, string passfrom, string to, string subject, string comment)
        {

            // create an instance of mail message class
            MailMessage mailMessage = new MailMessage(from, to);
            // subject is not mandatory, but it is better if we specify those
            mailMessage.Subject = subject;
            mailMessage.Body = comment;

            // smtp server is responsible for sending and receiving email
            // setting of the smtp server
            // specify username and password to login to send email
            // google smtp server is 'smtp.gmail.com' and port number is '587'
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            // specify username and passsword
            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                UserName = from,
                Password = passfrom
            };

            // because gmail use SSL, we have to enable SSL
            smtpClient.EnableSsl = true;

            // send the email
            smtpClient.Send(mailMessage);
            

        }

    }
}
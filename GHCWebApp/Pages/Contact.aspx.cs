using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Text;


namespace GHCWebApp.Pages
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                var from = txtEmail.Text;
                var to = "ukznbandwidthofbrothers@gmail.com";
                const string Password = "55majorproject44";
                string mail_subject = txtSubject.Text.ToString();
                string mail_message = "From: " + txtName.Text + "\n";
                mail_message += "Email: " + txtEmail.Text + "\n";
                mail_message += "Phone: " + txtPhone.Text + "\n";
                mail_message += "Subject: " + txtSubject.Text + "\n";
                mail_message += "Message: " + txtBody.Text + "\n";

                var smtp = new SmtpClient();
                {
                    smtp.Host = "smtp@gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtp.Credentials = new NetworkCredential(from, Password);
                    smtp.Timeout = 20000;
                }
                smtp.Send(from, to, mail_subject, mail_message);

                lblStatus.Text = "Thank you for your email!";

                txtName.Text = "";
                txtEmail.Text = "";
                txtPhone.Text = "";
                txtSubject.Text = "";
                txtBody.Text = "";
            }

            catch (Exception ex)
            {
                lblStatus.Text = ex.StackTrace;
                lblStatus.ForeColor = Color.Red;
            }
        }
    }
}
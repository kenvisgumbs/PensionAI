using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace pspfai
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Master.ContentPageName = "CONTACT";
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // initialize the Captcha validation error label
                CaptchaErrorLabel.Text = "Incorrect CAPTCHA code!";
                CaptchaErrorLabel.Visible = false;
               
            }

            if (IsPostBack)
            {
                // validate the Captcha to check we're not dealing with a bot
                string userInput = CaptchaCode.Text;
                bool isHuman = PSPFCaptcha.Validate(userInput);
                CaptchaCode.Text = null; // clear previous user input

                if (isHuman)
                {
                    CaptchaErrorLabel.Visible = false;

                    // TODO: proceed with protected action
                    string to = "romero.kelsick@gmail.com"; //To address     
                    string from = "info@pspf.ai"; //From address     
                    MailMessage message = new MailMessage(from, to);

                    string mailbody = "This is a test email";
                    mailbody = "Name: " + txtName.Text + "\n";
                    mailbody += "Email: " + txtEmail.Text + "\n";
                    mailbody += "Phone: " + txtPhone.Text + "\n";

                    if (txtWorkPhone.Text != null)
                    {
                        mailbody += "Work Phone: " + txtWorkPhone.Text + "\n";
                    }

                    mailbody += "Message: " + txtMessage.Text + "\n";

                    message.Subject = "PSPF Website Contact Form Submission";
                    message.Body = mailbody;
                    message.BodyEncoding = Encoding.UTF8;
                    message.IsBodyHtml = true;
                    SmtpClient client = new SmtpClient("mail.pspf.ai", 25);
                    NetworkCredential basicCredential1 = new NetworkCredential("info@pspf.ai", "(@90dila#js45{0}");
                    client.EnableSsl = false;
                    client.UseDefaultCredentials = false;
                    client.Credentials = basicCredential1;
                    try
                    {
                        client.Send(message);
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                }
                else
                {
                    CaptchaErrorLabel.Visible = true;
                }
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string to = "romero.kelsick@gmail.com"; //To address     
            string from = "info@pspf.ai"; //From address     
            MailMessage message = new MailMessage(from, to);

            string mailbody = "This is a test email";
            message.Subject = "Test";
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("mail.pspf.ai", 25); 
            NetworkCredential basicCredential1 = new NetworkCredential("info@pspf.ai", "(@90dila#js45{0}");
            client.EnableSsl = false;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
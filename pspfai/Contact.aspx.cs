using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.IO;

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
                    try { 
                            // TODO: proceed with protected action
                            string to = "romero.kelsick@gmail.com"+","+txtEmail.Text; //To address     
                            string from = "info@pspf.ai"; //From address     
                            MailMessage message = new MailMessage(from, to);

                            string mailbody = "";
                   

                            if (txtWorkPhone.Text != null)
                            {
                                mailbody += "Work Phone: " + txtWorkPhone.Text + "<br/> ";
                            }

                            mailbody += "Message: " + txtMessage.Text + "<br/> ";

                            message.Subject = "PSPF Website Contact Form Submission";
                            message.Body = CreateBody();
                            message.BodyEncoding = Encoding.UTF8;
                            message.IsBodyHtml = true;
                            SmtpClient client = new SmtpClient("mail.pspf.ai", 25);
                            NetworkCredential basicCredential1 = new NetworkCredential("info@pspf.ai", "(@90dila#js45{0}");
                            client.EnableSsl = false;
                            client.UseDefaultCredentials = false;
                            client.Credentials = basicCredential1;
                    
           
                            client.Send(message);
                            CaptchaLabel.Text = "Message Sent Successfully!";
                            CaptchaLabel.Visible = true;
                            CaptchaLabel.ForeColor = System.Drawing.Color.Blue;
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

        private string CreateBody()
        {
            string body = string.Empty;
            using (StreamReader reader = new StreamReader(Server.MapPath("~/EmailTemplate.html")))
            {

                body = reader.ReadToEnd();

            }

            body = body.Replace("{name}", txtName.Text); //replacing Parameters
            body = body.Replace("{surname}", txtSurname.Text);
            body = body.Replace("{phone}", txtPhone.Text);
            body = body.Replace("{organization}", txtOrganization.Text);
            body = body.Replace("{workphone}", txtWorkPhone.Text);
            body = body.Replace("{email}", txtEmail.Text);
            body = body.Replace("{message}", txtMessage.Text);

            return body;

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //string to = "romero.kelsick@gmail.com"; //To address     
            //string from = "info@pspf.ai"; //From address     
            //MailMessage message = new MailMessage(from, to);

            //string mailbody = "This is a test email";
            //message.Subject = "Test";
            //message.Body = mailbody;
            //message.BodyEncoding = Encoding.UTF8;
            //message.IsBodyHtml = true;
            //SmtpClient client = new SmtpClient("mail.pspf.ai", 25); 
            //NetworkCredential basicCredential1 = new NetworkCredential("info@pspf.ai", "(@90dila#js45{0}");
            //client.EnableSsl = false;
            //client.UseDefaultCredentials = false;
            //client.Credentials = basicCredential1;
            //try
            //{
            //    client.Send(message);
            //}
            //catch (Exception ex)
            //{
            //    throw ex;
            //}
        }
    }
}
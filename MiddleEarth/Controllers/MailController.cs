using System;
using System.Configuration;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace MiddleEarth.Controllers
{
    public class MailController : Controller
    {
		private static readonly string _server = "";
		private static readonly string _user = "";
		private static readonly string _password = "";
		private static readonly string _to = "";
		private static readonly string _sender = "";
		private static readonly string _subject = "";

		static MailController()
		{
			_server = ConfigurationManager.AppSettings["smtp:server"];
			_user = ConfigurationManager.AppSettings["smtp:user"];
			_password = ConfigurationManager.AppSettings["smtp:password"];
			_sender = ConfigurationManager.AppSettings["smtp:sender"];
			_to = ConfigurationManager.AppSettings["smtp:to"];
			_subject = ConfigurationManager.AppSettings["smtp:subject"] ?? "Kontakt von der Webseite";
		}

		[HttpPost]
        public async Task<ActionResult> SendMail(string email, string name, string message)
        {
			// this is an approach testing with google mail provider only
			// you may need to enable the "allow less secure apps" flag in you google mail account
			// https://www.google.com/settings/security/lesssecureapps
			string to = _to;
			string from = email;
			using (MailMessage mail = new MailMessage(from, to))
			{ 
				mail.Subject = _subject;
				mail.Body = "Daten:";
				mail.Body += "\n\rEmail: " + email;
				mail.Body += "\n\rName: " + name;
				mail.Body += "\n\rText: " + message;
				using (SmtpClient client = new SmtpClient(_server, 587))
				{
					client.EnableSsl = true;
					client.DeliveryMethod = SmtpDeliveryMethod.Network;
					client.UseDefaultCredentials = false;
					client.Credentials = new System.Net.NetworkCredential(_user, _password);
					try
					{
						await client.SendMailAsync(mail);
					}
					catch (Exception ex)
					{
						Console.WriteLine("Exception caught in CreateTestMessage2(): {0}",
									ex.ToString());
					}
				}
			}
			return Content("Vielen Dank, Sie können das Fenster nun schließen.");
        }
    }
}
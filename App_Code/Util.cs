using SendGrid;
using SendGrid.Helpers.Mail;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

/// <summary>
/// Summary description for Util
/// </summary>
public class Util
{
    public Util()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static async Task SendEmail(string pasword, string receiverEmail,string name)
    {
        var apiKey = ConfigurationManager.AppSettings["SendGridAPI"];
        var client = new SendGridClient(apiKey);
        var from = new EmailAddress(ConfigurationManager.AppSettings["EmailAddress"], "OfficeInvent3");
        var subject = "Welcome!";
        var to = new EmailAddress(receiverEmail);
        var plainTextContent = "";
        var htmlContent = "<p>Dear "+name+"</p><p>We welcome you on OfficeInvent3!. Below are your login details:</p>" +
            "<br>Email:" + receiverEmail+"<br>pasword : "+pasword+"<br>" +
            "<p><strong>OfficeInvent3 Team</strong>";
        var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);
        var response = await client.SendEmailAsync(msg);
    }
}
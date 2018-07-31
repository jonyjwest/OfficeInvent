using Microsoft.AspNet.Identity;
using OfficeInvent.EF;
using OfficeInvent3;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    OfficeInvent3Entities _db = new OfficeInvent3Entities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LogIn(object sender, EventArgs e)
    {
        try
        {
            if (IsValid)
            {
                // Validate the user password
                var manager = new UserManager();
                ApplicationUser user = manager.Find(Email.Text, Password.Text);
                if (user != null)
                {
                    Session["LogedinuserId"] = user.Id;
                    Session["CompanyId"] = user.CompanyId;
                    Session["CompanyName"] = _db.Companies.FirstOrDefault(m => m.CompanyId == user.CompanyId).Name;
                    IdentityHelper.SignIn(manager, user, RememberMe.Checked);
                    Response.Redirect("Admin/Dashboard.aspx");
                }
                else
                {
                    FailureText.Text = "Invalid username or password.";
                    ErrorMessage.Visible = true;
                }
            }
        }
        catch(Exception ex)
        {
            FailureText.Text = ex.Message;
            ErrorMessage.Visible = true;
        }
    }
}
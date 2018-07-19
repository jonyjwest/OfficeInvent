using OfficeInvent.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Dashboard : System.Web.UI.Page
{
    OfficeInvent3Entities _db = new OfficeInvent3Entities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void LoadLabels()
    {
        
        try
        {
            if (Session["LogedinuserId"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
           
        }
        catch (Exception ex)
        {

        }

    }
}
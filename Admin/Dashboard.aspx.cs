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
        if (!IsPostBack)
        {
            BindLowStock();
            BindRequest();
        }
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

    
    private void BindLowStock()
    {
        var stockList = _db.Inventories.ToList();
        if (!stockList.Any())
        {
            grdStock.DataSource = new List<Inventory>();
            grdStock.DataBind();
        }
        else
        {
            grdStock.DataSource = stockList;
            grdStock.DataBind();
        }
        
    }

    private void BindRequest()
    {
        var stockList = _db.UserRequests.ToList();
        if (!stockList.Any())
        {
            GrdItemRequest.DataSource = new List<UserRequest>();
            GrdItemRequest.DataBind();
        }
        else
        {
            GrdItemRequest.DataSource = stockList;
            GrdItemRequest.DataBind();
        }

    }
}
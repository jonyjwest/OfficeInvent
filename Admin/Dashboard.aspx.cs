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
            LoadLabels();
            BindLowStock();
            BindRequest();
        }
    }
    private void LoadLabels()
    {
        
        try
        {
            if (Session["LogedinuserId"] == null || Session["CompanyId"]==null)
            {
                Response.Redirect("~/login.aspx");
            }
            try
            {
                int companyId = int.Parse(Session["CompanyId"].ToString());
                 var coyInventory= _db.Inventories.Where(m => m.CompanyId == companyId);
                lblLowStock.Text = coyInventory.Where(m => m.Quantity <= m.ReorderLevel).Count().ToString() ;
                lblCheckoutItem.Text = _db.StockHistories.Where(m => m.CompanyId == companyId && m.DateCreated == DateTime.Now).Count().ToString();
                lblOutofStock.Text= coyInventory.Where(m => m.Quantity <1).Count().ToString();
                lblPermision.InnerText = _db.UserRequests.Where(m => m.CompanyId == companyId && m.Status == 1).Count().ToString();
            }
            catch (Exception ex)
            {
               
            }

        }
        catch (Exception ex)
        {

        }

        
    }

    
    private void BindLowStock()
    {
        int companyId = int.Parse(Session["CompanyId"].ToString());
        var stockList = _db.Inventories.Where(m=>m.CompanyId==companyId && m.Quantity<m.ReorderLevel).ToList();
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
        int companyId = int.Parse(Session["CompanyId"].ToString());
        var stockList = _db.UserRequests.Where(m=>m.CompanyId==companyId && m.Status==1).ToList();
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
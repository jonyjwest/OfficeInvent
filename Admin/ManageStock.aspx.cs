using OfficeInvent.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ManageStock : System.Web.UI.Page
{
    OfficeInvent3Entities _db = new OfficeInvent3Entities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindVendor();
            BindCategory();
        }
    }

    private void BindVendor()
    {
        try
        {
            var vendorList = _db.Vendours.ToList();
            ddlVendor.DataSource = vendorList;
            ddlVendor.DataTextField = "CompanyName";
            ddlVendor.DataValueField = "VendourId";
            ddlVendor.DataBind();
            ddlVendor.Items.Insert(0, new ListItem("--Select Vendor--", "0"));
        }
        catch (Exception ex)
        {

        }
    }
    private void BindCategory()
    {
        try
        {
            var categoryList = _db.Categories.ToList();
            ddlCategory.DataSource = categoryList;
            ddlCategory.DataTextField = "Name";
            ddlCategory.DataValueField = "CategoryId";
            ddlCategory.DataBind();
            ddlCategory.Items.Insert(0, new ListItem("--Select Category--", "0"));
        }
        catch (Exception ex)
        {

        }
    }
    private bool ValidateControl()
    {
        if (string.IsNullOrEmpty(txtName.Value))
        {
            ErrorControl1.ShowError("Name field is required");
            return false;
        }
        else if (int.Parse(ddlCategory.SelectedValue) < 0)
        {
            ErrorControl1.ShowError("Category field is required");
            return false;
        }
        else
        {
            return true;
        }
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {

    }
}
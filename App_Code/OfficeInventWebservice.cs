using OfficeInvent.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

/// <summary>
/// Summary description for OfficeInventWebservice
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class OfficeInventWebservice : System.Web.Services.WebService
{
    OfficeInvent3Entities _db = new OfficeInvent3Entities();
    public class CustomChart
    {
        public string name { get; set; }
        public int x { get; set; }
        public decimal y { get; set; }
        public decimal z { get; set; }
    }




    [WebMethod(EnableSession = true)]
    public object StockByCategoryPie(string duration)
    {
        try
        {
            if (Session["CompanyId"] == null)
            {
                return new
                {

                    Error = "You sessin has expired"

                };

            }
            int companyId = int.Parse(Session["CompanyId"].ToString());
            var customPgharmList = new List<CustomChart>();

            foreach (var categoryObj in _db.Categories)
            {
                var stockList = new List<Stock>();


                if (duration == "month")
                {
                    var monthDate = DateTime.Now.Month;

                    stockList = _db.Stocks.Where(m => m.DateCreated.Month == monthDate && m.CompanyId == companyId && m.CategoryId==categoryObj.CategoryId).ToList();
                }
                else if (duration == "year")
                {
                    var yearDate = DateTime.Now.Year;
                    stockList = _db.Stocks.Where(m => m.DateCreated.Year == yearDate && m.CompanyId == companyId && m.CategoryId == categoryObj.CategoryId).ToList();
                }
                else
                {
                    stockList = _db.Stocks.Where(m => m.CompanyId == companyId && m.CategoryId == categoryObj.CategoryId).ToList();
                }
               
           
                var customStd1 = new CustomChart();
                customStd1.name = categoryObj.Name.ToString();
                customStd1.x = stockList.Count();
                customPgharmList.Add(customStd1);

            }
            var js = new JavaScriptSerializer();
            return new
            {
                catJson = js.Serialize(customPgharmList)
            };
        }

        catch (Exception ex)
        {

            return new
            {

                Error = "An error occurred , Please contact administrator"

            };
        }




    }

    [WebMethod(EnableSession = true)]
    public object GetTopUseItem(string duration)
    {
        try
        {
            if (Session["CompanyId"] == null)
            {
                return new
                {

                    Error = "You sessin has expired"

                };
              
            }
            int companyId = int.Parse(Session["CompanyId"].ToString());
            var reportList = new List<StockHistory>();

            if (duration == "month")
            {
                var monthDate = DateTime.Now.Month;
               
                reportList = _db.StockHistories.OrderByDescending(m => m.Quantity).Where(m => m.DateCreated.Month == monthDate && m.CompanyId==companyId).Take(5).ToList();
            }
            else if(duration=="year")
            {
                var yearDate = DateTime.Now.Year;
                reportList = _db.StockHistories.OrderByDescending(m=>m.Quantity).Where(m => m.DateCreated.Year == yearDate && m.CompanyId == companyId).Take(5).ToList();
            }
            else
            {
                reportList = _db.StockHistories.OrderByDescending(m => m.Quantity).Where(m =>  m.CompanyId == companyId).Take(5).ToList();
            }
            var chartObjList = new List<CustomChart>();
            foreach (var xx in _db.Inventories)
            {

                var reportsData = reportList.Where(m => m.InventoryId==xx.InventoryId).ToList();


                if (reportsData.Any())
                {
                    var chartObj = new CustomChart
                    {
                        name = xx.Stock.Name,
                        z = xx.Quantity

                    };

                    chartObjList.Add(chartObj);
                }



            }

            return new
            {
                ReportList = chartObjList.OrderByDescending(m => m.z).Take(5)

            };

        }
        catch (Exception ex)
        {

            return new
            {

                Error = "An error occurred , Please contact administrator"

            };
        }



    }


}

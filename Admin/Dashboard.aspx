<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
      <style>
         .info-box {
    background: #fff none repeat scroll 0 0;
    border-radius: 2px;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
    display: block;
      padding-top:15px;
    min-height: 80px;
    width: 100%;
}
.info-box small {
    font-size: 14px;
}
.info-box .progress {
    background: rgba(0, 0, 0, 0.2) none repeat scroll 0 0;
    height: 2px;
    margin: 5px -10px;
}
.info-box .progress, .info-box .progress .progress-bar {
    border-radius: 0;
}
.info-box .progress .progress-bar {
    background: #fff none repeat scroll 0 0;
}
.info-box-icon {
    background: rgba(0, 0, 0, 0.2) none repeat scroll 0 0;
    border-radius: 2px 0 0 2px;
    display: block;
    float: left;
    font-size: 45px;
    height: 60px;
    line-height: 60px;
    text-align: center;
    width: 90px;
}
.info-box-icon > img {
    max-width: 100%;
}
.info-box-content {
    margin-left: 90px;
    padding: 5px 10px;
}
.info-box-number {
    display: block;
    font-size: 22px;
    font-weight: bold;
}
.progress-description, .info-box-text {
    display: block;
    font-size: 14px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.info-box-text {
    text-transform: uppercase;
}
.info-box-more {
    display: block;
}
.progress-description {
    margin: 0;
}
.timeline {
    list-style: outside none none;
    margin: 0 0 30px;
    padding: 0;
    position: relative;
}
.visible-lg-block, .visible-lg-inline, .visible-lg-inline-block, .visible-md-block, .visible-md-inline, .visible-md-inline-block, .visible-sm-block, .visible-sm-inline, .visible-sm-inline-block, .visible-xs-block, .visible-xs-inline, .visible-xs-inline-block {
    display: none !important;
}
.bg-yellow, .callout.callout-warning, .alert-warning, .label-warning, .modal-warning .modal-body {
    background-color: #F39C12 !important;
}
.bg-red, .bg-yellow, .bg-aqua, .bg-blue, .bg-light-blue, .bg-green, .bg-navy, .bg-teal, .bg-olive, .bg-lime, .bg-orange, .bg-fuchsia, .bg-purple, .bg-maroon, .bg-black, .bg-red-active, .bg-yellow-active, .bg-aqua-active, .bg-blue-active, .bg-light-blue-active, .bg-green-active, .bg-navy-active, .bg-teal-active, .bg-olive-active, .bg-lime-active, .bg-orange-active, .bg-fuchsia-active, .bg-purple-active, .bg-maroon-active, .bg-black-active, .callout.callout-danger, .callout.callout-warning, .callout.callout-info, .callout.callout-success, .alert-success, .alert-danger, .alert-error, .alert-warning, .alert-info, .label-danger, .label-info, .label-warning, .label-primary, .label-success, .modal-primary .modal-body, .modal-primary .modal-header, .modal-primary .modal-footer, .modal-warning .modal-body, .modal-warning .modal-header, .modal-warning .modal-footer, .modal-info .modal-body, .modal-info .modal-header, .modal-info .modal-footer, .modal-success .modal-body, .modal-success .modal-header, .modal-success .modal-footer, .modal-danger .modal-body, .modal-danger .modal-header, .modal-danger .modal-footer {
    color: #FFF !important;
}
.bg-grey {
    background-color: #ddd;
}
.bg-green, .callout.callout-success, .alert-success, .label-success, .modal-success .modal-body {
    background-color: #7baf42 !important;
}
.bg-red, .bg-yellow, .bg-aqua, .bg-blue, .bg-light-blue, .bg-green, .bg-navy, .bg-teal, .bg-olive, .bg-lime, .bg-orange, .bg-fuchsia, .bg-purple, .bg-maroon, .bg-black, .bg-red-active, .bg-yellow-active, .bg-aqua-active, .bg-blue-active, .bg-light-blue-active, .bg-green-active, .bg-navy-active, .bg-teal-active, .bg-olive-active, .bg-lime-active, .bg-orange-active, .bg-fuchsia-active, .bg-purple-active, .bg-maroon-active, .bg-black-active, .callout.callout-danger, .callout.callout-warning, .callout.callout-info, .callout.callout-success, .alert-success, .alert-danger, .alert-error, .alert-warning, .alert-info, .label-danger, .label-info, .label-warning, .label-primary, .label-success, .modal-primary .modal-body, .modal-primary .modal-header, .modal-primary .modal-footer, .modal-warning .modal-body, .modal-warning .modal-header, .modal-warning .modal-footer, .modal-info .modal-body, .modal-info .modal-header, .modal-info .modal-footer, .modal-success .modal-body, .modal-success .modal-header, .modal-success .modal-footer, .modal-danger .modal-body, .modal-danger .modal-header, .modal-danger .modal-footer {
    color: #FFF !important;
}

.bg-red, .callout.callout-danger, .alert-danger, .alert-error, .label-danger, .modal-danger .modal-body {
    background-color: #DD4B39 !important;
}
.bg-aqua, .callout.callout-info, .alert-info, .label-info, .modal-info .modal-body {
    background-color: #ccc !important;
}
.bg.color {
    background-color:#BDEA74 
}

.fore-color{
    color:rgb(94, 175, 153);
}

.bg-orange {
    background-color:#efa91f
}
.bg-red {
    background-color:#f04b51
}
 .db-box {
        
        padding: 0 8px;
         height: 80px;
        margin: 5px 5px 0 0;
        color: #333;
        background-color: #bfeae0;
        overflow: hidden;
    }
 .db-box .title {
        display: block;
        font-size: 30px;
        margin-top: 24px;
        line-height: normal;
        white-space: nowrap;
    }
    .db-box .sub {
        display: block;
        font-size: 12px;
        line-height: normal;
    }
   .fc{
      color:#00a551
  }
     .box-header.h2{
         color: #00a551 !important;
         text-shadow: none !important;
         padding: 10px 15px 11px !important;
     }
     .box-header-dash{
         background-color:#f7f7f7;
          color:#00a551;
          font-weight:bold;
          padding:8px;
          text-align:center;
          border-radius:2px;
          border:#ccc solid 1px;
     }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    
  <div class="row" >
       <div class="col-md-12">
         <div class="col-md-6">

              <div class="panel panel-default">
                <div class="panel-heading" style="text-align: right; padding:5px 15px;color:#00a551">
                    Select a range: &nbsp;
            <select id="range5" onchange="getChartTopReportedProduct(this.value)" style="border: 1px solid #aaa; margin: 2px 3px 0 0; -webkit-border-radius: 2px; cursor: pointer; width: 100px;" class="tftype2">
                <option value="month">This Month</option>
                <option value="year" selected="selected">This Year</option>
            </select>
                </div>
                <div class="panel-body">
                    <div id="ContainTopUse" style="min-width: 100%; height: 300px; margin: 0 auto"></div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading" style="text-align: right; padding:5px 15px;color:#00a551">
                    Select a range: &nbsp;
            <select id="range4" onchange="GetICategogry(this.value)" style="border: 1px solid #aaa; margin: 2px 3px 0 0; -webkit-border-radius: 2px; cursor: pointer; width: 100px;" class="tftype2">
                <option value="month">This Month</option>
                <option value="year" selected="selected">This Year</option>
            </select>
                </div>
                <div class="panel-body">
                    <div id="ContainerCategory" style="min-width: 100%; height: 300px; margin: 0 auto"></div>
                </div>
            </div>

        </div>
        <div class="col-md-4">
           <div class="box box-primary" style="margin-bottom:15px;">
                    <div  class="box-header-dash">
                        <span class="box-title">Recent Request</span>
                    </div>
                    <div class="box-body" style="border:#ccc solid 1px;height:328px">
                        <asp:GridView ShowHeader="true"
                            ID="GrdItemRequest" BackColor="White"
                            runat="server"
                            GridLines="None" 
                            AutoGenerateColumns="False"
                            AllowPaging="true"
                            PageSize="15"
                            EmptyDataRowStyle-CssClass="alert alert-danger text-center"
                            CssClass="table table-condensed table-hover text-table table-striped">
                            <Columns>
                               
                                <asp:TemplateField HeaderText="From">
                                    <HeaderStyle CssClass="text-left" />
                                    <ItemStyle CssClass="text-left" />
                                    <ItemTemplate>
                                         <%# DataBinder.Eval(Container.DataItem,"AspNetUser.FullName").ToString().ToUpper() %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Quantity">
                                    <HeaderStyle CssClass="text-left" />
                                    <ItemStyle CssClass="text-left" />
                                    <ItemTemplate>
                                     
                                    <%# DataBinder.Eval(Container.DataItem,"Quantity").ToString().ToUpper() %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Quantity">
                                    <HeaderStyle CssClass="text-left" />
                                    <ItemStyle CssClass="text-left" />
                                    <ItemTemplate>
                                 <asp:LinkButton ID="btnEdit" CommandArgument='<%#Eval("UserRequestId") %>'  ClientIDMode="Static" CausesValidation="False"    CssClass="btn btn-xs btn-success" runat="server"><i class="fa fa-edit"></i>Respond</asp:LinkButton> 
                                       </ItemTemplate>
                                     </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                      
                    </div>
                </div>
            

           <div class="box box-primary" >
                    <div  class="box-header-dash">
                        <span class="box-title">Item out of Stock</span>
                    </div>
                    <div class="box-body" style="border:#ccc solid 1px;height:328px">
                          <asp:GridView ShowHeader="false"
                            ID="grdStock" BackColor="White"
                            runat="server"
                            GridLines="None" 
                            AutoGenerateColumns="False"
                            AllowPaging="true"
                            PageSize="15"
                            EmptyDataRowStyle-CssClass="alert alert-danger text-center"
                            CssClass="table table-condensed table-hover text-table table-striped">
                            <Columns>
                               
                                <asp:TemplateField HeaderText="Stock">
                                    <HeaderStyle CssClass="text-left" />
                                    <ItemStyle CssClass="text-left" />
                                    <ItemTemplate>
                                         <%# DataBinder.Eval(Container.DataItem,"Stock.Name").ToString().ToUpper() %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Quantity">
                                    <HeaderStyle CssClass="text-left" />
                                    <ItemStyle CssClass="text-left" />
                                    <ItemTemplate>
                                     <span class="label label-warning">
                                    <%# DataBinder.Eval(Container.DataItem,"Quantity").ToString().ToUpper() %>
                                         </span>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
        </div>
       
        <div class="col-md-2">
            
         
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-outdent fa-3x" style="color:#00a551"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge" id="spnCustomers" runat="server">
                                    <b>
                                        <asp:Label ID="lblStep" runat="server"></asp:Label><asp:Label ID="lblCheckoutItem" Style="font-size: 15px" runat="server">3</asp:Label>
                                    </b>
                                </div>
                               
                            </div>
                        </div>
                    </div>
                    <a href="Wholesaler/ManageRetailers.aspx">
                        <div class="panel-footer" style=" border-top: 1px solid #c3dcba;">
                            <span class="pull-left"> Check out items</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
           

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                 <i class="fa fa-archive fa-3x"  style="color:#00a551" aria-hidden="true"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge" id="spnTOrders" runat="server"><b>3
                                    <asp:Label ID="Label3" runat="server"></asp:Label><asp:Label ID="lblOutofStock" Style="font-size: 11px" runat="server"></asp:Label></b></div>
                               
                            </div>
                        </div>
                    </div>
                    <a href="Wholesaler/Vieworders.aspx">
                        <div class="panel-footer" style=" border-top: 1px solid #c3dbe7;">
                            <span class="pull-left">Out of stock</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
               <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-level-down fa-3x" aria-hidden="true" style="color:#32b85a"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge" id="spnPending" runat="server"><b>3
                                    <asp:Label ID="Label5" runat="server"></asp:Label><asp:Label ID="lblLowStock" Style="font-size: 11px" runat="server"></asp:Label></b></div>
                                
                            </div>
                        </div>
                    </div>
                    <a href="Wholesaler/Vieworders.aspx">
                        <div class="panel-footer" style=" border-top: 1px solid #c3dcba;">
                            <span class="pull-left"> Low stock</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            
           
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-bell-o fa-3x " style="color:red" aria-hidden="true"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge" id="lblPermision" runat="server" style="color: red"><b>2 </b></div>
                              
                            </div>
                        </div>
                    </div>
                    <a href="../Notifications.aspx">
                        <div class="panel-footer" style=" border-top: 1px solid #c3dcba;">
                            <span class="pull-left">Notifications</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
           

        </div>
        </div>

   
    </div>

     <div class="row" >
    <div class="col-md-12">
       
            <div class="panel panel-success" style="margin-top: 20px;">
                <div class="panel-heading" style="text-align: right; padding:5px 15px;">
                    Select a range: &nbsp;
            <select id="range3" onchange="getChartDataRegistration(this.value)" style="border: 1px solid #aaa; margin: 2px 3px 0 0; -webkit-border-radius: 2px; cursor: pointer; width: 100px;" class="tftype2">
                <option value="month">This Month</option>
                <option value="year" selected="selected">This Year</option>

            </select>
                </div>
                <div class="panel-body">
                    <div id="ContainerTopRegistration" style="min-width: 100%; height: 300px; margin: 0 auto"></div>
                </div>
            </div>
        
      
         
       

    </div>

</div>

    <script>
      $(function () {
            getChartTopReportedProduct("year");
        });

        function getChartTopReportedProduct(range) {

            $.ajax(
                {
                    type: "POST",
                    url: "<%: ResolveUrl("~/OfficeInventWebservice.asmx/GetTopUseItem") %>",

                    data: JSON.stringify({ duration: range }),
                    contentType: "application/json; charset=utf-8",
                    async: true,
                    cache: false,
                    success: function (response) {

                        if (response.d.Error != null && response.d.Error != "" && response.d.Error !== "undefined") {

                            return;
                        }

                        renderChartDataTopReportedProduct(response);

                    }
                });

        }

        function renderChartDataTopReportedProduct(response) {
            var reportList = response.d.ReportList;
           
            var options = {
                chart: {
                    type: 'column',

                    renderTo: 'ContainTopUse'
                },
                title: {
                    text: ''
                },
                subtitle: {
                    text: ''
                },
                xAxis: {
                    type:'category',
                    
                    rotation: -45,
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif'
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'No.'
                    }
                },
                legend: {
                    enabled: false
                },
                tooltip: {
                    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                    '<td style="padding:0"><b>{point.y} </b></td></tr>',
                    footerFormat: '</table>',
                    shared: true,
                    useHTML: true
                },
                plotOptions: {
                    column: {
                        pointPadding: 0.2,
                        borderWidth: 0
                    }
                },
                series: [{
                    name: 'Quantity Used',
                    data: [],
                     color: '#78cd51'
              
                   


                }]
            };

            for (var i = 0; i < reportList.length; i++) {
                var f = [];
                f.push(reportList[i].name);
                f.push(reportList[i].z)
                var xx = f;
                options.series[0].data.push(xx);

            }
            //for (var j = 0; j < reportList.length; j++) {
            //    options.series[0].data.push(reportList[j].z);
            //}

            var chart = new Highcharts.Chart(options);

        }


    


    
</script>
 <script>
        $(function () {
            //getChartDataProduct("month");
            //getChartDataBuyer("month");
            //getChartDataRegistration("year");
            GetICategogry("year");
     })

        function GetICategogry(type)
        {
            $.ajax(
              {
                  type: "POST",
                  url: "<%: ResolveUrl("~/OfficeInventWebservice.asmx/StockByCategoryPie") %>",
                  data: JSON.stringify({ type: type }),
                  contentType: "application/json; charset=utf-8",
                  async: true,
                  cache: true,
                  success: function (responsech) {
                      rendercdPieChart(responsech);
                  }
              });
        }

          function rendercdPieChart(responsech) {
              var serObj = responsech.d.catJson;
              $(function () {
                  if (!Highcharts.charts.length) {
                      Highcharts.getOptions().colors = Highcharts.map(Highcharts.getOptions().colors, function (color) {
                          return {
                              radialGradient: {
                                  cx: 0.5,
                                  cy: 0.3,
                                  r: 0.7
                              },
                              stops: [
                                  [0, color],
                                  [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
                              ]
                          };
                      });
                  }
                  var options = {
                      chart: {
                          renderTo: 'ContainerCategory',
                          plotBackgroundColor: null,
                          plotBorderWidth: null,
                          plotShadow: false,
                          type: 'pie'
                      },
                     
                      title: {
                          text: 'Stock by Category'
                      },
                      tooltip: {
                          pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                      },
                      plotOptions: {
                          pie: {
                              allowPointSelect: true,
                              cursor: 'pointer',
                              dataLabels: {
                                  enabled: false,


                              },
                              showInLegend: true
                          }
                      },
                      series: [{
                          type: 'pie',
                          name: 'Category',
                          data: []
                      }]

                  };


                  var obj = jQuery.parseJSON(serObj);

                  $.each(obj, function (index, value) {
                      var data = {};
                      data.name = value["name"].toString()+" ("+value["x"].toString()+")";
                      data.y = parseFloat(value["x"].toString());
                      
                      
                      options.series[0].data.push(data);
                  });
                  var chart = new Highcharts.Chart(options);

              }
            );
          }

    </script>
    
       
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsContentPlaceHolder" runat="server">
 
   
  
 
   
</asp:Content>

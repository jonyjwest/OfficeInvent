<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ManageStock.aspx.cs" Inherits="Admin_ManageStock" %>

<%@ Register src="../ErrorHandler/ErrorControl.ascx" tagname="ErrorControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
   <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <asp:Panel ID="responsePanel" runat="server" Visible="false" CssClass="alert alert-info alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <asp:Literal runat="server" ID="responseLabel"></asp:Literal>
            </asp:Panel>

            <asp:ValidationSummary ID="pageValidationSummary" runat="server" CssClass="errormsg" ShowMessageBox="True" ShowSummary="False" />

                  <div class="box">
                <div class="box-header">
                    <h2><i class="fa fa-list"></i>Create Stock</h2>
                    <div class="box-icon">
                        <a href="#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                    </div>
                </div>
                <div class="box-content">
                               <div class="row">
                                  
                                         
                                          
                 <div class="col-sm-12" runat="server"  id="divForm">
                   <div class="col-md-12">
                                       
                                        <div class="form-horizontal" role="form" runat="server" id="detailView" >
                     
                                            <div class="form-group" runat="server" >
                                   
                                    <div class="col-sm-10 text-center">
                                           <h2><strong>
                                               <asp:Label  runat="server" Text="Add New Stocks"></asp:Label>
                                        </strong>
                                        </h2>
                                           <uc1:ErrorControl ID="ErrorControl1" runat="server" />
                                    </div>
                                    </div> 
                                   <div class="form-group" runat="server" >
                                    <label for="txtDrugs" class="col-sm-3 control-label">Name *</label>
                                    <div class="col-sm-5">
                                        <input id="txtName"  type="text" class="form-control "  runat="server"/>
                                        
                                       
                           
                                    </div>
                                    </div>  
                            <div class="form-group">
                                <label runat="server" id="Label1" class="col-sm-3 control-label" >Category *</label>
                                      <div class="col-sm-5">
                                <asp:DropDownList runat="server" ID="ddlCategory" CssClass="form-control" ></asp:DropDownList>
                                          </div>
                            </div>
                                   <div class="form-group">
                                 <label for="txtDescription" class="col-sm-3 control-label">Description </label>
                                  <div class="col-sm-5">
                                  <asp:TextBox ID="txtDescription" CssClass="form-control " TextMode="MultiLine" runat="server">
                                   </asp:TextBox>
                                
                                   </div>
                                 </div>
                          
                            <div class="form-group">
                                <label runat="server" class="col-sm-3 control-label"  id="lblBank" >Vendor</label>
                                 <div class="col-sm-5">
                                <asp:DropDownList runat="server" ID="ddlVendor" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                                
                                
                             <div class="form-group">
                            <div class="col-sm-8 text-right">
                          <%--<asp:Button ID="btnBack" CommandName="Save" CssClass="btn btn-sm btn-success" runat="server"  Text="<<Back"  CommandArgument="1"/>--%>
                           
                          
                                <asp:Button ID="BtnCancel" CssClass=" btn btn-sm btn-danger" runat="server" Text="Cancel" />
                                 <asp:Button ID="BtnSave" CommandName="Save" CssClass="btn btn-sm btn-success" runat="server"  Text="Add Stock"   CommandArgument="1"/>
                            </div>
                        </div>         
                                
                                       </div>
                                      
                    </div>
                       
                </div>
            </div>
          
</div>
      </div>
      
                                                </div>
       </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptsContentPlaceHolder" Runat="Server">
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ManageCategory.aspx.cs" Inherits="Settings_ManageCategory" %>

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
                    <h2><i class="fa fa-list"></i>Manage Category</h2>
                    <div class="box-icon">
                        <a href="#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                    </div>
                </div>
                <div class="box-content">
                               <div class="row">

                                   
                                          <div class="col-sm-12" runat="server" id="divList">
										
                                               <div class="form-horizontal" role="form" runat="server" id="Div1">
                                              <div class="form-group">
                                                     <div class="col-sm-12 text-right">
                                                  <asp:Button ID="btnAddCategory"  OnClick="btnAddCategory_Click" runat="server" CssClass="btn  btn-sm btn-success" Text="Add New Category" />
                                                         <uc1:ErrorControl ID="ErrorControl1" runat="server" />
                                              </div>
                                              </div>
                                               
                                          
                                           <asp:GridView ID="grdInstitution" ShowHeaderWhenEmpty="true"  EmptyDataRowStyle-CssClass="text-center" EmptyDataText="No record to display" CssClass="table table-condensed table-responsive table-hover table-striped table-bordered medium-font" AutoGenerateColumns="False" runat="server" >
                                                  <Columns>
                                                     
                                                       <asp:TemplateField HeaderText="Sn">
                                                         <ItemTemplate>
                                                             <%# Container.DataItemIndex + 1 %>
                                                         </ItemTemplate>
                                                     </asp:TemplateField>
                                                      
                                                      <asp:BoundField DataField="Name" HeaderText=" Name" />
                                                       
                                                    
                                                        <asp:TemplateField HeaderText="Action" >
                                                        <ItemStyle CssClass="text-center"  />
                                                        <ItemTemplate>
                                                            <table>
                                                                <tr>
                                                                   
                                                                      <td>
                                                                        <asp:LinkButton ID="btnEdit" CommandArgument='<%#Eval("CategoryId") %>'  ClientIDMode="Static" CausesValidation="False"   OnClick="btnEdit_Click" CssClass="btn btn-xs btn-primary" runat="server"><i class="fa fa-edit"></i>Edit</asp:LinkButton> 
                                                                    </td>
                                                                    <td>
                                                            
                                                              <asp:LinkButton ID="btnDelete"  OnClick="btnDelete_Click" CommandArgument='<%#Eval("CategoryId") %>'   OnClientClick="javascript:return confirm('Are you sure you want to delete this student from the list?');" AlternateText="Delete Student" CssClass="btn btn-xs btn-danger" runat="server"><i class="fa fa-trash-o"></i> Delete</asp:LinkButton> 
                          
                                                              </td>
                                                                </tr>
                                                            </table>
                                               
                                                        </ItemTemplate>
                                                      </asp:TemplateField>
                                                     
                                                  </Columns>
                                              </asp:GridView>
                                           </div>
                                               </div> 
                                          
                 <div class="col-sm-12" runat="server" visible="false" id="divForm">
                   <div class="col-md-12">
                                       <uc1:ErrorControl ID="ErrorControl2" runat="server" />
                                      
                                        <div class="form-horizontal" role="form" runat="server" id="detailView" >
                     
                                            <div class="form-group" runat="server" >
                                   
                                    <div class="col-sm-10 text-center">
                                           <h2><strong>
                                               <asp:Label ID="lblInstitution" runat="server" Text="Add New Category"></asp:Label>
                                        </strong>
                                        </h2>
                                    </div>
                                    </div> 
                               
                                
                           
                       <div class="form-group">
                            <label for="txtName" class="col-sm-3 control-label">Name</label>
                            <div class="col-sm-5">
                                 <asp:TextBox ID="txtName" CssClass="form-control "  runat="server">
                                   </asp:TextBox>
                                
                            </div>
                        </div>
                          
                           

                             <div class="form-group">
                            <div class="col-sm-8 text-right">
                          <asp:Button ID="btnBack" CommandName="Save" CssClass="btn btn-sm btn-success" runat="server"  Text="<<Back" OnClick="btnBack_Click" CommandArgument="1"/>
                           
                          
                                <asp:Button ID="BtnCancel" CssClass=" btn btn-sm btn-danger" runat="server" Text="Cancel" OnClick="BtnCancel_Click"/>
                                 <asp:Button ID="BtnSave" CommandName="Save" CssClass="btn btn-sm btn-success" runat="server"  Text="Add Institution"  OnClick="BtnSave_Click" CommandArgument="1"/>
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


<%@ Page Title="Register" Language="C#" MasterPageFile="~/Register.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<%@ Register src="../ErrorHandler/ErrorControl.ascx" tagname="ErrorControl" tagprefix="uc1" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
 


<div class="row">
    <div class="col-lg-12 col-offset-6 col-centered">
   <%-- <uc1:ErrorDisplay ID="ErrorDisplay1" runat="server" />--%>
   <div class="col-lg-9" >
      <uc1:ErrorControl ID="ErrorControl1" runat="server" />
        <div class="col-lg-6">
                        
                            <div class="form-group">
                                <label runat="server">Full Name*</label>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFullName"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="Full Name field is required." />
                              
                               <asp:TextBox runat="server" ID="txtFullName" CssClass="form-control" />
                             

                            </div>
                             <div class="form-group">
                                <label runat="server">Email</label>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email address" CssClass="text-danger" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                             <div class="form-group">
                                <label runat="server">Password</label>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label runat="server">Phone *</label>
                               <input type="number" class="form-control" id="txtPhone" runat="server" required data-format="+234-ddd-ddd-dddd" />


                            </div>
                            <div class="form-group">
                                <label runat="server">Company Name</label>
                                <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                           
         
        </div>
       <div class="col-lg-6">
            <div class="form-group">
                                <label runat="server">Industry</label>
                                <asp:DropDownList ID="ddlIndustry" runat="server" CssClass="form-control" >
                                   
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label runat="server">Company Size</label>
                               <asp:DropDownList ID="ddlCompSizes" runat="server" CssClass="form-control"  >
                                    <asp:ListItem Value="1">Self Employed</asp:ListItem>
                                    <asp:ListItem Value="2">1-10</asp:ListItem>
                                    <asp:ListItem Value="3">11-50 </asp:ListItem>
                                    <asp:ListItem Value="4">51-200</asp:ListItem>
                                   <asp:ListItem Value="5">201-500</asp:ListItem>
                                    <asp:ListItem Value="6">501-1000 </asp:ListItem>
                                    <asp:ListItem Value="7">1000+</asp:ListItem>
                                   
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label runat="server">Pain point you're looking to solve</label>
                                 <asp:TextBox ID="txtProblemtosolve" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label runat="server">How did you hear about us?</label>
                                <asp:DropDownList ID="ddlAdvertSource" runat="server" CssClass="form-control"  >
                                    <asp:ListItem Value="1">Facebook</asp:ListItem>
                                    <asp:ListItem Value="2">Twitter</asp:ListItem>
                                    <asp:ListItem Value="3">Google </asp:ListItem>
                                    <asp:ListItem Value="4">Others</asp:ListItem>
                                   
                                </asp:DropDownList>
                            </div>
           <div class="form-group">
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" CssClass="btn btn-success btn-sm btn-block" OnClick="CreateUser_Click"  />
           </div>


    
       </div>
                       <%--  <div class="col-lg-12" >
                    <div class="col-lg-6">
            
                            </div>
                              <div class="col-lg-6">
                            
            </div>
                        </div>--%>
        
       
                    </div>

        </div>
                  
</div>
 <script type="text/javascript">
     
      function ShowImagePreview(input) {
          if (input.files && input.files[0]) {


              if (!(/\.(gif|GIF|jpg|JPG|jpeg|JPEG|png|PNG|bmp|BMP)$/i).test(input.value)) {

                  if ($.browser.msie) {
                      $('#filImage').replaceWith($('#filImage').clone());
                  } else {
                      $('#filImage').val('');
                  }

                  alert('Invalid Image ');
                  return;
              }


              var reader = new FileReader();
              reader.onload = function (e) {
                  $("#UpLoadedPhoto").show();
                  $("#lblLogo").hide();
                  
                  $("#UpLoadedPhoto").attr('src', e.target.result);


              };

              reader.readAsDataURL(input.files[0]);
          }
      }

    </script>


              
             
</asp:Content>


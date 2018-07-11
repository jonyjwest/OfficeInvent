<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" Async="true" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        
        <div class="row"><br /><br />
            <div class="col-md-9 col-md-offset-2" style="">
                
                <div class="col-md-6" style="border-right:1px solid #e3caca;">
                <div class="login-panel panel panel-default" style="margin: 10% 0;">
                    <div class="panel-heading">
                        <h3 class="panel-title">Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <h4>Use a local account to log in.</h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                        <div role="form">
                            <fieldset>
                                <div class="form-group">                                   
        <asp:TextBox ID="Email" runat="server" CssClass="form-control" placeholder="E-mail or phone number" name="email"  autofocus="autofocus"></asp:TextBox>
                                </div>
                                <div class="form-group">
            
                                    
            <asp:TextBox ID="Password" runat="server" CssClass="form-control" placeholder="Password" name="password" type="password"></asp:TextBox>
                                </div>
                                <div class="checkbox">
                                    <label>

                                        <input name="remember" id="RememberMe" runat="server" type="checkbox" value="Remember Me"/>Remember Me
                                    </label>
                                  </div>
                                
                              
                                
                                <asp:Button CssClass="btn btn-lg btn-success btn-block" runat="server" ID="btnSubmit" Text="Sign in" OnClick="LogIn" />
                            </fieldset>
                        </div>
                    </div>
                </div>
</div>
                <div class="col-md-5">
               
                    <div class="well well-lg" style="margin-top: 20%;background:#f5f5f5;);border:1px solid rgba(72, 170, 176, 0.14)">
                       <h2 class="page-header" style="text-align:center;">New to OfficeInvent3? <%--<asp:LinkButton ID="lkbwhole" runat="server" OnClick="lkbwhole_Click">wholesell</asp:LinkButton>--%></h2>
                        
          <h3 style="text-align:center;">
                Sign Up Now
          </h3>
                        <h4>  &nbsp; </h4>
            <asp:Button ID="btn_sign_up"  PostBackUrl="~/Account/Register.aspx" CssClass="btn btn-info btn-lg btn-block" runat="server" Text=" Sign Up" ></asp:Button><br />
                        
           
                        
                    </div>
               
</div>

            </div>
</div>
        </div>
        
</asp:Content>


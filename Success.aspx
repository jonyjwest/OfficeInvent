<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Success.aspx.cs" Inherits="Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Candal|Alegreya+Sans">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/imagehover.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
   

  
   
  

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  

</head>
<body>
   <form id="form1" runat="server">
        <div class="carousel slide carousel-fade" data-ride="carousel">

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                </div>
                <div class="item">
                </div>

            </div>
        </div>
       <div id="wrapper">

        <!-- Navigation -->
       <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.aspx">Office<span>Invent3</span></a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                   
                    
                </ul>
            </div>
        </div>
    </nav>
            <section id="contact" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="header-section text-center">
        <div id="page-wrapper" style="margin-left:0;background-color:transparent">
        <div class="container">
             <div class="col-lg-12">
        
                  
                <div  style="margin-top:10px; width: 50% ;
  margin-left: auto ;
  margin-right: auto ;">
                    
                    <div class="panel-body text-center">
                        
                      <h1 style="color:forestgreen">Success</h1>
                        <div> <img src="assets/img/check-true.jpg" /></div>
                        <div>

                           
                     <h2> Dear <asp:Label ID="lblName" runat="server" ></asp:Label>,</h2>
                       <p style="font-size:17px">
                             Thank you for registering as a <asp:Label ID="lblRegType" runat="server" ></asp:Label> on OfficeInvent3.We have sent a welcome email to <span style="font-weight:bold>"<asp:Label ID="lblEmail" runat="server" ></asp:Label>"</span> .
                       </p>
                    
                    </div>

                        <div  style="width: 20% ;margin-left: auto ;margin-right: auto ; margin-top:30px">
                             <asp:Button ID="btnLogin" runat="server" Text="Log in" CssClass="btn btn-success btn-sm btn-block" OnClick="btnLogin_Click"  />
                        </div>
                        </div>
                </div>
                </div>
         
            
    <div class="clearfix"></div>
    <%--<footer class="hidden-sm hidden-xs">
        <p style="text-align:center;">&copy; <%: DateTime.Now.Year %> All Rights Reserved -<strong> PROCURI</strong>.NG</p>
    </footer>--%>
        </div>
         <!-- /.row -->
        </div>
             </div>
                </div>
            </div>
                </section>
            <footer>
                <p style="text-align:center;" >&copy; <%: DateTime.Now.Year %> All Rights Reserved -<strong> eMedrep Nigeria Limited</strong></p>
            </footer>
        <!-- /#page-wrapper -->
           

    </div>
    <!-- /#wrapper -->

        
        
        
        
        
        <!-- jQuery -->
    <script src="bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>
    </form>
</body>
</html>

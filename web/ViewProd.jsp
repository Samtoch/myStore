<%-- 
    Document   : ViewProd
    Created on : Feb 11, 2017, 9:07:57 PM
    Author     : samuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="style/Images/faviconsSIcon.ico">

        <title>eStore Products</title>

        <link href="style/css/bootstrap.min.css" type="text/css" rel="stylesheet">
        <link href="style/css/simple-sidebar.css" type="text/css" rel="stylesheet"/>
        
        <script src="style/js/jquery-1.10.2.min.js"></script>
        <link href="style/css/jquery-ui.css" type="text/css" rel="stylesheet"/>
        
        <link href="style/css/dataTables.bootstrap.min.css" type="text/css" rel="stylesheet">
        <script src="style/js/jquery.js"></script>
        <script src="style/js/bootstrap.min.js"></script>
        <script src="style/js/jquery.dataTables.min.js"></script>
        <script src="style/js/dataTables.bootstrap.min.js"></script>

    </head>

    <body>
        <%@ page import="java.sql.*" %>
        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp" style="color: green"> <span> <img alt="mylogo" src="style/Images/Firefox-logo.svg.png" height="30"/> </span>eStore</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"> <a href="index.jsp" style="color: green">Home</a> </li>
                        <li> <a href="#" style="color: green" >About</a> </li>
                        <li data-toggle="popover" id="popContact"><a href="#" data-toggle="modal" data-target="#ContactUs" style="color: green">Contact Us <b style="color: white"></b></a> </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: green">Services<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-header">General</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Refueling</a></li>
                                <li><a href="#">Loaning</a></li>
                                <li><a href="#">Outsourcing</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Others</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">High Purchase</a></li>
                                <li><a href="#">Savings</a></li>
                                <li><a href="#">Ask us</a></li>
                            </ul>
                        </li>
                                                                    
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: green"><b style="color: white"><b class="glyphicon glyphicon-user" style="color: white"></b>( ${sessionScope.USERNAME} )<b class="caret"></b> </b></a> 
                            <ul class="dropdown-menu">
                                <li> <a href="index.jsp" style="color: red">Sign Out &nbsp; <b class="glyphicon glyphicon-lock"></b></a></li>
                                <li><a href="#" style="color: green">Check Our Promos</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <br><br>
        
<form method="POST" action="ProductMaint">
        <div id="wrapper">

            <!-- Sidebar -->
            <div id="sidebar-wrapper" style="background-color: #e1e1e8">
                <ul class="sidebar-nav">
                    <li class="sidebar-brand">
                        <a href="Home.jsp" style="background-color: green">
                            Dash Board
                        </a>
                    </li>
                    <li>
                        <a href="ProdMaint.jsp" style="background-color: #e1e1e8">Create Product</a>
                    </li>
                    <li>
                        <a href="EditProd.jsp" style="background-color: #e1e1e8" >Edit Product</a>
                    </li>
                    <li>
                        <a href="ViewProducts" style="background-color: #e1e1e8" >View Products</a>
                    </li>
                    <li>
                        <a href="CreateItem.jsp" style="background-color: #e1e1e8">Create Item</a>
                    </li>
                    <li>
                        <a href="ViewItems" style="background-color: #e1e1e8">View Items</a>
                    </li>
                    <li>
                        <a href="EditItems.jsp" style="background-color: #e1e1e8">Edit Items</a>
                    </li>
                    <li>
                        <a href="DailySales" style="background-color: #e1e1e8">Manage Sales</a>
                    </li>
                    <li>
                        <a href="ManageUser.jsp" style="background-color: #e1e1e8">Manage Users</a>
                    </li>
                    <li>
                        <a href="ManageReports.jsp" style="background-color: #e1e1e8">Manage Reports</a>
                    </li>
                </ul>
            </div>
            <!-- /#sidebar-wrapper -->

        <div class="container">
        <!--<div class="container">-->
        <h1>View Items</h1>
        <hr />
        
            <table class="table table-striped table-bordered table-hover" id="itemTable">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Product Description:</th>
                        <th>Product Code</th>
                        <th>Manufacturer</th>
                        <th>Record Status</th>
                        <th>Expiry Date</th>
                        <th>User Created</th>
                        <th>Date Created</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>Product</th>
                        <th>Product Description:</th>
                        <th>Product Code</th>
                        <th>Manufacturer</th>
                        <th>Record Status</th>
                        <th>Expiry Date</th>
                        <th>User Created</th>
                        <th>Date Created</th>
                    </tr>
                </tfoot>
                <tbody>
                    <c:forEach items="${ViewProducts}" var="p">
                    <tr>
                    <td> <a href="EditProd?prodCode=${p.prodCode}">${p.prodCode}</a></td>
                    <td>${p.prodGroup}</td>
                    <td>${p.prodDesc}</td>
                    <td>${p.prodCode}</td>
                    <td>${p.recordStat}</td>
                    <td>${p.prodGroupNo}</td>
                    <td>${p.dateCreated}</td>
                    <td>${p.userCreated}</td>                 
                </tr>
                </c:forEach>                    
                </tbody>
            </table>          
            
        <script>
            $("#itemTable").dataTable();
        </script>
      
        <!--Delet-->
        </div>
            
        </div>           
    
        <!-- Contact Us Bootstrap Modal -->
        <div id="ContactUs" class="modal fade">
        <div class="modal-dialog" style="position: absolute; top: 6%; right: 8%; bottom: 0; left: 0; z-index: 10040; overflow: auto; overflow-y: auto;">
            <div class="modal-content">
                <div class="modal-header" style="background-color:black; color:green">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h1 class="modal-title" style="text-align:center; font-family:'Monotype Corsiva'">Please Write Us Here</h1>
                </div>
                <div class="modal-body" role="form">
                        <div class="form-group">
                            <label for="recipient-name" class="control-label">Email:</label>
                            <textarea ID="TextBox1" class="form-control" style="height:40px"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="message-text" class="control-label">Message:</label>
                            <textarea class="form-control" id="message-text" style="height:150px"></textarea>
                        </div>
                </div>
                <div class="modal-footer" style="background-color:#069221">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary">Send</button>
                </div>
            </div>
        </div>
    </div>
    
<!--my modal dialog box for sign In-->
<div class="modal fade" id="signIn-modal" tabindex="-1"  aria-labelledby="modallabel" role="dialog">
 <div class="modal-dialog" style="position: absolute; top: 6%; right: 8%; bottom: 0; left: 0; z-index: 10040; overflow: auto; overflow-y: auto;">
     <div class="modal-content">
         <div class="form-horizontal">
             <div class="modal-header" style="background-color:black">
                 <div class="well">
                 <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><b class="glyphicon glyphicon-remove-circle"></b></button>
                 <h3 class="modal-title" id="modallabel">Sign In</h3>
                 </div>
             </div>
             <div class="modal-body">
                 <div class="form-group">
                     <label for="username" class="col-lg-3 control-label">Username:</label>
                     <div class="col-lg-6">
                         <input ID="txtUsername" type="email" name="txtLoginUsername" class="form-control" placeholder="Username">
                     </div>
                 </div>
                <div class="form-group">
                    <label for="password" class="col-lg-3 control-label">Password:</label>
                    <div class="col-lg-6">
                        <input type="password" name="txtLoginPassword" class="form-control" placeholder="Password">
                    </div>
                </div>
                 
             </div>
             <div class="modal-footer" style="background-color: green">
                 <div class="well" style="background-color: white">
                    <a href="#" class="btn btn-danger" data-dismiss="modal">close</a>
                    <input type="submit" name="submitSignIn" value="Log In" class="btn btn-primary" data-loading-text="loader">
                    
                    &nbsp; Not Registered Yet? &nbsp; <a href="#" data-toggle="modal" data-target="#signup-modal">Sign Up</a>
                 </div>
             </div>
         </div>
     </div>
 </div>
</div>
        
<!--my modal dialog box for sign Up-->
<div class="modal fade" id="signup-modal" tabindex="-1"  aria-labelledby="modallabel" role="dialog">
 <div class="modal-dialog" style="position: absolute; top: 6%; right: 8%; bottom: 0; left: 0; z-index: 10040; overflow: auto; overflow-y: auto;">
     <div class="modal-content">
         <div class="form-horizontal">
             <div class="modal-header" style="background-color:black">
                 <div class="well">
                 <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><b class="glyphicon glyphicon-remove-circle"></b></button>
                 <h3 class="modal-title" id="modallabel">Sign Up</h3>
                 </div>
             </div>
             <div class="modal-body">
                 <div class="form-group">
                     <label for="contact-name" class="col-lg-3 control-label">Name:</label>
                     <div class="col-lg-9">
                         <input type="text" name="txtSignUpName" class="form-control" placeholder="Enter Full Name">
                     </div>
                 </div>
                <div class="form-group">
                    <label for="contact-email" class="col-lg-3 control-label">Email:</label>
                    <div class="col-lg-9">
                        <input type="text" name="txtSignUpEmail" class="form-control" placeholder="Eg. samtech@gmail.com">
                    </div>
                </div>
                 <div class="form-group">
                     <label for="contact-password" class="col-lg-3 control-label">Password:</label>
                     <div class="col-lg-9">
                         <input type="password" name="txtSugnUpPassword" class="form-control" placeholder="Enter Password for this">
                         <!--<input type="password" class="form-control" id="contact-password" placeholder="Create a Password">-->
                     </div>
                 </div>
                 <div class="form-group">
                     <label for="contact-password" class="col-lg-3 control-label">Password:</label>
                     <div class="col-lg-9">
                         <input type="text" name="txtSugnUpPassConf" class="form-control" placeholder="Confirm Password">
                         <!--<input type="password" class="form-control" id="contact-password" placeholder="Create a Password">-->
                     </div>
                 </div>
                 
                 
                 <div class="form-group">
                     <label for="contact-number" class="col-lg-3 control-label">Contact Number:</label>
                     <div class="col-lg-9">
                         <input type="text" name="txtPhoneNo" class="form-control" placeholder="Eg. +233261713017">
                     </div>
                 </div>

             </div>
             <div class="modal-footer" style="background-color: green">
                 <div class="well" style="background-color: white">
                    <a href="#" class="btn btn-danger" data-dismiss="modal">close</a>
                    <input type="submit" value="Sign Up" name="submitSignUp" class="btn btn-primary" data-loading-text="loader">
                 </div>
             </div>
         </div>
     </div>
 </div>
</div>

</form>
    
<!--my modal dialog box for pictures-->
<div class="modal fade" id="pic-modal" tabindex="-1"  aria-labelledby="picturemodallabel" role="dialog">
   <!--<div class="modal-dialog" style="position: absolute; top: 6%; right: 8%; bottom: 0; left: 0; z-index: 10040; overflow: auto; overflow-y: auto;">-->
   <div class="modal-dialog modal-lg" style="top: 6%">
       <div class="modal-content">
           <div class="modal-header" style="background-color:black">
               <button type="button" class="close" data-dismiss="modal"><b class="glyphicon glyphicon-remove-circle"></b></button>
           </div>
           <div class="modal-body">
               <div class="row">
                   <div class="col-xs-3">
                       <img src="style/Images/Shoes3.jpeg" class="img-thumbnail">
                   </div>
                   <div class="col-xs-3">
                       <img src="style/Images/Shoes2.jpeg" class="img-thumbnail">
                   </div>
                   <div class="col-xs-3">
                       <img src="style/Images/Shoes.jpeg" class="img-thumbnail">
                   </div>
                   <div class="col-xs-3">
                       <img src="style/Images/Shoes4.jpeg" class="img-responsive">
                   </div>
               </div>            
               
           </div>
           <div class="modal-footer" style="background-color:#069221">
               <!--<div class="well">
                  <p class="pull-right text-info"> Fullscreen Mode</p>
               </div>-->
           </div>
       </div>
   </div>
</div>

<!--my modal dialog box for pictures-->
<div class="modal fade" id="advert-modal" tabindex="-1"  aria-labelledby="picturemodallabel" role="dialog">
   <div class="modal-dialog modal-lg">
       <div class="modal-content">
           <div class="modal-header" style="background-color:black">
               <button type="button" class="close" data-dismiss="modal"><b class="glyphicon glyphicon-remove-circle"></b></button>
           </div>
           <div class="modal-body">
               <img src="style/Images/computer-repair-banner.png" class="img-responsive">
           </div>
           <div class="modal-footer" style="background-color:#069221">
               <!--<div class="well">
                  <p class="pull-right text-info"> Fullscreen Mode</p>
               </div>-->
           </div>
       </div>
   </div>
</div>


<!--my modal dialog box for Laptop pictures-->
<div class="modal fade" id="lapi-modal" tabindex="-1"  aria-labelledby="picturemodallabel" role="dialog">
   <!--<div class="modal-dialog" style="position: absolute; top: 6%; right: 8%; bottom: 0; left: 0; z-index: 10040; overflow: auto; overflow-y: auto;">-->
   <div class="modal-dialog modal-lg" style="top: 6%">
       <div class="modal-content">
           <div class="modal-header" style="background-color:black">
               <button type="button" class="close" data-dismiss="modal"><b class="glyphicon glyphicon-remove-circle"></b></button>
           </div>
           <div class="modal-body">
               <div class="row">
                   <div class="col-xs-3">
                       <img src="style/Images/Lapi1.jpeg" class="img-thumbnail">
                   </div>
                   <div class="col-xs-3">
                       <img src="style/Images/Lapi2.jpeg" class="img-thumbnail">
                   </div>
                   <div class="col-xs-3">
                       <img src="style/Images/Lapi3.jpeg" class="img-thumbnail">
                   </div>
                   <div class="col-xs-3">
                       <img src="style/Images/Laptop-Sales.jpg" class="img-responsive">
                   </div>
               </div> 
               <div class="row">
                   <div class="col-xs-3">
                       <img src="style/Images/Apple1.jpeg" class="img-thumbnail">
                   </div>
                   <div class="col-xs-3">
                       <img src="style/Images/Apple2.jpeg" class="img-thumbnail">
                   </div>
                   <div class="col-xs-3">
                       <img src="style/Images/Apple3.jpeg" class="img-thumbnail">
                   </div>
                   <div class="col-xs-3">
                       <img src="style/Images/Apple4.jpeg" class="img-responsive">
                   </div>
               </div> 
               
           </div>
           <div class="modal-footer" style="background-color:#069221">
               <!--<div class="well">
                  <p class="pull-right text-info"> Fullscreen Mode</p>
               </div>-->
           </div>
       </div>
   </div>
</div>
        
    
    </body>
</html>
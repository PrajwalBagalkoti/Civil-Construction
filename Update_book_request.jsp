<%@page  import="java.sql.*"%>
<%
Connection con;
Statement stmt;
String rs=request.getParameter("num");

try
{
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cost_estimation","root","");
    stmt=con.createStatement();
 
    ResultSet sr=stmt.executeQuery("select * from book_request where house_id='"+rs+"'");
    if(sr.next())
    {

    %>




<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Builderz - Construction Company Website Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Construction Company Website Template" name="keywords">
        <meta content="Construction Company Website Template" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet"> 
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
        <link href="lib/slick/slick.css" rel="stylesheet">
        <link href="lib/slick/slick-theme.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <style>
            body{
                background-image: url('/img/bg.jpg');
            }
        </style>
    </head>
<body>
    <div class="wrapper">
        <!-- Top Bar Start -->
        <div class="top-bar">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-lg-4 col-md-12">
                        <div class="logo">
                            <a href="index.html">
                                <h1>civil</h1>
                                <!-- <img src="img/logo.jpg" alt="Logo"> -->
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-7 d-none d-lg-block">
                        <div class="row">
                            <div class="col-4">
                                <div class="top-bar-item">
                                    <div class="top-bar-icon">
                                        <i class="flaticon-calendar"></i>
                                    </div>
                                    <div class="top-bar-text">
                                        <h3>Opening Hour</h3>
                                        <p>Mon - Fri, 8:00 - 9:00</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="top-bar-item">
                                    <div class="top-bar-icon">
                                        <i class="flaticon-call"></i>
                                    </div>
                                    <div class="top-bar-text">
                                        <h3>Call Us</h3>
                                        <p>+91 8978987890</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="top-bar-item">
                                    <div class="top-bar-icon">
                                        <i class="flaticon-send-mail"></i>
                                    </div>
                                    <div class="top-bar-text">
                                        <h3>Email Us</h3>
                                        <p>info@admin.com</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Top Bar End -->

        <!-- Nav Bar Start -->
        <div class="nav-bar">
            <div class="container-fluid">
                <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
                    <a href="#" class="navbar-brand">MENU</a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto">
                            <a href="index.html" class="nav-item nav-link">Home</a>
                            <a href="about.html" class="nav-item nav-link">About</a>
                            
                            </div>
                            <a href="contact.html" class="nav-item nav-link">Contact</a>
                        </div>
                       
                    </div>
                </nav>
            </div>
        </div>
    </div>
        <br>
        <!-- Nav Bar End -->
       <br>
       <br>
       <br>
       <br>
<div>
    
    <center>
        <h1>BOOK REQUEST DETAILS</h1>
        <br>
        <br>
    <div class="col-md-4">
        <div class="contact-form">
            <div id="success"></div>
            <form action="update_book_request2.jsp" method="post">
                <div class="control-group">
                    <input type="text" class="form-control" id="name" name="t1" value="<%=sr.getString(1) %>" placeholder="house_id" required="required" data-validation-required-message="Please enter your name" />
                    <p class="help-block text-danger"></p>
                </div>
                <div class="control-group">
                    <input type="text" class="form-control" id="name" name="t2" value="<%=sr.getString(2) %>" placeholder="cost" required="required" data-validation-required-message="Please enter your name" />
                    <p class="help-block text-danger"></p>
                </div>
                 <div class="control-group">
                    <input type="text" class="form-control" id="name" name="t3"value="<%=sr.getString(3) %>" placeholder="user_id" required="required" data-validation-required-message="Please enter your name" />
                    <p class="help-block text-danger"></p>
                </div> 
                <div class="control-group">
                    <input type="date" class="form-control" id="name" name="t4"value="<%=sr.getString(4) %>" placeholder="book_date1" required="required" data-validation-required-message="Please enter your name" />
                    <p class="help-block text-danger"></p>
                </div>
                <div class="control-group">
                    <input type="text" class="form-control" id="name" name="t5"value="<%=sr.getString(5) %>" placeholder="booking_status" required="required" data-validation-required-message="Please enter your name" />
                    <p class="help-block text-danger"></p>
                </div>
                <div class="control-group">
                    <input type="text" class="form-control" id="name" name="t6" value="<%=sr.getString(6) %>"placeholder="sale_status" required="required" data-validation-required-message="Please enter your name" />
                    <p class="help-block text-danger"></p>
                </div>
                <div class="control-group">
                    <input type="text" class="form-control" id="name" name="t7" value="<%=sr.getString(7) %>"placeholder="contractor" required="required" data-validation-required-message="Please enter your name" />
                    <p class="help-block text-danger"></p>
                </div>
                <div>
                    <button class="sybmit" type="submit" id="sendMessageButton">Submit</button>
                </div>
            </form>
        </div>
    </div>
    </div>
    </div>
    </div></div></center>
   

    <div class="footer wow fadeIn" data-wow-delay="0.3s">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-3">
                    <div class="footer-contact">
                        <h2>Office Contact</h2>
                        <p><i class="fa fa-map-marker-alt"></i>123 Street, vidyanagr, Hubli</p>
                        <p><i class="fa fa-phone-alt"></i>+91 9890767890</p>
                        <p><i class="fa fa-envelope"></i>info@admin.com</p>
                        <div class="footer-social">
                            <a href=""><i class="fab fa-twitter"></i></a>
                            <a href=""><i class="fab fa-facebook-f"></i></a>
                            <a href=""><i class="fab fa-youtube"></i></a>
                            <a href=""><i class="fab fa-instagram"></i></a>
                            <a href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="footer-link">
                        <h2>Services Areas</h2>
                        <a href="">Building Construction</a>
                        <a href="">House Renovation</a>
                        <a href="">Architecture Design</a>
                        <a href="">Interior Design</a>
                        <a href="">Painting</a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="footer-link">
                        <h2>Useful Pages</h2>
                        <a href="">About Us</a>
                        <a href="">Contact Us</a>
                        <a href="">Our Team</a>
                        <a href="">Projects</a>
                        <a href="">Testimonial</a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="newsletter">
                        <h2>Newsletter</h2>
                      
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="container footer-menu">
           
        </div>
        <div class="container copyright">
            <div class="row">
                <div class="col-md-6">
                    
                </div>
              
        </div>
    </div>
    <!-- Footer End -->
</body>
</html>
<%
    }
}
catch(Exception e)
{
    out.println(e);
}
%>
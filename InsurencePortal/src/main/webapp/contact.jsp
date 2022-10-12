<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Contact Us</title>
<link rel="stylesheet"
    href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/contactbg.css">
</head>
<body>
<div class="contactbg">
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">



<section class="contactus">
            <div class="container">
                <div class="contact-content">
      
                    
                        <h2 class="form-title">Contact Us</h2>
                    <form method="post" action="Contact" class="Contact-Us"
                            id="Contact-Us">
                            
                            
                                <div class="form-group">
                                <label for="name"><i
                                    class="zmdi zmdi-account material-icons-name"></i></label> <input
                                    type="text" name="name" id="name" placeholder="Your Name" maxlength="30" required="required" />
                                    <td><span style="color:red">*</span></td>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label> <input
                                    type="email" name="email" id="email" placeholder="Your Email" required="required" />
                                    <td><span style="color:red">*</span></td>
                            </div>
                            <div class="form-group">
                                <label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="number" name="contact" id="contact"
                                    placeholder="Contact no" required="required" />
                                    <td><span style="color:red">*</span></td>
                            </div>
                            <div class="form-group">
                                <label for="message"><i class="zmdi zmdi-email"></i></label> <input
                                    type="message" name="message" id="message" placeholder="Write Your Message Here" maxlength="50" required="required" />
                                    <td><span style="color:red">*</span></td>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="send" id="send"
                                    class="form-send" value="send" />
                            </div>
            </form>
            </br>
            <a href="index.jsp"><button type="submit">Go Back</button></a>            
            </div>
            </div>
        </section>    
        
            
            
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
    
    <script type="text/javascript">




  var status = document.getElementById("status").value;
  if(status == "success"){
      swal("Details Submitted Successfully", "Thank You");
  }        
  </script>                        
</div>
</body>
</html>
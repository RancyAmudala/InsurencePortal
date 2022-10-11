<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" maxlength="30"/>
									<td><span style="color:red">*</span></td>
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" />
									<td><span style="color:red">*</span></td>
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" maxlength="14"/>
									<td><span style="color:red">*</span></td>
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" maxlength="14"/>
									<td><span style="color:red">*</span></td>
							</div>
							
							<div class="form-group">
								<label for="DOB"><i class="zmdi zmdi-email"></i></label> <input
									type="date" name="date" id="date" placeholder="Date Of Birth" min="1981-01-01" />
									<td><span style="color:red">*</span></td>
							</div>
							
							<div class="form-group">
							<label for="address"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="address" id="address"
									placeholder="address" />
							</div>
							<div class="form-group">
								<label for="gender"><i class="zmdi zmdi-gender"></i></label>
								Gender : <input type="radio" name="gender" placeholder="address" />Male
					                     <input type="radio" name="gender" placeholder="address" />Female
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="number" name="contact" id="contact"
									placeholder="Contact no"/>
									<td><span style="color:red">*</span></td>
							</div>
							
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="register-image">
						<figure>
							<img src="images/register-image.jpg" alt="register image">
						</figure>
						<a href="login.jsp" class="register-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">
  var status = document.getElementById("status").value;
  if(status == "success"){
	  swal("Congrats", "Account Created Successfully", "success");
  }
  if(status == "InvalidName"){
	  swal("Sorry", "Please Enter Name", "error");
  }
  if(status == "Invalidemail"){
	  swal("Sorry", "Please Enter Email", "error");
  }
  if(status == "Invalidpwd"){
	  swal("Sorry", "Password do not match", "error");
  } 
  if(status == "InvalidConfirmPassword"){
	  swal("Sorry", "Please enter the password", "error");
  }
  if(status == "Invalidcontact"){
	  swal("Sorry", "Please Enter Name", "error");
  }
  if(status == "InvalidMobileLength"){
	  swal("Sorry", "Mobile Number should be of 10 digits", "error");
  }
</script>



</body>
</html>
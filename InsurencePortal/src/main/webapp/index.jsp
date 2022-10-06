<%
   if(session.getAttribute("name")==null){
	   response.sendRedirect("login.jsp");
   }
%>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Platinum Life</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />

<link href="css/index-styles.css" rel="stylesheet" />

<link href="css/table.css" rel="stylesheet"/>

</head>
<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">Insurance</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#products">Products</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">About</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Contact</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout">Logout</a></li>
						<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout"><%=session.getAttribute("name") %></a></li>
					
				</ul>
			</div>
		</div>
	</nav>
<%@include file="slider.jsp"%>
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">Welcome To Platinum Life</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
		</div>
	</header>
	<!-- products Section-->
	<section class="page-section products" id="products">
		<div class="container">
			<!-- products Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Products</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Products Grid Items-->
			<div class="row justify-content-center">
				<!-- Products Item 1-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="products-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#productsModal1">
						<div
							class="products-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="products-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/products/p1.png"
							alt="..." />
					</div>
				</div>
				<!-- products Item 2-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="products-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#productsModal2">
						<div
							class="products-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="products-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/products/p2.png"
							alt="..." />
					</div>
				</div>
				<!-- products Item 3-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="products-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#productsModal3">
						<div
							class="products-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="products-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/products/p3.png"
							alt="..." />
					</div>
				</div>
				<!-- products Item 4-->
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
					<div class="products-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#productsModal4">
						<div
							class="products-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="products-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/products/p4.png"
							alt="..." />
					</div>
				</div>
				<!-- products Item 5-->
				<div class="col-md-6 col-lg-4 mb-5 mb-md-0">
					<div class="products-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#productsModal5">
						<div
							class="products-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="products-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/products/p5.png"
							alt="..." />
					</div>
				</div>
				<!-- products Item 6-->
				<div class="col-md-6 col-lg-4">
					<div class="products-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#productsModal6">
						<div
							class="products-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="products-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/products/p6.png"
							alt="..." />
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- About Section-->
	<section class="page-section bg-primary text-white mb-0" id="about">
		<div class="container">
			<!-- About Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-white">About Us</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- About Section Content-->
			<div class="row">
				<div class="col-lg-4 ms-auto">
					<p class="lead">Every day we wake up to the fact that millions of lives
					 are part of our family called Platinum Life and we are committed to offer 
					 services that enable individuals live a 'Life of Pride'.
					 We are humbled by the magnitude of the responsibility we carry and 
					 realize the lives that are associated with us, are very valuable indeed.</p>
				</div>
				<div class="col-lg-4 me-auto">
					<p class="lead">Our long-stated strategy of balanced product mix, 
					diversified distribution, continuous product innovation and
					re-imagining insurance through effective use of technology has 
					enabled us to continue our journey despite the
					ever-changing external environment.</p>
				</div>
			</div>
		</div>
	</section>
	<!-- Contact Section-->
	<section class="page-section" id="contact">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Contact
				Us</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<!-- * * * * * * * * * * * * * * *-->
					<!-- * * SB Forms Contact Form * *-->
					<!-- * * * * * * * * * * * * * * *-->
					<!-- This form is pre-integrated with SB Forms.-->
					<!-- To make this form functional, sign up at-->
					<!-- https://startbootstrap.com/solution/contact-forms-->
					<!-- to get an API token!-->
					<form id="contactForm" data-sb-form-api-token="API_TOKEN">
						<!-- Name input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="name" type="text"
								placeholder="Enter your name..." data-sb-validations="required" />
							<label for="name">Full name</label>
							<div class="invalid-feedback" data-sb-feedback="name:required">A
								name is required.</div>
						</div>
						<!-- Email address input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="email" type="email"
								placeholder="name@example.com"
								data-sb-validations="required,email" /> <label for="email">Email
								address</label>
							<div class="invalid-feedback" data-sb-feedback="email:required">An
								email is required.</div>
							<div class="invalid-feedback" data-sb-feedback="email:email">Email
								is not valid.</div>
						</div>
						<!-- Phone number input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="phone" type="tel"
								placeholder="(123) 456-7890" data-sb-validations="required" />
							<label for="phone">Phone number</label>
							<div class="invalid-feedback" data-sb-feedback="phone:required">A
								phone number is required.</div>
						</div>
						<!-- Message input-->
						<div class="form-floating mb-3">
							<textarea class="form-control" id="message" type="text"
								placeholder="Enter your message here..." style="height: 10rem"
								data-sb-validations="required"></textarea>
							<label for="message">Message</label>
							<div class="invalid-feedback" data-sb-feedback="message:required">A
								message is required.</div>
						</div>
						<!-- Submit success message-->
						<!---->
						<!-- This is what your users will see when the form-->
						<!-- has successfully submitted-->
						<div class="d-none" id="submitSuccessMessage">
							<div class="text-center mb-3">
								<div class="fw-bolder">Form submission successful!</div>
								To activate this form, sign up at <br /> <a
									href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
							</div>
						</div>
						<!-- Submit error message-->
						<!---->
						<!-- This is what your users will see when there is-->
						<!-- an error submitting the form-->
						<div class="d-none" id="submitErrorMessage">
							<div class="text-center text-danger mb-3">Error sending
								message!</div>
						</div>
						<!-- Submit Button-->
						<button class="btn btn-primary btn-xl disabled" id="submitButton"
							type="submit">Send</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">
						Platinum Life Insurance Corporation Of India
                         Central Office
                         'Yogakshema'
                         Jeevan Bima Marg
                         Nariman Point
                      <br /> Mumbai 400021
					</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Around the Web</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-twitter"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-linkedin-in"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-dribbble"></i></a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">About Platinum Life</h4>
					<p class="lead mb-0">
						Every day we wake up to the fact that millions of lives are part of our family called Platinum Life.
						<a href="http://startbootstrap.com">Platinum Life</a>.
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Your Website 2022</small>
		</div>
	</div>
	<!-- products Modals-->
	<!-- products Modal 1-->
	<div class="products-modal modal fade" id="productsModal1"
		tabindex="-1" aria-labelledby="productsModal1" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- products Modal - Title-->
								<h2
									class="products-modal-title text-secondary text-uppercase mb-0">Health Insurance</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- products Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/products/p1.png" alt="..." />
								<!-- products Modal - Text-->
								<h4 class="color-h4">Have you factored in the rising medical costs?</h4>
								<p class="mb-4"><p style="text-align:left">~ Worried about the spiraling health care costs than actual illness?
								<br/>
								~ Feel your savings will drain out if a medical emergency arises?
								<br/>
								~ Thinking about how much Insurance would be enough to handle unexpected large medical expenses?</p>
								<form action="Health.jsp">
                                      <button type="submit">Health Schemes</button>
                                      </form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- products Modal 2-->
	<div class="products-modal modal fade" id="productsModal2"
		tabindex="-1" aria-labelledby="productsModal2" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- products Modal - Title-->
								<h2
									class="products-modal-title text-secondary text-uppercase mb-0">Pension Insurance</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- products Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/products/p2.png" alt="..." />
								<!-- products Modal - Text-->
								<h4 class="color-h4">Have you saved enough to meet your expenses post-retirement?</h4>
								<p class="mb-4"><p style="text-align:left">~ Inflation can eat away your dwindling retirement income easily.
								</br>
								~ With increasing life expectancy, the longer you live, the more you spend.
								</br>
								~ Start preparing early to save enough to support your needs and wants.</p>
									<form action="Pension.jsp">
                                      <button type="submit">Pension Schemes</button>
                                      </form>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- products Modal 3-->
	<div class="products-modal modal fade" id="productsModal3"
		tabindex="-1" aria-labelledby="productsModal3" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- products Modal - Title-->
								<h2
									class="products-modal-title text-secondary text-uppercase mb-0">Savings Plan</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- products Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/products/p3.png" alt="..." />
								<!-- products Modal - Text-->
								<h4 class="color-h4">Disciplined savings to help achieve life goals in an uncertain world</h4>
								<p class="mb-4"><p style="text-align:left">~ Protect your capital invested while you save money
								</br>
								~ Get regular returns on your savings structured as per your need
								</br>
								~ Make no compromise on an important life goal for yourself or family</p>
									<form action="life.jsp">
                                      <button type="submit">Life Schemes</button>
                                      </form>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- products Modal 4-->
	<div class="products-modal modal fade" id="productsModal4"
		tabindex="-1" aria-labelledby="productsModal4" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- products Modal - Title-->
								<h2
									class="products-modal-title text-secondary text-uppercase mb-0">Vehicle Insurance</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- products Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/products/p4.png" alt="..." />
								<!-- products Modal - Text-->
								<h4 class="color-h4">Go the extra mile to protect your automotive assets with vehicle insurance</h4>
								<p class="mb-4"><p style="text-align:left">~ From cars, bus, trucks, bikes or any other vehicle running 
								on the road, all are covered against own damages arising out of accidents, thefts, natural disasters, 
								as well as the damages to a third party person/property.
								</br>
								~ So, no matter what your ride may be, the vehicle insurance from PLI covers it all.
								</br>
								~ Thus, before you gear up for your next ride, secure your vehicle  vehicle insurance 
								policy and ensure peace of mind for yourself, all at an affordable price!</p>
									<form action="vehicle.jsp">
                                      <button type="submit">Vehicle Schemes</button>
                                      </form>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- products Modal 5-->
	<div class="products-modal modal fade" id="productsModal5"
		tabindex="-1" aria-labelledby="productsModal5" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- products Modal - Title-->
								<h2
									class="products-modal-title text-secondary text-uppercase mb-0">Home Insurance</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- products Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/products/p5.png" alt="..." />
								<!-- products Modal - Text-->
								<h4 class="color-h4">Home Insurance Plans For Everybody</h4>
								<p class="mb-4"><p style="text-align:left">~ For the Happy Tenants - 
								Who take care of a house like their own
								</br>
								~ For Proud Home Owners - Who have invested in a dream 
								</br>
								~Safeguard your home's structure and content against 
								unwanted events like theft, fire, natural calamities 
								(storm, cyclones, etc.) or man-made activities 
								(riots and terrorism).</p>
									<form action="home.jsp">
                                      <button type="submit">Home Schemes</button>
                                      </form>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- products Modal 6-->
	<div class="products-modal modal fade" id="productsModal6"
		tabindex="-1" aria-labelledby="productsModal6" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- products Modal - Title-->
								<h2
									class="products-modal-title text-secondary text-uppercase mb-0">Travel Insurance</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- products Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/products/p6.png" alt="..." />
								<!-- products Modal - Text-->
								<h4 class="color-h4">Don't risk your international trips
								</br>
								Get your Travel Insurance Now
								</h4>
								<p class="mb-4"><p style="text-align:left">~ Travel insurance 
								secures your journey from financial loses that might incur due 
								to any unforeseen events
								</br>
								~ like flight delays, luggage loss, checked-in baggage delays 
								and any other journey-related risks. 
								</br>
								~  It can help you enjoy your journey with peace of mind.</p>
									<form action="travel.jsp">
                                      <button type="submit">Travel Schemes</button>
                                      </form>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>

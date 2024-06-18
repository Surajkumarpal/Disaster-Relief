<%-- 
    Document   : donation.jsp
    Created on : 29-May-2024, 12:36:02 pm
    Author     : Suraj
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- fontawesome cdn -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"
            integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <link rel="shortcut icon" href="image/home/white-icon.png" type="image/png" />

        <!-- Bootstrap cdn -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous"
            />
        <!-- donation css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="navfooter.css">
        <link rel="stylesheet" href="donation.css">

        <title>Donation</title>

        <style>
            .container mb-5 img{
                height:250px
            }
        </style>
    </head>

    <body>
        <!-- navbar -->

        <nav class="navbar navbar-expand-lg sticky-top border-bottom" id="nav_bar">
            <div class="container-fluid px-md-5">
                <a class="navbar-brand" href="#"><img src="image/home/color-logo.png" alt="" height="35px" id="nav_img"/></a>
                <button
                    class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarNav"
                    aria-controls="navbarNav"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <span class="navbar-toggler"><i class="fa-solid fa-bars"></i></span>
                </button>
                <div
                    class="collapse navbar-collapse justify-content-end text-center pe-3"
                    id="navbarNav"
                    >
                    <ul class="navbar-nav">
                        <li class="nav-item" id="nav_a1">
                            <a class="nav-link  " href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item" id="nav_a2">
                            <a class="nav-link active" href="donation.jsp">Donation</a>
                        </li>
                        <li class="nav-item" id="nav_a3">
                            <a class="nav-link " href="dodont/DO-AND-DONT.html">Do's and Don'ts</a>
                        </li>
                        <li class="nav-item" id="nav_a4">
                            <a class="nav-link" href="volunteer.jsp">Volunteer</a>
                        </li>
                        <li class="nav-item" id="nav_a4">
                            <a class="nav-link" href="weather/weather.jsp">Weather</a>
                        </li>
                        <li class="nav-item" id="nav_a5">
                            <a class="nav-link" href="requestHelp.jsp">Request Help</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Service Start -->
        <div class="service">
            <div class="container">
                <div class="section-header text-center">
                    <br>
                    <h2>We believe that we can save more lifes with you</h2>
                    <br><br>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <div class="service-icon">
                                <i class="flaticon-diet"></i>
                            </div>
                            <div class="service-text">
                                <h3>Healthy Food</h3>
                                <p>Nourish futures with every bite. Donate today to provide healthy, nutritious meals to those in need</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <div class="service-icon">
                                <i class="flaticon-water"></i>
                            </div>
                            <div class="service-text">
                                <h3>Pure Water</h3>
                                <p>Clean water changes lives. Your contribution can bring pure, safe drinking water to communities worldwide</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <div class="service-icon">
                                <i class="flaticon-healthcare"></i>
                            </div>
                            <div class="service-text">
                                <h3>Health Care</h3>
                                <p>Access to health care is a human right. Help us provide essential medical services to those who need it most</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <div class="service-icon">
                                <i class="flaticon-education"></i>
                            </div>
                            <div class="service-text">
                                <h3>Primary Education</h3>
                                <p>Education is the foundation of a brighter future. Support our mission to bring primary education to every child</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <div class="service-icon">
                                <i class="flaticon-home"></i>
                            </div>
                            <div class="service-text">
                                <h3>Residence Facilities</h3>
                                <p>Everyone deserves a safe place to call home. Your donation can help build secure and affordable housing for families</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <div class="service-icon">
                                <i class="flaticon-social-care"></i>
                            </div>
                            <div class="service-text">
                                <h3>Social Care</h3>
                                <p>Caring for our community strengthens us all. Join us in supporting social care programs that uplift and empower</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service End -->
        <!--- donation -->


        <div class="container mb-5">
            <div class="row my-3">
                <div class="col text-center">
                    <img src="image/home/love-icon.png" alt="" width="20px" />
                    <p class="m-0">THANK YOU for HELPING PEOPLE</p>
                    <h1>We believe that we can save more lifes with you</h1>
                </div>
            </div>
            <div class="row text-center" id="event">
                <div
                    class="col-md-6 col-lg-4"
                    data-aos="flip-left"
                    data-aos-delay="10"
                    data-aos-duration="1000"
                    data-aos-easing="ease-in-out"
                    data-aos-anchor-placement="top-center"
                    >
                    <a href="qrcode.jsp" style="text-decoration: none; color: black !important;"><div class="card">
                            <span> $10,000 ,Raised of $30,000 </span>
                            <img src="image/donation/img_1.jpg" class="card-img-top" alt="..." />
                            <div class="card-body text-center">
                                <h5>Clean Water In Urban Area</h5>
                                <p class="text-muted">
                                    <small
                                        >Every drop counts. Join us in bringing clean water to urban communities, where the lifeline of health begins with your generosity
                                        <br class="d-none d-md-block" />
                                    </small
                                    >
                                </p>
                              Donate Now
                            </div>
                        </div></a>
                </div>
                <div
                    class="col-md-6 col-lg-4"
                    data-aos="fade-up"
                    data-aos-delay="10"
                    data-aos-duration="1000"
                    data-aos-easing="ease-in-out"
                    data-aos-anchor-placement="top-center"
                    >
                    <a href="qrcode.jsp" style="text-decoration: none; color: black !important;"><div class="card">
                            <span>$10,000 ,Raised of $30,000  </span>
                            <img src="image/donation/img_6.jpg" class="card-img-top" alt="..." />
                            <div class="card-body text-center">
                                <h5>Children Needs Education</h5>
                                <p class="text-muted">
                                    <small
                                        >Empower the future by educating a child today. Your support can transform lives, one book, one classroom at a time
                                        <br class="d-none d-md-block" />
                                    </small
                                    >
                                </p>
                                Donate Now
                            </div>
                        </div></a>
                </div>
                <div
                    class="col-md-6 col-lg-4"
                    data-aos="flip-right"
                    data-aos-delay="10"
                    data-aos-duration="1000"
                    data-aos-easing="ease-in-out"
                    data-aos-anchor-placement="top-center"
                    >
                    <a href="qrcode.jsp" style="text-decoration: none; color: black !important;"><div class="card">
                            <span> $10,000 ,Raised of $30,000 </span>
                            <img src="image/donation/img_3.jpg" class="card-img-top" alt="..." />
                            <div class="card-body text-center">
                                <h5>Need Shelter for Children</h5>
                                <p class="text-muted">
                                    <small
                                        > A safe haven is the first step towards a brighter tomorrow. Help us provide shelters where children can dream, grow, and thrive.
                                        <br class="d-none d-md-block" />
                                    </small
                                    >
                                </p>
                                Donate Now
                            </div>
                        </div></a>
                </div>
            </div>



            <div class="row text-center" id="event">
                <div
                    class="col-md-6 col-lg-4"
                    data-aos="flip-left"
                    data-aos-delay="10"
                    data-aos-duration="1000"
                    data-aos-easing="ease-in-out"
                    data-aos-anchor-placement="top-center"
                    >
                    <a href="qrcode.jsp" style="text-decoration: none; color: black !important;"><div class="card">
                            <span> $10,000 ,Raised of $30,000 </span>
                            <img src="image/donation/img_4.jpg" class="card-img-top" alt="..." />
                            <div class="card-body text-center">
                                <h5>Refugees Needs Food</h5>
                                <p class="text-muted">
                                    <small
                                        >Hope starts with a meal.<br>Stand with us to ensure refugees are
                                        nourished and cared for, offering a lifeline to those in need 
                                    </small>
                                </p>
                                Donate Now
                            </div>
                        </div></a>
                </div>
                <div
                    class="col-md-6 col-lg-4"
                    data-aos="fade-up"
                    data-aos-delay="10"
                    data-aos-duration="1000"
                    data-aos-easing="ease-in-out"
                    data-aos-anchor-placement="top-center"
                    >
                    <a href="qrcode.jsp" style="text-decoration: none; color: black !important;"><div class="card">
                            <span>$10,000 ,Raised of $30,000  </span>
                            <img src="image/donation/img_7.jpg" class="card-img-top" alt="..." />
                            <div class="card-body text-center">
                                <h5>Rural Area Development</h5>
                                <p class="text-muted">
                                    <small
                                        > Ignite change in rural areas. Your donation can build infrastructure, support education, and create opportunities for sustainable growth
                                        <br class="d-none d-md-block" />
                                    </small
                                    >
                                </p>
                               Donate Now
                            </div>
                        </div></a>
                </div>
                <div
                    class="col-md-6 col-lg-4"
                    data-aos="flip-right"
                    data-aos-delay="10"
                    data-aos-duration="1000"
                    data-aos-easing="ease-in-out"
                    data-aos-anchor-placement="top-center"
                    >
                    <a href="qrcode.jsp" style="text-decoration: none; color: black !important;"><div class="card">
                            <span> $10,000 ,Raised of $30,000 </span>
                            <img src="image/donation/img_11.jpg" class="card-img-top" alt="..." />
                            <div class="card-body text-center">
                                <h5>Help for poor Children's</h5>
                                <p class="text-muted">
                                    <small
                                        > Every child deserves a chance. Your kindness can bring smiles, hope, and opportunities to children in need, paving the way for a better future
                                        <br class="d-none d-md-block" />
                                    </small
                                    >
                                </p>
                                Donate Now
                            </div>
                        </div></a>
                </div>



                <!--you can add more donation tupe -->


            </div>


        </div>

    </div>





    <!-- Footer content -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single-box">
                        <img src="image/home/white-logo.png" height="25px" alt="Disaster Relief">
                        <p>Disaster Management System website, your go-to resource for disaster preparedness, response, and recovery. Access real-time updates, essential tools, and expert advice to stay safe and resilient during emergencies.</p>
                    </div>
                </div>

                <div class="col-lg-3 col-sm-6 mx-auto">
                    <div class="single-box">
                        <h2>Pages</h2>
                        <ul>
                            <li><a class="nav-link active " href="index.jsp">Home</a></li>
                            <li><a class="nav-link" href="donation.jsp">Donation</a></li>
                            <li><a class="nav-link " href="dodont/DO-AND-DONT.html">Do's and Don'ts</a></li>
                            <li><a class="nav-link" href="volunteer.jsp">Volunteer</a></li>
                            <li><a class="nav-link" href="weather/weather.jsp">Weather</a></li>
                            <li><a class="nav-link" href="requestHelp.jsp">Request Help</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-box">
                        <h2>Newsletter</h2>
                        <p>Our newsletter provides valuable insights on disaster preparedness, response strategies, and recovery plans. Don't miss out?subscribe today!</p>
                        <p id="thankYouMessage" style="display: none;">Thank you for subscribing!</p>
                        <p id="alreadySubscribedMessage" style="display: none;">You are already subscribed!</p>
                        <p id="emptyEmailMessage" style="display: none;">Please enter an email.</p>
                        <p id="invalidEmailFormatMessage" style="display: none;">Please enter a valid email address.</p>
                        <!--Form-->


                        <h2>Follow us on</h2>
                        <p class="socials">
                                <a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a>
                                <a href="https://www.linkedin.com"><i class="fa fa-linkedin"></i></a>
                                <a href="https://www.instagram.com"> <i class="fa fa-instagram"></i></a>
                                <a href="https://github.com"><i class="fa fa-github"></i></a>
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/js/bootstrap.min.js"></script>


    <script>
        // Call JavaScript function to show thank you message
        showThankYouMessage();
    </script>


</body>
</html>



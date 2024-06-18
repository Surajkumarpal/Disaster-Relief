<%-- 
    Document   : index.jsp
    Created on : 28-May-2024, 2:59:54 pm
    Author     : Suraj
--%>
<link href="home.css" rel="stylesheet" type="text/css"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.io.*" %>

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
        <!-- Bootstrap cdn -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous"
            />
        <!-- aos cdn -->
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
        <!-- link css, media and favicon -->
        <link rel="stylesheet" href="navfooter.css">
        <link rel="stylesheet" href="home.css">
        <link rel="shortcut icon" href="image/home/white-icon.png" type="image/png" />
        <script src="home.js"></script>
        <script src="button.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <title>Disaster Relief</title>
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
                            <a class="nav-link active " href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item" id="nav_a2">
                            <a class="nav-link" href="donation.jsp">Donation</a>
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

        <!-- carousel -->

        <div
            id="carouselExampleCaptions"
            class="carousel slide carousel-fade top_carousel"
            data-bs-ride="carousel"
            >
            <div class="carousel-inner">
                <div
                    class="carousel-item active container-fluid py-md-5"
                    data-bs-interval="4000"
                    >
                    <div class="row g-0">
                        <img src="image/home/photo1.png" alt="" class="img-fluid w-50" />
                        <div
                            class="col-6 d-flex justify-content-center align-items-center anime-2"
                            >
                            <div class="ps-md-5">
                                <h5 class="">
                                    Disaster Relief
                                    <img
                                        src="image/home/love-icon.png"
                                        alt=""
                                        class="m-0"
                                        width="10px"
                                        />
                                </h5>
                                <h1>
                                    We work tirelessly to reduce risks, provide vital support during crises, and help communities rebuild stronger than before.
                                </h1>
                            </div>
                        </div>
                        <div class="col-6 anime-3">
                            <img src="image/home/photo2.png" alt="" class="img-fluid w-100" />
                        </div>
                    </div>
                </div>
                <div
                    class="carousel-item container-fluid py-md-5"
                    data-bs-interval="4000"
                    >
                    <div class="row">
                        <img src="image/home/photo3.png" alt="" class="img-fluid w-50" />
                        <div class="col-6 anime-2">
                            <img src="image/home/photo4.png" alt="" class="img-fluid w-100" />
                        </div>
                        <div
                            class="col-6 d-flex justify-content-center align-items-center anime-3"
                            >
                            <div>
                                <h5 class="">
                                    Disaster Relief
                                    <img
                                        src="image/home/love-icon.png"
                                        alt=""
                                        class="m-0"
                                        width="10px"
                                        />
                                </h5>
                                <h1>
                                    We work tirelessly to reduce risks, provide vital support during crises, and help communities rebuild stronger than before.
                                </h1>
                            </div>
                        </div>
                    </div>
                </div>
                <div
                    class="carousel-item container-fluid py-md-5"
                    data-bs-interval="4000"
                    >
                    <div class="row">
                        <img src="image/home/photo5.png" alt="" class="img-fluid w-50" />
                        <div
                            class="col-6 d-flex justify-content-center align-items-center anime-2"
                            >
                            <div class="ps-md-5">
                                <h5 class="">
                                    Disaster Relief
                                    <img
                                        src="image/home/love-icon.png"
                                        alt=""
                                        class="m-0"
                                        width="10px"
                                        />
                                </h5>
                                <h1>
                                    We work tirelessly to reduce risks, provide vital support during crises, and help communities rebuild stronger than before.
                                </h1>
                            </div>
                        </div>
                        <div class="col-6 anime-3">
                            <img src="image/home/photo6.png" alt="" class="img-fluid w-100" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- welcome -->
        <section
            class="container"
            data-aos="fade-up"
            data-aos-offset="-100"
            data-aos-delay="40"
            data-aos-duration="600"
            data-aos-easing="ease-in-out"
            data-aos-mirror="true"
            data-aos-once="false"
            data-aos-anchor-placement="top-center"
            >
            <div class="row text-center" id="welcome">
                <div class="col-12">
                    <img src="image/home/love-icon.png" alt="" width="30px" />
                    <h1>Welcome to <span> Disaster Management Website</span></h1>
                </div>
                <div class="col-md-8 offset-md-2 my-md-5">
                    <p>
                        Your trusted source for essential information and resources in times of crisis. 
                        <br class="d-none d-md-block" />
                        Together, we can prepare, respond, and recover effectively to ensure safety and resilience.
                    </p>
                    <img src="image/home/photo7.png" alt="" width="250px" />
                    <center>
                        <img
                            src="image/home/photo8.png"
                            alt=""
                            width="50px"
                            class="d-block d-md-none"
                            />
                    </center>
                </div>
            </div>
        </section>

        <!-- what we do  -->

        <section id="t-cards" class="mt-5">
            <div class="container pb-md-5 mb-md-4 mb-3">
                <div class="row">
                    <div class="col-12 text-center mb-5">
                        <h1>
                            What We Do <img src="https://raw.githubusercontent.com/vinayshilpani/An-NGO-Website/master/assets/love-icon.png" alt="" width="15px" />
                        </h1>
                    </div>
                    <div
                        class="col-sm-6 col-md-3"
                        data-aos="zoom-in"
                        data-aos-delay="10"
                        data-aos-duration="600"
                        data-aos-easing="ease-in-out"
                        data-aos-anchor-placement="center-bottom"
                        >
                        <div class="panel panel-default panel-card">
                            <div class="panel-heading">
                                <img src="image/home/img-1.jpg" alt="" />
                            </div>
                            <div class="panel-figure">
                                <i class="fa-solid fa-users-rays fa-bounce"></i>
                            </div>
                            <div class="panel-body text-center">
                                <h4 class="panel-header">Public Awareness</h4>
                                <p class="m-0">
                                    <small>Raise awareness about disaster risks</small>
                                </p>
                            </div>
                            <div class="panel-thumbnails">
                                <div class="row">
                                    <div class="col-12 text-center">
                                        <p class="m-0" style="font-size: 15px;">
                                            Preparedness through public campaigns and community events.
                                        </p>
                                        <a href="">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div
                        class="col-sm-6 col-md-3"
                        data-aos="zoom-in"
                        data-aos-delay="10"
                        data-aos-duration="600"
                        data-aos-easing="ease-in-out"
                        data-aos-anchor-placement="center-bottom"
                        >
                        <div class="panel panel-default panel-card">
                            <div class="panel-heading">
                                <img src="image/home/img-2.jpg" alt="" />
                            </div>
                            <div class="panel-figure">
                                <i class="fa-solid fa-cloud-sun fa-bounce"></i>
                            </div>
                            <div class="panel-body text-center">
                                <h4 class="panel-header">Weather Reports</h4>
                                <p class="m-0">
                                    <small> Remain up-to date through our website.</small>
                                </p>
                            </div>
                            <div class="panel-thumbnails">
                                <div class="row">
                                    <div class="col-12 text-center">
                                        <p class="m-0">
                                            Get to know about Weather and Disaster conditions.
                                        </p>
                                        <a href="">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div
                        class="col-sm-6 col-md-3"
                        data-aos="zoom-in"
                        data-aos-delay="10"
                        data-aos-duration="600"
                        data-aos-easing="ease-in-out"
                        data-aos-anchor-placement="center-bottom"
                        >
                        <div class="panel panel-default panel-card">
                            <div class="panel-heading">
                                <img src="image/home/img-3.jpeg" alt="" />
                            </div>
                            <div class="panel-figure">
                                <i class="fa-solid fa-house-circle-check fa-bounce"></i>
                            </div>
                            <div class="panel-body text-center">
                                <h4 class="panel-header">R & R</h4>
                                <p class="m-0">
                                    <small>Recovery and Reconstruction</small>
                                </p>
                            </div>
                            <div class="panel-thumbnails">
                                <div class="row">
                                    <div class="col-12 text-center">
                                        <p class="m-0" style="font-size: 15px;">
                                           Assist in the recovery and reconst. efforts following a disaster.
                                        </p>
                                        <a href="">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div
                        class="col-sm-6 col-md-3"
                        data-aos="zoom-in"
                        data-aos-delay="10"
                        data-aos-duration="600"
                        data-aos-easing="ease-in-out"
                        data-aos-anchor-placement="center-bottom"
                        >
                        <div class="panel panel-default panel-card">
                            <div class="panel-heading">
                                <img src="image/home/img-4.jpeg" alt="" />
                            </div>
                            <div class="panel-figure">
                                <i class="fa-solid fa-kit-medical fa-bounce"></i>
                            </div>
                            <div class="panel-body text-center">
                                <h4 class="panel-header">Emergency Response</h4>
                                <p class="m-0">
                                    <small>Provide immediate assistance</small>
                                </p>
                            </div>
                            <div class="panel-thumbnails">
                                <div class="row">
                                    <div class="col-12 text-center">
                                        <p class="m-0" style="font-size: 15px;">
                                            Including distributing supplies such as food, water, and medical aid.</p>
                                        <a href="">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- become helper -->


        <!-- vision -->



        <!-- achieve -->


        <!--  Diesaster related vedio -->

        <div class="container mb-5">
            <div class="row my-3">
                <div class="col text-center">
                    <img src="image/home/love-icon.png" alt="" width="20px" />
                    <h1>Disaster which had arrived recently</h1>
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
                    <div class="card">
                        <span> On 1 January 2024 </span>
                        <img src="image/home/JSDF_Noto_Earthquake_2024-01-07_4_%28Search_by_Drone%29.jpg" class="card-img-top" alt="..." height="250px"/>
                        <div class="card-body text-center">
                            <h5>Noto earthquake ,Ishikawa Prefecture, Japan</h5>
                            <p class="text-muted" >
                                <small
                                    
                                    >A earthquake struck 6 km north-northeast of Suzu, located on the Noto Peninsula of Ishikawa Prefecture, Japan.
                                    <br class="d-none d-md-block" />
                                </small
                                >
                            </p>
                            <a href="https://en.wikipedia.org/wiki/2024_Noto_earthquake">Read More</a>
                        </div>
                    </div>
                </div>
                <div
                    class="col-md-6 col-lg-4"
                    data-aos="fade-up"
                    data-aos-delay="10"
                    data-aos-duration="1000"
                    data-aos-easing="ease-in-out"
                    data-aos-anchor-placement="top-center"
                    >
                    <div class="card">
                        <span> On February 10, 2023 </span>
                        <img src="image/home/Disaster2.png" class="card-img-top" alt="..." height="250px"/>
                        <div class="card-body text-center">
                            <h5>Earthquake struck the country's southeast</h5>
                            <p class="text-muted">
                                <small
                                    > Turkey on February 10, 2023, after a magnitude 7.8 earthquake struck the country's southeast.
                                    <br class="d-none d-md-block" />
                                </small
                                >
                            </p>
                            <a href="https://www.aljazeera.com/gallery/2023/12/27/natural-disasters-that-plagued-the-world-in-2023">Read More</a>
                        </div>
                    </div>
                </div>
                <div
                    class="col-md-6 col-lg-4"
                    data-aos="flip-right"
                    data-aos-delay="10"
                    data-aos-duration="1000"
                    data-aos-easing="ease-in-out"
                    data-aos-anchor-placement="top-center"
                    >
                    <div class="card">
                        <span> On 12 November 2023 </span>
                        <img src="image/home/Disaster3.png" class="card-img-top" alt="..." height="250px"/>
                        <div class="card-body text-center">
                            <h5>The Silkyara Tunnel collapsed in Uttarkashi</h5>
                            <p class="text-muted" text-align="justify">
                                <small
                                    >A section of the Silkyara Bend - Barkot tunnel, planned to connect National Highway 134 

                                    in the Uttarkashi.</small
                                >
                            </p>
                            <a href="https://en.wikipedia.org/wiki/Uttarakhand_tunnel_rescue">Read More</a>
                        </div>
                    </div>
                </div>


            </div>
        </div>
        <br><br>
        
        
    <!-- About us page-->

    <div class="about-wrapper">

        <div class="about-title">
            <h4>Our Team Members</h4>
        </div>

        <div class="about-card_Container">

            <div class="about-card">

                <div class="about-imbBx">
                    <img src="image/aboutus/pranab.jpg" alt="">
                </div>

                <div class="about-content">
                    <div class="about-contentBx">
                        <h3>Pranab Singh Babu <br><span>( 32201221121 )</span></h3>
                    </div>
                    <ul class="about-sci">
                        <li style="--i: 1">
                            <a href="https://www.instagram.com/pranabsinghbabu"><i class="fa-brands fa-instagram"></i></a>
                        </li>
                        <li style="--i: 2">
                            <a href="https://github.com/pranabsinghbabu"><i class="fa-brands fa-github"></i></a>
                        </li>
                        <li style="--i: 3">
                            <a href="https://www.linkedin.com/in/pranabsinghbabu"><i class="fa-brands fa-linkedin-in"></i></a>
                        </li>
                    </ul>
                </div>

            </div>

            <div class="about-card">

                <div class="about-imbBx">
                    <img src="image/aboutus/abhigyan.jpg" alt="">
                </div>

                <div class="about-content">
                    <div class="about-contentBx">
                        <h3>Abhigyan Maji <br><span>( 32201221042 )</span></h3>
                    </div>
                    <ul class="about-sci">
                        <li style="--i: 1">
                            <a href="https://www.instagram.com/yeh__dil"><i class="fa-brands fa-instagram"></i></a>
                        </li>
                        <li style="--i: 2">
                            <a href="https://github.com/Abhigyan555"><i class="fa-brands fa-github"></i></a>
                        </li>
                        <li style="--i: 3">
                            <a href="https://www.linkedin.com/in/abhigyan-maji"><i class="fa-brands fa-linkedin-in"></i></a>
                        </li>
                    </ul>
                </div>

            </div>

            <div class="about-card">

                <div class="about-imbBx">
                    <img src="image/aboutus/sanchita.jpeg" alt="" hight="300px" width="200px">
                </div>

                <div class="about-content">
                    <div class="about-contentBx">
                        <h3>Sanchita Chatterjee  <br><span>( 32201221012 )</span></h3>
                    </div>
                    <ul class="about-sci">
                        <li style="--i: 1">
                            <a href="https://www.instagram.com/snachita_chatterjee/"><i class="fa-brands fa-instagram"></i></a>
                        </li>
                        <li style="--i: 2">
                            <a href="https://github.com/sanchitachatterjee"><i class="fa-brands fa-github"></i></a>
                        </li>
                        <li style="--i: 3">
                            <a href="https://www.linkedin.com/in/sanchita-chatterjee-856305314/"><i class="fa-brands fa-linkedin-in"></i></a>
                        </li>
                    </ul>
                </div>

            </div>

            <div class="about-card">

                <div class="about-imbBx">
                    <img src="image/aboutus/suraj.jpg" alt="">
                </div>

                <div class="about-content">
                    <div class="about-contentBx">
                        <h3>Suraj Kumar Pal <br><span>( 32201221089 )</span></h3>
                    </div>
                    <ul class="about-sci">
                        <li style="--i: 1">
                            <a href="https://www.instagram.com/_____suraj__kumar__pal_/?utm_source=ig_web_button_share_sheet"><i class="fa-brands fa-instagram"></i></a>
                        </li>
                        <li style="--i: 2">
                            <a href="https://github.com/Surajkumarpal"><i class="fa-brands fa-github"></i></a>
                        </li>
                        <li style="--i: 3">
                            <a href="https://www.linkedin.com/in/suraj-kumar-pal-0a0766267/"><i class="fa-brands fa-linkedin-in"></i></a>
                        </li>
                    </ul>
                </div>

            </div>

            <div class="about-card">

                <div class="about-imbBx">
                    <img src="image/aboutus/tridev.jpg" alt="">
                </div>

                <div class="about-content">
                    <div class="about-contentBx">
                        <h3>Tridev Baran Kotal <br><span>( 32201221112 )</span></h3>
                    </div>
                    <ul class="about-sci">
                        <li style="--i: 1">
                            <a href=""><i class="fa-brands fa-instagram"></i></a>
                        </li>
                        <li style="--i: 2">
                            <a href="#"><i class="fa-brands fa-github"></i></a>
                        </li>
                        <li style="--i: 3">
                            <a href="#"><i class="fa-brands fa-linkedin-in"></i></a>
                        </li>
                    </ul>
                </div>

            </div>
        </div>

    </div>
    <!--About us end -->


        <!--footer -->

        <footer id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="single-box">
                            <img src="image/home/white-logo.png" alt="Disaster Relief" height="25px">
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
                            <form id="newsForm" method="post" onsubmit="return validateForm()">
                                <a href="adminLogin.jsp"></a>
                                <div class="input-group mb-3">
                                    <input type="email" name="email" id="email" class="form-control" placeholder="Enter your Email ..." required>
                                    <input class="input-group-text" id="basic-addon2" type="submit" value="Submit">
                                </div>
                            </form>
                            <a href="adminLogin.jsp"></a>

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
                                function showThankYouMessage() {
                                    hideAllMessages();
                                    document.getElementById("thankYouMessage").style.display = "block";
                                }

                                function showAlreadySubscribedMessage() {
                                    hideAllMessages();
                                    document.getElementById("alreadySubscribedMessage").style.display = "block";
                                }

                                function showEmptyEmailMessage() {
                                    hideAllMessages();
                                    document.getElementById("emptyEmailMessage").style.display = "block";
                                }

                                function showInvalidEmailFormatMessage() {
                                    hideAllMessages();
                                    document.getElementById("invalidEmailFormatMessage").style.display = "block";
                                }

                                function hideAllMessages() {
                                    document.getElementById("thankYouMessage").style.display = "none";
                                    document.getElementById("alreadySubscribedMessage").style.display = "none";
                                    document.getElementById("emptyEmailMessage").style.display = "none";
                                    document.getElementById("invalidEmailFormatMessage").style.display = "none";
                                }

                                function validateForm() {
                                    var email = document.getElementById("email").value;
                                    var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

                                    if (email.trim() === "") {
                                        showEmptyEmailMessage();
                                        return false;
                                    } else if (!emailPattern.test(email)) {
                                        showInvalidEmailFormatMessage();
                                        return false;
                                    } else {
                                        return true;
                                    }
                                }

                                function scrollToFooter() {
                                    var footer = document.getElementById("footer");
                                    footer.scrollIntoView({behavior: 'smooth', block: 'start'});
                                }
        </script>

        <%
    // Get form data
    String email = request.getParameter("email");
    boolean isEmailStored = false; // Flag to check if email is stored successfully
    boolean isAlreadySubscribed = false; // Flag to check if email is already subscribed

    // JDBC URL, username, and password
    String jdbcUrl = "jdbc:mysql://localhost:3306/disaster";
    String dbUsername = "root";
    String dbPassword = "jeet1234";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // Connect to the database
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);

        // SQL query to check if the email already exists
        String checkSql = "SELECT * FROM news WHERE email=?";
        pstmt = conn.prepareStatement(checkSql);
        pstmt.setString(1, email);
        rs = pstmt.executeQuery();

        if (rs.next()) {
            // Email already exists
            isAlreadySubscribed = true;
        } else {
            // Email does not exist, so insert it
            String insertSql = "INSERT INTO news (email) VALUES (?)";
            pstmt = conn.prepareStatement(insertSql);
            pstmt.setString(1, email);
            int rowsAffected = pstmt.executeUpdate();

            if (rowsAffected > 0) {
                isEmailStored = true;
            }
        }

        pstmt.close();
        conn.close();

        if (isEmailStored) {
        %>
        <script>
            // Call JavaScript function to show thank you message
            showThankYouMessage();
            // Scroll to footer after form submission
            scrollToFooter();
        </script>
        <%
                } else if (isAlreadySubscribed) {
        %>
        <script>
            // Call JavaScript function to show already subscribed message
            showAlreadySubscribedMessage();
            // Scroll to footer after form submission
            scrollToFooter();
        </script>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } 
        %>

        <!-- bootstrap script -->
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"
        ></script>

        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script>
            AOS.init();
        </script>
    </body>
</html>
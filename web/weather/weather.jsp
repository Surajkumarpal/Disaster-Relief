<%-- 
    Document   : weather.jsp
    Created on : 30-May-2024, 6:03:02 pm
    Author     : Suraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- fontawesome cdn -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"
              integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- Bootstrap cdn -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />

        <!-- aos cdn -->
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
        <link rel="shortcut icon" href="../image/home/white-icon.png" type="image/png" />

        <!-- link css, media and favicon --> 
        <link rel="stylesheet" href="weather2.css">
       

        <script src="../home.js"></script>
        <script src="../button.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <title>Weather</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=DM+Sans&family=Fredoka+One&display=swap');

            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'DM Sans', sans-serif;
            }

            html,body{
                background-color: #F7F7F7;
            }

            h1,h2,h3,h4,h5,h6{
                font-family: 'Fredoka One', cursive;
            }


            /******************** scrollbar ********************/

            ::-webkit-scrollbar {
                width: 5px;
            }

            /* Track */
            ::-webkit-scrollbar-track {
                box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.8);
                border-radius: 10px;
            }

            /* Handle */
            ::-webkit-scrollbar-thumb {
                background: black;
                border-radius: 5px;
            }

            /* Handle on hover */
            ::-webkit-scrollbar-thumb:hover {
                width: 5px;
            }

            /******************** navbar ********************/





            #nav_bar{
                background-color: white;
                box-shadow: 0px 2px 10px 4px rgba(0,0,0,0.1);
            }

            #navbarNav li{
                margin: 0 10px;
                width: 140px;
                transition: all .5s ease;
            }

            #navbarNav li:hover{
                border-radius: 10px;
                background-color: red;
            }

            #navbarNav li a{
                color: black;
                transition: all .5s ease;
                font-size:17px;
                font-weight: bold;
            }

            #navbarNav li a:hover{
                color: white;
                font-weight: bold;
            }

            #navbarNav .active{
                background-color: red;
                color: white;
                font-weight: bold;
                border-radius: 10px;
            }

            #nav_img{
                position: relative;
                animation-name: nav_img;
                animation-timing-function: ease;
            }

            #nav_a1{
                position: relative;
                animation-name: nav_a1;
                animation-duration: 0.7s; /* Faster animation */
                animation-timing-function: ease;
            }

            #nav_a2{
                position: relative;
                animation-name: nav_a2;
                animation-duration: 0.9s; /* Faster animation */
                animation-timing-function: ease;
            }

            #nav_a3{
                position: relative;
                animation-name: nav_a3;
                animation-duration: 1.1s; /* Faster animation */
                animation-timing-function: ease;
            }

            #nav_a4{
                position: relative;
                animation-name: nav_a4;
                animation-duration: 1.3s; /* Faster animation */
                animation-timing-function: ease;
            }

            #nav_a5{
                position: relative;
                animation-name: nav_a5;
                animation-duration: 1.5s; /* Faster animation */
                animation-timing-function: ease;
            }

            #nav_a6{
                position: relative;
                animation-name: nav_a5;
                animation-duration: 1.7s; /* Faster animation */
                animation-timing-function: ease;
            }

            @keyframes nav_img {
                0%{
                    left: -100px;
                    transform: rotate(180deg);
                }

                100%{
                    left: 0;
                    transform: rotate(0deg);
                }
            }

            @keyframes nav_a1 {
                0%{
                    top: -150px;
                }

                100%{
                    top: 0;
                }
            }

            @keyframes nav_a2 {
                0%{
                    top: -150px;
                }

                100%{
                    top: 0;
                }
            }

            @keyframes nav_a3 {
                0%{
                    top: -150px;
                }

                100%{
                    top: 0;
                }
            }

            @keyframes nav_a4 {
                0%{
                    top: -150px;
                }

                100%{
                    top: 0;
                }
            }

            @keyframes nav_a5 {
                0%{
                    top: -150px;
                }

                100%{
                    top: 0;
                }
            }



            /********************* footer ********************/
            footer {
                background: #101010;
                padding: 86px 0;
                margin-top: 100px;
            }

            img {
                font-size: 20px;
                font-weight: 700;
                color: #fff;
            }

            .single-content {
                text-align: center;
                padding: 115px 0;
                padding-right: 40px;
            }

            .single-box p {
                color: #fff;
                line-height: 1.9;
            }

            .single-box h3 {
                font-size: 16px;
                font-weight: 700;
                color: #fff;
            }

            .single-box ul {
                list-style: none;
                padding: 0;
            }

            .single-box ul li a {
                text-decoration: none;
                color: #fff;
                line-height: 1.5;
                font-weight: 100;
            }

            .single-box h2 {
                color: #fff;
                font-size: 20px;
                font-weight: 700;
            }

            #basic-addon2 {
                background: #fe1e4f;
                color: #fff;
            }

            .socials i {
                font-size: 18px;
                margin-right: 15px;
            }

            @media (max-width: 767px) {
                .single-box {
                    margin-bottom: 50px;
                }
            }

            @media (min-width: 768px) and (max-width: 991px) {
                .single-box {
                    margin-bottom: 50px;
                }
                
            }
        </style>
    </head>

    <body>
        <!-- navbar -->

        <nav class="navbar navbar-expand-lg sticky-top border-bottom" id="nav_bar">
            <div class="container-fluid px-md-5">
                <a class="navbar-brand" href="#"><img src="../image/home/color-logo.png" alt="" height="35px" id="nav_img"/></a>
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
                            <a class="nav-link  " href="../index.jsp">Home</a>
                        </li>
                        <li class="nav-item" id="nav_a2">
                            <a class="nav-link" href="../donation.jsp">Donation</a>
                        </li>
                        <li class="nav-item" id="nav_a3">
                            <a class="nav-link " href="../dodont/DO-AND-DONT.html">Do's and Don'ts</a>
                        </li>
                        <li class="nav-item" id="nav_a4">
                            <a class="nav-link" href="../volunteer.jsp">Volunteer</a>
                        </li>
                        <li class="nav-item" id="nav_a4">
                            <a class="nav-link active" href="weather.jsp">Weather</a>
                        </li>
                        <li class="nav-item" id="nav_a5">
                            <a class="nav-link" href="../requestHelp.jsp">Request Help</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- container -->
        <!--        <div class="container1">
                    <img class="help-img" src="help.jpg"><br>
                    <strong>
                        <div class="text1">Need Assistance?</div>
                        <div class="text2">Contact us now for immediate help.</div>
                        <div class="text3">Click below to get started.</div>
                    </strong><br>
        
                    <a class="button1" href="../requestHelp.jsp">GET HELP</a><br>
                </div>-->

        <br>

        <div class="container2">
            <!-- weather -->
            <div class="weather2">
                <div class="title">WEATHER FORECAST</div>
                <div class="header">
                    <div>
                        <input type="text" name="" id="input" placeholder="Enter city name">
                        <button id="search" onclick="searchByCity()">Search</button></input>
                        <div class="separator"></div>
                        <button class="location-btn">Use Current Location</button>
                    </div>
                </div>

                <main>        
                    <div class="weather">
                        <h2 id="city">28.6667, 77.2167</h2>
                        <div class="temp-box">
                            <img src="weathericon.png" alt="" id="img">
                            <p id="temperature">26 °C</p>
                        </div>
                        <span id="clouds">Broken Clouds</span>
                    </div>
                    <div class="divider1"></div>

                    <div class="forecstH">
                        <p class="cast-header">Upcoming forecast</p>
                        <div class="templist">
                            <div class="next">
                                <div>
                                    <p class="time">8:30 PM</p>
                                    <p>29 °C / 29 °C</p>
                                </div>
                                <p class="desc">Light Rain</p>
                            </div>
                            <div class="next">
                                <div>
                                    <p class="time">8:30 PM</p>
                                    <p>29 °C / 29 °C</p>
                                </div>
                                <p class="desc">Light Rain</p>
                            </div>
                            <div class="next">
                                <div>
                                    <p class="time">8:30 PM</p>
                                    <p>29 °C / 29 °C</p>
                                </div>
                                <p class="desc">Light Rain</p>
                            </div>
                            <div class="next">
                                <div>
                                    <p class="time">8:30 PM</p>
                                    <p>29 °C / 29 °C</p>
                                </div>
                                <p class="desc">Light Rain</p>
                            </div>
                            <div class="next">
                                <div>
                                    <p class="time">8:30 PM</p>
                                    <p>29 °C / 29 °C</p>
                                </div>
                                <p class="desc">Light Rain</p>
                            </div>
                        </div>
                    </div>
                </main>

                <div class="forecstD">
                    <div class="divider2"></div>
                    <p class="cast-header"> Next 4 days forecast</p>
                    <div class="weekF">
                        <div class="dayF">
                            <p class="date">Sun Jul 03 2022</p>
                            <p>31 °C / 31 °C</p>
                            <p class="desc">Overcast Clouds</p>
                        </div>

                        <div class="dayF">
                            <p class="date">Sun Jul 03 2022</p>
                            <p>31 °C / 31 °C</p>
                            <p class="desc">Overcast Clouds</p>
                        </div>

                        <div class="dayF">
                            <p class="date">Sun Jul 03 2022</p>
                            <p>31 °C / 31 °C</p>
                            <p class="desc">Overcast Clouds</p>
                        </div>

                        <div class="dayF">
                            <p class="date">Sun Jul 03 2022</p>
                            <p>31 °C / 31 °C</p>
                            <p class="desc">Overcast Clouds</p>
                        </div>
                    </div>
                </div>

            </div>


            <!-- news -->
            <div class="news">
                <script type="text/javascript" src="https://feed.mikle.com/js/fw-loader.js" preloader-text="Loading"
                data-fw-param="165606/"></script>
            </div>
        </div>
        <hr>
        <br><br>

        <!--footer-->
        <footer id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="single-box">
                            <img src="../image/home/white-logo.png" alt="Disaster Relief" height="25px">
                            <p>Disaster Management System website, your go-to resource for disaster preparedness, response, and recovery. Access real-time updates, essential tools, and expert advice to stay safe and resilient during emergencies.</p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-sm-6 mx-auto">
                        <div class="single-box">
                            <h2>Pages</h2>
                            <ul>
                                <li><a class="nav-link active " href="../index.jsp">Home</a></li>
                                <li><a class="nav-link" href="../donation.jsp">Donation</a></li>
                                <li><a class="nav-link " href="../dodont/DO-AND-DONT.html">Do's and Don'ts</a></li>
                                <li><a class="nav-link" href="../volunteer.jsp">Volunteer</a></li>
                                <li><a class="nav-link" href="weather.jsp">Weather</a></li>
                                <li><a class="nav-link" href="../requestHelp.jsp">Request Help</a></li>
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

        <!-- bootstrap script -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
        <script src="script.js"></script>
        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script>
                            AOS.init();
        </script>
    </body>

</html>
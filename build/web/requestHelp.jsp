<%-- 
    Document   : requestHelp
    Created on : 30-May-2024, 10:16:22 am
    Author     : Suraj
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Request Help Form</title>
        <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
        <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>

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
        <link rel="shortcut icon" href="image/home/white-icon.png" type="image/png" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


        <link rel="stylesheet" href="navfooter.css">
    </head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
                font-family: 'DM Sans', sans-serif;

        }

        body {
            min-height: 100vh;
            width: 100%;
            background: #FFFFFF;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        #nav_bar {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            background-color: white;
            box-shadow: 0px 2px 10px 4px rgba(0,0,0,0.1);
        }

        #navbarNav li{
            margin: 0 10px;
            width: 140px;
            transition: all .5s ease;
        }

        .container1 {
            width: 85%;
            background: #fff;
            border-radius: 6px;
            padding: 20px 40px 30px 40px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
            animation: slideIn 0.5s ease forwards;
            margin-bottom: 60px;
            margin-top: 15vh;
        }

        @keyframes slideIn {
            from {
                transform: translateX(-100%);
            }
            to {
                transform: translateX(0);
            }
        }

        .container1 .content {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .container1 .content .left-side {
            width: 45%;
            height: 100%;
            align-items: center;
            justify-content: center;
            margin-top: 15px;
        }

        #map{
            height: 400px;
            width: 100%;
        }

        .container1 .content .right-side {
            width: 65%;
            margin-left: 60px;
        }

        .content .right-side .topic {
            font-size:35px;
            font-weight: 600;
            color: red;
        }

        .right-side .input-box {
            height: 50px;
            width: 100%;
            margin: 12px 0;
        }

        .right-side .input-box input,
        .right-side .input-box select {
            height: 100%;
            width: 100%;
            border: none;
            outline: none;
            font-size: 16px;
            background: #F0F1F8;
            border-radius: 6px;
            padding: 0 15px;
            resize: none;
        }

        .right-side .submit {
            display: inline-block;
            margin-top: 12px;
        }

        .right-side .submit input[type="submit"] {
            color: #fff;
            font-size: 18px;
            outline: none;
            border: none;
            padding: 8px 16px;
            border-radius: 6px;
            background: red;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .right-side .submit input[type="submit"]:hover {
            background: darkred;
        }

        @media screen and (max-width: 800px) {
            #map {
                height: 300px;
            }

            .content {
                flex-direction: column;
                align-items: center;
            }

            .container1 .content .left-side {
                width: 100%;
                margin-bottom: 20px;
            }

            .container1 .content .right-side {
                width: 100%;
                margin-left: 0;
            }

            .content .right-side .topic {
                font-size:20px;
            }

            .leaflet-touch .leaflet-control-attribution{
                font-size: 2vw;
            }
        }

        footer {
            background: #101010;
            padding: 86px 0;
            width: 100%;
        }

        </style>
    </head>
    <body>
        <!--navbar-->
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
                            <a class="nav-link" href="donation.jsp">Donation</a>
                        </li>
                        <li class="nav-item" id="nav_a3">
                            <a class="nav-link " href="dodont/DO-AND-DONT.html">Do's and Don'ts</a>
                        </li>
                        <li class="nav-item" id="nav_a4">
                            <a class="nav-link" href="volunteer.jsp">Volunteer</a>
                        </li>
                        <li class="nav-item" id="nav_a5">
                            <a class="nav-link" href="weather/weather.jsp">Weather</a>
                        </li>
                        <li class="nav-item" id="nav_a6">
                            <a class="nav-link active" href="requestHelp.jsp">Request Help</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!--body-->

        <div class="container1">
            <div class="content">
                <!--LEFT SIDE-->

                <div class="left-side">
                    <h6  style="color:red;">Please mark your approximate location on the map before submitting</h6>
                    <div id="map" class="map"></div>
                    <div id="coordinates"></div>
                </div>

                <!--RIGHT SIDE-->
                <div class="right-side">
                    <div class="topic">Contact Us in Case of Emergency</div>
                    <form id="locationForm">
                        <div class="input-box">
                            <input type="text" id="name" name="name" placeholder="Name:" required><br>
                        </div>

                        <div class="input-box">
                            <input type="text" id="phone" name="phone" placeholder="Phone:" required><br>
                        </div>

                        <div class="input-box">
                            <input type="email" id="email" name="email" placeholder="Email:" required><br>
                        </div>

                        <label for="disasterType">Disaster Type:</label>
                        <div class="input-box">
                            <select id="disasterType" name="disasterType">
                                <option value="Other">Other</option>
                                <option value="Earthquake">Earthquake</option>
                                <option value="Flood">Flood</option>
                                <option value="Wildfire">Wildfire</option>
                                <option value="Hurricane">Cyclone</option>
                                <option value="Tornado">Tornado</option>
                            </select><br>
                        </div>
                        <div class="submit">
                            <input type="submit" value="Submit">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!--footer-->
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
        
        <!-- Footer End -->
        

        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/js/bootstrap.min.js"></script>
                <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"
        ></script>

        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script>
        AOS.init();
        </script>

        <!--store map & redirect-->
        <script>
            // JAVASCRIPT FOR MAP
            var map = L.map('map').setView([0, 0], 2);
            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
            }).addTo(map);

            var marker;
            var coordinatesDiv = document.getElementById('coordinates');

            function updateMarkerAndCoordinates(latitude, longitude) {
                if (marker) {
                    marker.setLatLng([latitude, longitude]);
                } else {
                    marker = new L.Marker([latitude, longitude]);
                    marker.addTo(map);
                }
            }

            function showPosition(position) {
                var latitude = position.coords.latitude;
                var longitude = position.coords.longitude;
                map.setView([latitude, longitude], 15);
                updateMarkerAndCoordinates(latitude, longitude);
            }

            function getUserLocation() {
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(showPosition, function (error) {
                        console.log('Error getting user location:', error.message);
                        map.setView([0, 0], 2);
                        updateMarkerAndCoordinates(0, 0);
                    });
                } else {
                    console.log('Geolocation is not supported by this browser.');
                }
            }

            window.onload = getUserLocation();

            map.on('click', function (e) {
                updateMarkerAndCoordinates(e.latlng.lat, e.latlng.lng);
            });

            // JAVASCRIPT FOR FORM VALIDATION AND SUBMISSION
            document.getElementById('locationForm').addEventListener('submit', function (event) {
                event.preventDefault(); // Prevent default form submission

                // Get form inputs
                var name = document.getElementById('name').value.trim();
                var email = document.getElementById('email').value.trim();
                var disasterType = document.getElementById('disasterType').value;
                var phone = document.getElementById('phone').value.trim();

                // Validate form inputs
                if (name === '' || email === '' || phone === '') {
                    alert('Please fill out all required fields.');
                    return; // Stop form submission if required fields are not filled out
                }

                var nameRegex = /^[a-zA-Z\s]+$/;
                if (!nameRegex.test(name)) {
                    alert("Please enter a valid name with alphabets and spaces only.");
                    return false;
                }

                // Validate email format
                var emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
                if (!emailRegex.test(email)) {
                    alert('Please enter a valid email address.');
                    return; // Stop form submission if email format is invalid
                }

                // Validate phone number format
                var phoneRegex = /^\d{10}$/; // Assuming a 10-digit phone number format
                if (!phoneRegex.test(phone)) {
                    alert('Please enter a valid 10-digit phone number.');
                    return; // Stop form submission if phone number format is invalid
                }

                // Proceed with form submission if all validations pass
                if (marker) {
                    var latitude = marker.getLatLng().lat;
                    var longitude = marker.getLatLng().lng;

                    var xhr = new XMLHttpRequest();
                    xhr.open("POST", "storeMap.jsp", true);
                    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                    xhr.onreadystatechange = function () {
                        if (xhr.readyState === 4 && xhr.status === 200) {
                            console.log(xhr.responseText);
                            // Show thank you message and redirect
                            alert('Our team is reviewing your information and will contact you soon!');
                            window.location.href = 'index.jsp'; // Change this to your desired URL
                        }
                    };
                    xhr.send("latitude=" + latitude + "&longitude=" + longitude + "&name=" + name + "&email=" + email + "&disasterType=" + disasterType + "&phone=" + phone);
                } else {
                    console.log('Please select a location on the map.');
                }
            });
        </script>

    </body>
</html>

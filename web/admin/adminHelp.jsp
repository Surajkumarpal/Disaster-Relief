<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head> 
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Map with User Input</title>
        <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
        <style>
            body {
                display: flex;
                font-family: Arial, sans-serif;
            }
            .left-section {
                width: 50%;
                padding: 20px;
            }
            .right-section {
                width: 50%;
                padding: 20px;
                border-left: 1px solid #ccc;
            }
            #map {
                height: 400px;
                width: 100%;
            }
            .user-details {
                margin-bottom: 20px;
            }
            .emergency-details {
                margin-top: 20px;
            }
            button{
                background:brown;
                color: white;
                border-radius: 10px;
                font-weight: bold;
                padding: 5px 5px 5px 5px;
            }
            button:hover{
                background: darkred;
                color: whitesmoke;
            }
            h3{
                color:red;
                font-weight: bolder;
                font-size: 25px;
            }
            .vl {
                border-left: 1px solid;
                height: 500px;
                margin-left: 20px;
                margin-right: 20px;
            }
            .back-button {
                position: fixed;
                top: 10px;
                right: 10px;
                background:darkred;
                color: white;
                font-weight: bold;
                padding: 5px 5px 5px 5px;
                cursor: pointer;
            }
            .back-button:hover {
                background-color: brown;
                color: whitesmoke;
            }
        </style>
    </head>
    <body>
        <a href="adminRequest.jsp"><button class="back-button">Back</button></a>
        <div class="left-section">
            <%
                Connection conn = null;
                PreparedStatement pst = null;
                ResultSet rs = null;
                String Url = "jdbc:mysql://localhost/disaster";
                String Username = "root";
                String Password = "jeet1234";
                String id = request.getParameter("id");
                String Query = "select * from request where id=?";
                String userId = null; // Variable to store user ID
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection(Url, Username, Password);
                    pst = conn.prepareStatement(Query);
                    pst.setInt(1, Integer.parseInt(id));
                    rs = pst.executeQuery();
                    while (rs.next()) {
                        userId = rs.getString("id"); // Store user ID
            %>
            <div class="user-details">
                <h3>User Details:</h3>
                <p>Name: <%=rs.getString("name") %></p>
                <p>Email: <%=rs.getString("email") %></p>
                <p>Phone: <%=rs.getString("phone_number") %></p>
                <p>Disaster Type: <%=rs.getString("disaster_type") %></p>
            </div>

            <form id="latlong-form" method="post">
                <input type="hidden" id="latitude" name="latitude" value="<%=rs.getString("latitude") %>">
                <input type="hidden" id="longitude" name="longitude" value="<%=rs.getString("longitude") %>">
                <button type="submit">Show Location</button>
            </form>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (rs != null) rs.close();
                    if (pst != null) pst.close();
                    if (conn != null) conn.close();
                }
            %>    

            <!-- MAP -->
            <div id="map"></div>
        </div>
        <div class="right-section">
            <div class="emergency-details">
                <h3>Emergency Contact Details:</h3>
                <p>NATIONAL EMERGENCY NUMBER : 112</p>
                <p>POLICE : 100 or 112</p>
                <p>AMBULANCE : 102</p>
                <p>DISASTER MANAGEMENT SERVICES : 108</p>
                <p>DISASTER MANAGEMENT ( N.D.M.A ) : 1078, 01126701728</p>
                <p>EARTHQUAKE / FLOOD / DISASTER ( N.D.R.F HEADQUARTERS ) : 011-24363260 OR 9711077372</p>
                <p>FIRE SERVICE : 101</p>
            </div>
            <hr>
            <div>
                <a href="adminVolunteer.jsp"><button>Volunteer List</button></a>
                <span class="vl"></span>
                <a href="deleteHelp.jsp?id=<%=userId %>"><button>Delete Data</button></a> <!-- Use the stored user ID -->
            </div> 
        </div>

        <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
        <script>
            var map = L.map('map').setView([0, 0], 2); // Initialize Leaflet map with center at (0, 0) and zoom level 2

            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
            }).addTo(map);

            var marker = L.marker([0, 0]).addTo(map);

            document.getElementById('latlong-form').addEventListener('submit', function (event) {
                event.preventDefault(); // Prevent form submission

                var latitude = parseFloat(document.getElementById('latitude').value);
                var longitude = parseFloat(document.getElementById('longitude').value);

                if (!isNaN(latitude) && !isNaN(longitude)) {
                    map.setView([latitude, longitude], 14); // Set map center to the provided latitude and longitude with zoom level 14
                    marker.setLatLng([latitude, longitude]); // Set marker position to the provided latitude and longitude
                } else {
                    alert('Please enter valid latitude and longitude values.');
                }
            });
        </script>
    </body>
</html>

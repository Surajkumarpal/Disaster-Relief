<%-- 
    Document   : admin
    Created on : 20-May-2024, 12:42:22 pm
    Author     : abhig
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
        <title>Dashboard</title>

        <style>

            @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap');
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Roboto', sans-serif;
            }
            body {
                position: relative;
                width: 100%;
            }
            .header {
                height: 60px;
                width: 100%;
                display: flex;
                align-items: center;
                border-bottom: 2px solid #f1f1f1;
            }
            .logo {
                display: flex;
                align-items: center;
                width: 300px;
                padding-left: 40px;
            }
            .logo span {
                color: red;
                padding: 10px;
            }

            .name{
                color: red;
                font-size: 20px;
                padding: 190px;
            }

            .main {
                position: relative;
                width: 100%;
                min-height: calc(100vh - 60px);
            }

            li {
                list-style: none;
            }
            a {
                text-decoration: none;
            }

            /* main--content */
            .main--content {
                margin: 0 auto; /* Add this to center the content horizontally */
                padding: 0 40px;
                transition: .3s;
            }

            .main--content.active {
                width: calc(100% - 103px);
            }
            .title {
                display: flex;
                align-items: center;
                justify-content: space-between;
                margin-bottom: 10px;
                margin-top: 30px;
            }
            .section--title {
                font-size: 25px;
                color: red;
            }
            .dropdown {
                outline: none;
                border: none;
                background-color: #f1f4f8;
                border-radius: 5px;
                width: 150px;
                padding: 5px;
            }
            .cards {
                display: flex;
                gap: 50px;
            }
            .card {
                padding: 20px;
                border-radius: 20px;
                min-width: 230px;
                height: auto;
                transition: .3s;
            }
            .card:hover {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            }
            .card--data {
                display: flex;
                align-items: flex-start;
                justify-content: space-between;
            }
            .card h1 {
                font-size: 30px;
                margin-top: 10px;
            }
            .card--icon--lg {
                font-size: 80px;
            }
            .card--stats {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-top: 5px;
            }
            .card--stats span {
                display: flex;
                align-items: center;
            }
            .card--icon {
                margin-right: 5px;
                margin-left: 5px;
            }
            .stat--icon {
                color: #5f5ce0;
            }
            .up--arrow {
                color: #70d7a5;
            }
            .down--arrow {
                color: #e86786;
            }
            .card-1 {
                background-color: rgba(80, 115, 251, .1);
            }
            .card-1 .card--title {
                color: rgba(80, 115, 251, 1);
            }
            .card-1 .card--icon--lg {
                color: rgba(80, 115, 251, .4);
            }
            .card-2 {
                background-color: rgba(241, 210, 67, .1);
            }
            .card-2 .card--title {
                color: rgba(241, 210, 67, 1);
            }
            .card-2 .card--icon--lg {
                color: rgba(241, 210, 67, .4);
            }
            .card-3 {
                background-color: rgba(112, 215, 165, .1);
            }
            .card-3 .card--title {
                color: rgba(112, 215, 165, 1);
            }
            .card-3 .card--icon--lg {
                color: rgba(112, 215, 165, .4);
            }
            .card-4 {
                background-color: rgba(227, 106, 200, .1);
            }
            .card-4 .card--title {
                color: rgba(227, 106, 200, 1);
            }
            .card-4 .card--icon--lg {
                color: rgba(227, 106, 200, .4);
            }
            /* doctors */
            .doctors--right--btns {
                display: flex;
                align-items: center;
                gap: 30px;
            }
            .add {
                display: flex;
                align-items: center;
                padding: 5px 10px;
                outline: none;
                border: none;
                background-color: #5073fb;
                color: #fff;
                border-radius: 5px;
                cursor: pointer;
                transition: .3s;
            }
            .add:hover {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            }
            .add i {
                margin-right: 10px;
                padding: 5px;
                background-color: #fff;
                border-radius: 50%;
                color: #000;
            }
            .doctors--cards {
                display: flex;
                gap: 30px;
            }
            .doctor--card {
                padding: 30px;
                border-radius: 20px;
                height: auto;
                transition: .3s;
                border: 2px solid #f1f1f1;
                display: flex;
                flex-direction: column;
                align-items: center;
                font-size: .8rem;
            }
            .doctor--card:hover {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            }
            .img--box--cover {
                border: 1px solid #5073fb;
                padding: 2px;
                border-radius: 50%;
                display: inline-block;
                margin-bottom: 10px;
            }
            .img--box {
                position: relative;
                width: 71px;
                height: 71px;
                overflow: hidden;
                border-radius: 50%;
            }
            .free {
                color: #70d7a5;
            }
            .scheduled {
                color: #5073fb;
            }
            /* recent--patients */
            .recent--patients {
                margin-bottom: 20px;
            }
            .table {
                height: 200px;
                overflow-y: scroll;
            }
            table {
                width: 100%;
                text-align: left;
                border-collapse: collapse;
            }
            tr {
                border-bottom: 1px solid #f1f1f1;
            }
            td,
            th {
                padding-block: 10px;
            }
            .edit {
                color: #70d7a5;
                margin-right: 10px;
            }
            .delete {
                color: #e86786;
            }
            .pending {
                color: #f1d243;
            }
            .confirmed {
                color: #70d7a5;
            }
            .rejected {
                color: #e86786;
            }
            .back-button {
                position: fixed;
                top: 10px;
                right: 10px;
                background:darkred;
                color: white;
                font-weight: bold;
                padding: 5px 10px 5px 10px;
                cursor: pointer;
            }
            .back-button:hover {
                background-color: brown;
                color: whitesmoke;
            }
            
            /* responsive starts here */
            @media screen and (max-width:1350px) {
                .cards{
                }
            }
            @media screen and (max-width:1024px) {
                table {
                    min-width: 600px;
                }
            }
            @media screen and (max-width:768px) {
                .logo {
                    padding-left: 30px;
                    width: fit-content;
                }
                .search--notification--profile {
                    padding: 0 20px;
                    margin-left: auto;
                }
                .main--content {
                    padding: 0 20px;
                }
                .sidebar {
                    padding: 20px;
                }
                .sidebar.active {
                    width: 85px;
                }
                .main--content.active {
                    width: calc(100% - 85px);
                }
            }


            /* Base styles for responsiveness */
            @media screen and (max-width: 1350px) {
                .cards{
                    flex-direction: column;
                    gap: 20px;
                }
                .card, .doctor--card {
                    width: 100%;
                }
            }

            @media screen and (max-width: 1024px) {
                table {
                    min-width: 100%;
                    display: block;
                    overflow-x: auto;
                }
            }

            @media screen and (max-width: 768px) {
                .header {
                    flex-direction: column;
                    align-items: center;
                }

                .logo {
                    padding-left: 20px;
                    width: 100%;
                    text-align: center;
                }

                .logout-button {
                    padding-right: 20px;
                    width: 100%;
                    text-align: center;
                    margin-top: 10px;
                }

                .main--content {
                    padding: 0 20px;
                }

                .sidebar {
                    padding: 20px;
                }

                .sidebar.active {
                    width: 85px;
                }

                .main--content.active {
                    width: calc(100% - 85px);
                }
            }


        </style>
    </head>
    <body>
        <section class="header">
            <div class="logo">
                <h2>Disaster<span>Relief</span></h2>
            </div>
            <div class="logout-button">
                <a href="../adminLogin.jsp"><button class="back-button">Logout</button></a>
            </div>
        </section>
        <section class="main">

            <div class="main--content">
                <div class="overview">
                    <div class="title">
                        <h2 class="section--title"><b>Admin Panel</b></h2>
                    </div>
                    <div class="cards">
                        <div class="card card-1">
                            <a href="adminRequest.jsp">
                                <div class="card--data">
                                    <div class="card--content">
                                        <h2 class="card--title">View Requests</h2>
                                    </div>
                                    <i class="ri-question-answer-fill card--icon--lg"></i>
                                </div>
                            </a>
                        </div>
                        <div class="card card-2">
                            <a href="adminVolunteer.jsp">
                                <div class="card--data">
                                    <div class="card--content">
                                        <h2 class="card--title">Volunteer List</h2>
                                    </div>
                                    <i class="ri-user-line card--icon--lg"></i>
                                </div>
                            </a>    
                        </div>
                        <div class="card card-4">
                            <a href="adminSub.jsp">
                                <div class="card--data">
                                    <div class="card--content">
                                        <h2 class="card--title">Subscribers List</h2>
                                    </div>
                                    <i class="ri-alarm-warning-fill card--icon--lg"></i>          
                                </div>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="doctors">
                    <div class="title">
                        <h2 class="section--title"><b>Admins</b></h2>

                    </div>
                    <div class="doctors--cards">
                        <a href="https://www.linkedin.com/in/pranabsinghbabu" class="doctor--card">
                            <div class="img--box--cover">
                                <div class="img--box">
                                    <img src="pranab.jpg" alt="image" width="76px">
                                </div>
                            </div>
                            <p class="scheduled">Pranab Singh Babu</p>
                        </a>

                        <a href="https://www.linkedin.com/in/abhigyan-maji/" class="doctor--card">
                            <div class="img--box--cover">
                                <div class="img--box">
                                    <img src="abhigyan1.jpg" alt="image" width="75px">
                                </div>
                            </div>
                            <p class="scheduled">Abhigyan Maji</p>
                        </a>

                        </a>
                        <a href="https://www.linkedin.com/in/sanchita-chatterjee-856305314/" class="doctor--card">
                            <div class="img--box--cover">
                                <div class="img--box">
                                    <img src="sanchita.jpeg" alt="image"  width="78px">
                                </div>
                            </div>
                            <p class="scheduled">Sanchita Chatterjee</p>
                        </a>

                        <a href="https://www.linkedin.com/in/suraj-kumar-pal-0a0766267/" class="doctor--card">
                            <div class="img--box--cover">
                                <div class="img--box">
                                    <img src="suraj.jpeg" alt="image" width="70px">
                                </div>
                            </div>
                            <p class="scheduled">Suraj Kumar Pal</p>
                        </a>
                        <a href="https://www.linkedin.com/in/tridev-baran-kotal-140a75271/" class="doctor--card">
                            <div class="img--box--cover">
                                <div class="img--box">
                                    <img src="tridev1.jpeg" alt="image"  width="85px">
                                </div>
                            </div>
                            <p class="scheduled">Tridev Baran Kotal</p>
                        </a>
                    </div>
                </div>

            </div>
        </section>
        <script>
            let menu = document.querySelector('.menu');
            let sidebar = document.querySelector('.sidebar');
            let mainContent = document.querySelector('.main--content');
            menu.onclick = function () {
                sidebar.classList.toggle('active');
                mainContent.classList.toggle('active');
            }
        </script>
    </body>
</html>
<%-- 
    Document   : index
    Created on : Feb 20, 2019, 2:04:24 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>TTS Bahasa Lampung</title>
	<meta charset="UTF-8">
	<meta name="description" content="Labs - Design Studio">
	<meta name="keywords" content="lab, onepage, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Oswald:300,400,500,700|Roboto:300,400,600" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/flaticon.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
        <script> {
         function myFunction() {
            var txtCode = '', str = document.getElementById("teks").value;
            var len = str.length;
            for (i = 0; i < len; i++) {
            txtCode += '&#' + str.charCodeAt(i);
            }
            document.getElementById("sendCharacter").value = txtCode;
            }
            function clearFunction() {
            document.getElementById("teks").value = "";
            document.getElementById("teks").innerHTML = "";
            }

            function textFunction(text, trans) {
            document.getElementById("teks").value += String.fromCodePoint(text);
            if (text === 1617){
                var s = document.getElementById("transliterasi").innerHTML;
                var t = s.toString().split("/");
                document.getElementById("transliterasi").innerHTML += t[t.length-2] + "/";
            } else{
                document.getElementById("transliterasi").innerHTML += trans + "/";
            }
            }
            window.onload = clearFunction;
            </script>
</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader">
			<img src="img/tts.png" alt="">
			<h2>Loading.....</h2>
		</div>
	</div>
        
	<!-- Header section -->
	<header class="header-section">
    
		<div class="logo">
			<img src="img/logo_tts.png" alt=""><!-- Logo -->
		</div>
		<!-- Navigation -->
		<div class="responsive"><i class="fa fa-bars"></i></div>
		<nav>
			<ul class="menu-list">
                            <li class="active"><a href="index.jsp">Home</a></li>
                            <li><a href="about.jsp">About</a></li>
                            <li><a href="help.jsp">Help</a></li>
			</ul>
		</nav>
	</header>
	<!-- Header section end -->
        
        <!-- Page header -->
	<div class="page-top-section">
		<div class="page-info"></div> 
                
                <form action="hasil.jsp" class="form-class"  method="post" >
                    <div class="row">	
			<div class="col-sm-12">		
                            <textarea name="teks" placeholder="Masukan teks"></textarea>	
			</div>
                    </div>
			<!-- Single element -->
                            <div class="element">
				<div class="buttons">
				<!--button type="submit" name="submit" class="site-btn mr20"  >Play</button -->
                                <input class="btn btn-info" type="submit" onclick="myFunction()" value="Play">
                                <input class="btn btn-danger" type="button" onclick="clearFunction()" value="Clear">
                                
                                </div> 
                            </div>
                        <input type="hidden" id="lampungtext" name="LampungText">
		</form>

	<!-- Page header end-->
            
           <!--button type="submit" value="play">play</button-->
        
    
	<!-- Footer section -->
	<footer class="footer-section">
		<h2>2019 All rights reserved. Designed by <a href="https://colorlib.com" target="_blank">Silviyah</a></h2>
	</footer>
	<!-- Footer section end -->



	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/magnific-popup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>

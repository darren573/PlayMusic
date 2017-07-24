<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Music Online</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="js/iscroll.js"></script>
<script type="text/javascript" src="js/function.js"></script>
</head>
<body>
<audio id="audio" src="music/1.mp3" loop="loop"></audio>
<div>
<a id="pp" href="#" flag="0"><img height="50" src="images/pro.png"></a>
</div>
<br>
<div id="updatetime" class="time"></div>
<div class="pro" onclick="clickPro(event,this)">
	<div class="playball"></div>
</div>
<div id="totaltime" class="time" style="text-align:right"></div>
</body>
</html>
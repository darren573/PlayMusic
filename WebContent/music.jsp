<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Music Online</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="js/iscroll.js"></script>
<script type="text/javascript" src="js/function.js"></script>
<script type="text/javascript" src="js/text.js"></script>
</head>
<body>
<audio id="audio" src="music/1.mp3" loop="loop"></audio>
<div class="playtable">
	<table width="100%" border="1px" class="pt">
		<thead>
			<tr>
				<td>播放</td>
				<td>歌名</td>
				<td>作者</td>
				<td>专辑</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><a href="#" mp3="music/1.mp3"><img src="images/pro.png" height="20"></a></td>
				<td>Dream It Possible</td>
				<td>张靓颖</td>
				<td>Dream It Possible</td>
			</tr>
			<tr>
				<td><a href="#" mp3="music/2.mp3"><img src="images/pro.png" height="20"></a></td>
				<td>PDD洪荒之力</td>
				<td>泰国歌手</td>
				<td>Hoaprox - Ngẫu Hứng</td>
			</tr>
			<tr>
				<td><a href="#" mp3="music/3.mp3"><img src="images/pro.png" height="20"></a></td>
				<td>Here We Are</td>
				<td>华晨宇</td>
				<td>Here We Are</td>
			</tr>
			<tr>
				<td><a href="#" mp3="music/4.mp3"><img src="images/pro.png" height="20"></a></td>
				<td>七月上</td>
				<td>Jam</td>
				<td>七月上</td>
			</tr>
			<tr>
				<td><a href="#" mp3="music/5.mp3"><img src="images/pro.png" height="20"></a></td>
				<td>Rainbow</td>
				<td>B0untya,Ulchero</td>
				<td>Rainbow</td>
			</tr>
		</tbody>
	</table>
</div>
<br>
<div class="musicImg">
<a id="last" href="#" flaglast="0"><img height="50" src="images/last.jpg"></a>
<a id="pp" href="#" flag="0"><img height="50" src="images/pro.png"></a>
<a id="next" href="#"><img height="50" src="images/next.jpg"></a>
</div>
<br>
<div id="updatetime" class="time"></div>
<div class="pro" onclick="clickPro(event,this)">
	<div class="playball"></div>
</div>
<div id="totaltime" class="time" style="text-align:right"></div>
<div class="hide" flag="0">
	<p>歌名：《Dream It Possible》</p>
	<p>《Dream It Possible》是华为消费者业务品牌主题曲，由张靓颖演唱，歌曲中文版本为《我的梦》。</p>
</div>
<p class="pull">点我查看歌曲详情</p>
</body>
</html>
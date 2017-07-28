var a=null;
var flag=null;
$(function(){//主方法，所有方法逻辑执行完成之后再执行
	a=document.getElementById("audio");
	//添加播放的监听时间
	a.addEventListener("timeupdate",timeupdate);
	//点击播放按钮的事件
	$("#pp").click(function(){
		//获得播放状态
		flag = $(this).attr("flag");
		if(flag=='0'){
			a.play();
			//获得播放的图片对象
			$(this).find("img").attr("src","images/play.jpg");
			//把flag设置成1
			$(this).attr("flag","1");
			//获得当前播放了多少秒,一共多少秒
		}else{
			a.pause();
			//获得播放的图片对象
			$(this).find("img").attr("src","images/pro.png");
			//把flag设置成0
			$(this).attr("flag","0");
		}
	})
	$(".playtable a").click(function(){
		//获得点击播放的MP3的链接地址
		 var loc=$(this).attr("mp3");
		 //设置HTML5的音频播放地址
		 $("#audio").attr("src",loc);
		 //删除所有tr的背景
		 $("table tr").removeClass("here")
		 //获得当前行
		 $(this).parent().parent().addClass("here");
		 $(" td a img").attr("src","images/pro.png");
		 $(this).find("img").attr("src","images/play.jpg");
		 
		 
		 $("#pp").click();
		 var flag= $("#pp").attr("flag");
		 if(flag=='0'){
			 $("#pp").click();
		 }
		a.play();
	})
	$("#next").click(function(){
		var tr =$("tbody").find("tr[class='here']");
		tr.next("tr").find("a").click();
	})
	$("#last").click(function(){
		var tr =$("tbody").find("tr[class='here']");
		tr.prev("tr").find("a").click();
	})
})
function timeupdate(){
	//获得当前播放时间
	var ct = a.currentTime;
	//把秒变成分钟
	var cmi=Math.floor(ct/60);
	var cc=Math.floor(ct%60);
	//把秒变成分钟
	var du	= a.duration;
	var dmi=Math.floor(du/60);
	var dc=Math.floor(du%60);
	$("#updatetime").html(cmi+":"+cc);
	$("#totaltime").html(dmi+":"+dc);
	//获得播放的长度
	var left=Math.floor(ct/du*500)+"px";
	$(".playball").css("left",left);
}
//拖拽
function clickPro(e,obj){
	var l=e.clientX-obj.offsetLeft;
	$(".playball").css("left",l);
	a.currentTime=(l/500)*a.duration;
}
//循环播放
function loop(){
	var b=document.getElementById("audio");
	b.loop="loop";
}
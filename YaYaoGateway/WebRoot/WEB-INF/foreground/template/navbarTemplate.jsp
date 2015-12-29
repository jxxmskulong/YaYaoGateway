<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<script>
$(function(){
//导航变色
$(".nav li a").each(function(){
	var $this=$(this);
if(location.pathname.indexOf($this.attr("href"))>-1){
	$(this).parent().attr("class","active");
}
	
});
//pc 移动轮播图片展示
if( navigator.userAgent.match(/Android/i) || navigator.userAgent.match(/webOS/i) || navigator.userAgent.match(/iPad/i) || navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPod/i)){

	$("#myCarousel img").each(function(index){
		//alert(index+1)
		$(this).attr("src","resources/img/carousel/move/carousel"+(index+1)+".jpg")
	});
	//alert("shouji")
	}else{
		//alert("pc")
	$("#myCarousel img").each(function(index){
		//alert(index+1)
		$(this).attr("src","resources/img/carousel/carousel"+(index+1)+".jpg")
	});
		
		} 
});
</script>
 <!-- 顶部导航 -->
  <div class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="menu-nav">
    <div class="container">
        <div class="navbar-header">
             <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <img class="navbar-brand" src="resources/img/logo.jpg" style="width:50px;height:50px;padding:0;"/>
            <a class="navbar-brand" href="index">雅耀(湖南)科技有限公司</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="index">网站首页</a></li>
                <li><a href="aboutUS">关于我们</a></li>
                <li class="dropdown">
                    <a href="newsDynamic" class="dropdown-toggle" data-toggle="dropdown">新闻动态 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="industryInformation" >行业资讯</a></li>
                        <li class="divider"></li>
                        <li><a href="companyNews">公司新闻</a></li>
                        <li class="divider"></li>
                        <li><a href="qualityServices" >优质服务</a></li>
                    </ul>
                </li>
                <li><a href="caseCenter" >案例中心</a></li>
                <li><a href="customerMessage" >客户留言</a></li>
                <li><a href="contactUS">联系我们</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- 顶部导航end -->
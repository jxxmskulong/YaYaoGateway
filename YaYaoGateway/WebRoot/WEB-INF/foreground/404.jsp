<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>404</title>
    <meta content="width=device-width,initial-scale=1.0,maximum-scale=1,user-scalable=no" name="viewport" />	
	<meta name="pragma" content="no-cache">
	<meta name="cache-control" content="no-cache">
	<meta name="expires" content="0">    
	<meta name="keywords" content="雅耀,广告,代理,服务,茶叶,茶艺,保险">
	<meta name="description" content="雅耀（湖南）科技有限公司是一个线上线下结合形成一站式的综合性服务公司，业务涉及广泛，如广告，代理，茶叶，茶艺，保险，服务，活动等等">
	<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resources/css/base.css">
	<script type="text/javascript" src="resources/js/jQuery1.11.3.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap3.2.0.js"></script>
	<script type="text/javascript" src="resources/js/base.js"></script>
 	<script type="text/javascript">
 	$(function(){
 		$(".notFound").center(-60,0);
 	});
 	</script>
  </head>
  <body>
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
<!-- 404提示 -->
<div class="notFound text-center">
    <div id="notFound"><span id="notFound1">4</span><span id="notFound2">0</span><span id="notFound3">4</span></div>
    <p class="glyphicon glyphicon-remove" style="font-size:2em;color:green;">页面找不到了!</p>
    <div><a class="btn btn-default btn-lg" href="index">返回首页</a></div>
  </div>
   <!-- 404提示end -->
   <div style="height:600px;background-color:white"></div>
  <!-- 小球 -->
<div id="bottomhr">
  </div>
<!-- 小球end -->

  <!-- 底部 -->
  <div class="foot container">
  <div class="row">
  <!-- 联系我们 -->
  <div class="foot_link col-md-offset-4 col-md-5">
  <div>
                <p>
                    <a href="index">首页</a>|
                    <a href="#">招聘英才</a>|
                    <a href="#">广告合作</a>|
                    <a href="contactUS">联系我们</a>|
                    <a href="aboutUS">关于我们</a>
               </p>
   </div>
  <!-- 联系我们 end-->
  <div>
  <div class="foot_copy"><p>Copyright 2015 itcast Inc,All rights reserved.</p></div>
  </div>
  </div>
  <!-- 二维码 -->
  <div class="QRCode col-md-3">
  <img src="resources/img/YaYaoQRCode.jpg" style="width:80px;height:80px;"/>
  <div>网站二维码</div>
  <div>扫一扫，有惊喜哦！</div>
  </div>
  <!-- 二维码end -->
  </div>
  </div>
  </body>
</html>

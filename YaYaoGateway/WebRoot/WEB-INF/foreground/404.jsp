<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
  </head>
  <body>
  <!-- 顶部导航 -->
   <c:import url="template/navbarTemplate.jsp" charEncoding="utf-8" ></c:import>
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
<!-- foot -->
 <c:import url="template/footTemplate.jsp" charEncoding="utf-8" ></c:import>
  <!-- foot end-->
  <script type="text/javascript" src="resources/js/jQuery1.11.3.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap3.2.0.js"></script>
	<script type="text/javascript" src="resources/js/base.js"></script>
 	<script type="text/javascript">
 	$(function(){
 		$(".notFound").center(-60,0);
 	});
 	</script>
  </body>
</html>

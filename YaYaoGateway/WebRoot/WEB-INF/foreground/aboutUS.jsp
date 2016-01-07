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
    
    <title>关于我们</title>
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
<!-- 轮播主体图片 -->
 <c:import url="template/carouselTemplate.jsp" charEncoding="utf-8" ></c:import>
<!-- 主体轮播end -->
<!-- aboutUS -->
<div class="panel panel-default">
   <div class="panel-heading">
      <div class="page-header">
   		<h2 class="col-md-offset-1">aboutUS</h2>
	  </div>
		<ol class="col-md-offset-1 breadcrumb">
  			<li><a href="index">网站首页</a></li>
 			<li class="active">关于我们</li>
		</ol> 
	</div>
   <div class="panel-body">
  		 <div class="jumbotron container">
      		<p>雅耀（湖南）科技有限公司是一家专注于软件和信息技术服务业的公司，总部位于湖南省长沙市岳麓区。</p>
      		<p>雅耀（湖南）科技有限公司主要有软件开发；网络技术的研发；计算机技术开发、技术服务；会议及展览服务；广告制作服务；广告发布服务；其他广告服务；广告设计；广告国内外代理服务；文化活动的组织与策划。</p>
      		<p>2014年11月16日，在湖南省长沙市沙坪文化广场成功举办首届寻找湘绣最美绣女启动仪式。</p>
	  </div>
   </div>
</div>
<!-- aboutUS end -->
  <!-- 小球 -->
<div id="bottomhr">
  </div>
<!-- 小球end -->
  <!--回到顶部 -->
  <div>
  <a class="glyphicon glyphicon-hand-up"  id="gotoTop">回到顶部</a>
  </div>
  <!-- 回到顶部 end-->
  <!-- foot -->
  <c:import url="template/footTemplate.jsp" charEncoding="utf-8" ></c:import>
  <!-- foot end-->
  <script type="text/javascript" src="resources/js/jQuery1.11.3.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap3.2.0.js"></script>
	<script type="text/javascript" src="resources/js/base.js"></script>
	<script type="text/javascript" src="resources/js/aboutUS.js"></script>
  </body>
</html>

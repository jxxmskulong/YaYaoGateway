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
    
    <title>客户留言</title>
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
<!-- customerMessage -->
<div class="panel panel-default">
   <div class="panel-heading">
      <div class="page-header">
   		<h1 class="col-md-offset-1">customerMessage</h1>
	  </div>
		<ol class="col-md-offset-1 breadcrumb">
  			<li><a href="index">网站首页</a></li>
 			<li class="active">客户留言</li>
		</ol> 
	</div>
   <div class="panel-body">
  		 <div class="jumbotron container">
      	
      	<form id="customerForm" class="form-horizontal" role="form" action="addCustomerContent" method="post" name="customer">
   <div class="form-group">
      <p>我公司始终把客户的需求放在首位,更好地了解您的需求,提高我们的服务质量。"今天的质量、明天的市场、服务到永远"是我司为客户服务的准则，

要把它贯穿整个生态链中去。</p> 
   </div>
   <div class="form-group text-center">
      <label class=" control-label glyphicon glyphicon-pencil customerMessage">尊敬的客户，请填写您的需求，我们将竭诚为您服务！</label> 
   </div>
   <div class="form-group">
      <label for="userName" class="col-sm-2 control-label" >姓名</label>
      <div class="col-sm-8">
         <input type="text" class="form-control has-success"  id="userName" name="userName"
            placeholder="请输入您的姓名">
      </div>
   </div>
   <div class="form-group">
      <label for="tel" class="col-sm-2 control-label" >联系电话</label>
      <div class="col-sm-8">
         <input type="tel" class="form-control" id="cellPhone" name="cellPhone"
            placeholder="请输入您的电话号码">
      </div>
   </div>
   <div class="form-group">
      <label for="email" class="col-sm-2 control-label" >EMAIL</label>
      <div class="col-sm-8">
         <input type="email" class="form-control" id="email" name="email" 
            placeholder="请输入您的电子邮箱">
      </div>
   </div>
   <div class="form-group">
      <label for="content" class="col-sm-2 control-label" >意见与需求</label>
      <div class="col-sm-8">
         <textarea class="form-control" id="content" name="content" style="resize:vertical;"
            placeholder="请输入您的宝贵意见的需求！"></textarea>
      </div>
   </div>
   <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
         <button type="button" id="customerFormSubmit"  class="btn btn-default">提交</button>
      </div>
   </div>
</form>
      		
      	 </div>
	  </div>
   </div>
<!-- customerMessage end -->
  <!-- 小球 -->
<div id="bottomhr">
  </div>
<!-- 小球end -->
  <div>
  <!--回到顶部 -->
  <a class="glyphicon glyphicon-hand-up"  id="gotoTop">回到顶部</a>
  </div>
  <!-- 回到顶部 end-->
  <!-- foot -->
  <c:import url="template/footTemplate.jsp" charEncoding="utf-8" ></c:import>
  <!-- foot end-->
  <script type="text/javascript" src="resources/js/jQuery1.11.3.js"></script>
	<script type="text/javascript" src="resources/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap3.2.0.js"></script>
	<script type="text/javascript" src="resources/js/base.js"></script>
	<script type="text/javascript" src="resources/js/customerMessage.js"></script>
  </body>
</html>


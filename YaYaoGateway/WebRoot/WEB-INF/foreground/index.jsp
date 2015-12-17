<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
    <meta content="width=device-width,initial-scale=1.0,maximum-scale=1,user-scalable=no" name="viewport" />	
	<meta name="pragma" content="no-cache">
	<meta name="cache-control" content="no-cache">
	<meta name="expires" content="0">    
	<meta name="keywords" content="雅耀,广告,代理,服务,茶叶,茶艺,保险">
	<meta name="description" content="雅耀（湖南）科技有限公司是一个线上线下结合形成一站式的综合性服务公司，业务涉及广泛，如广告，代理，茶叶，茶艺，保险，服务，活动等等">
	<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resources/css/base.css">
	<script type="text/javascript" src="resources/js/jQuery1.11.3.js"></script>
	<script type="text/javascript" src="resources/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap3.2.0.js"></script>
	<script type="text/javascript" src="resources/js/base.js"></script>
	<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=3a8218d248222e29a8ed7fe0d29ff517"></script>
	<script type="text/javascript" src="resources/js/index.js"></script>
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
                <li class="active"><a href="index">网站首页</a></li>
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
<!-- 轮播主体图片 -->
<div id="myCarousel" class="carousel slide" style="margin-top:50px;">  
 <!-- 轮播（Carousel）指标 -->
   <!-- <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" 
         class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li> 
   </ol>   -->
   <!-- 轮播（Carousel）项目 -->
   <div class="carousel-inner">
      <div class="item active">
         <img src="resources/img/carousel/carousel1.jpg" alt="First slide">
      </div>
      <div class="item">
         <img src="resources/img/carousel/carousel2.jpg" alt="Second slide">
      </div> 
      <div class="item">
         <img src="resources/img/carousel/carousel3.jpg" alt="Third slide">
      </div>
   </div>
   <!-- 轮播（Carousel）导航 -->
   <a class="carousel-control left" href="#myCarousel" 
      data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
   <a class="carousel-control right" href="#myCarousel" 
      data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
</div> 
<!-- 主体轮播end -->
<!-- 服务 -->

<div class="container summary" style="width:auto;">
<div id="summary-container" class="row" style="padding:5%;background-color:white;">
        <div class="col-md-offset-1 col-md-3 text-center">
            <div class="glyphicon glyphicon-home" style="color:#ff3300;font-size:5em;"></div>
            <h2 style="color:#ff3300;">广告代理<br/>
            <small>Advertising agency</small>
            </h2>

            <p><a href="http://www.fengchuan100.com/">疯传</a>、<a href="http://toutiao.com/">今日头条</a>、<a href="http://www.cctvmall.com/">央视网商城</a>各大流量平台合作，为您的产品公司提供优质的服务。</p>

        </div>
        <div class="col-md-3 text-center">
            <div class="glyphicon glyphicon-th" style="color:#f0c239;font-size:5em;"></div>
           
            <h2 style="color:#f0c239;">渠道平台<br/>
            <small>Channel platform</small>
            </h2>

            <p><a href="http://www.gmw.cn/">光明网</a>、<a href="http://www.chinanews.com/">中国新闻网</a>、<a href="http://www.youth.cn/">中国青年网</a>等各大平台紧密联系，服务于生活，服务于客户。</p>

            </div>
        <div class="col-md-3 text-center">
            <div class="glyphicon glyphicon-leaf" style="color:#0c8918;font-size:5em;"></div>
           
            <h2 style="color:#0c8918;">一站式资源整合服务<br/>
            <small>One stop resource integration service</small>
            </h2>

            <p>调研、分析、整合、联系、执行、反馈、优化、服务！</p>

            </div>
       </div>
       </div>
       
<!-- 服务end -->
  <!-- 主体内容 -->
  <div style="padding-top:5%;background-color:#ffa400;">
  <div class="container" >
   <div id="indexContent" class="row">
 <!-- 联系我们 -->
  <div id="contactIndex" class="col-sm-5">
  <div class="container">
  <div class="row" style="color:white;font-size:1.5em;">
  	<div class="col-sm-offset-1"><span style="color:green">>></span>联系我们
  	</div>
  	<div class="col-sm-offset-1 LBSMAP_index" id="LBSMAP" >
  	
  	</div>
  	<div class="col-sm-offset-1 alert alert-info" id="index_concactUS" >
  	<div class="glyphicon glyphicon-home">&nbsp;湖南省长沙市岳麓区阳光城1107室</div>
  	<div class="glyphicon glyphicon-phone-alt">&nbsp;0731-88033992</div>
  	</div>
  </div>
  </div>
  </div>
  <!-- 联系我们end -->
  <!-- 客户表单 -->
  <div class="col-sm-7">
  <form id="customerForm" class="form-horizontal" role="form" action="addCustomerContent" method="post" name="customer">
   <div class="form-group text-center">
      <label class=" control-label glyphicon glyphicon-pencil" style="font-size:1.5em;color:#4b5cc4;" id="customerMessage">尊敬的客户，请填写您的需求，我们将竭诚为您服务！</label> 
   </div>
   <div class="form-group">
      <label for="userName" class="col-sm-2 control-label" style="color:white;font-size:1.2em;">姓名</label>
      <div class="col-sm-8">
         <input type="text" class="form-control has-success"  id="userName" name="userName"
            placeholder="请输入您的姓名">
      </div>
   </div>
   <div class="form-group">
      <label for="tel" class="col-sm-2 control-label" style="color:white;font-size:1.2em;">联系电话</label>
      <div class="col-sm-8">
         <input type="tel" class="form-control" id="cellPhone" name="cellPhone"
            placeholder="请输入您的电话号码">
      </div>
   </div>
   <div class="form-group">
      <label for="email" class="col-sm-2 control-label" style="color:white;font-size:1.2em;">EMAIL</label>
      <div class="col-sm-8">
         <input type="email" class="form-control" id="email" name="email" 
            placeholder="请输入您的点子邮箱">
      </div>
   </div>
   <div class="form-group">
      <label for="content" class="col-sm-2 control-label" style="color:white;font-size:1.2em;">意见与需求</label>
      <div class="col-sm-8">
         <textarea class="form-control" id="content" name="content" style="resize:vertical;"
            placeholder="请输入您的宝贵意见的需求！"></textarea>
      </div>
   </div>
  <%--  <input  type = "hidden" name= "token" value="${token}"/> --%>  
   <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
         <button type="submit" id="customerFormSubmit" onclick="javascript:return false;" class="btn btn-default">提交</button>
      </div>
   </div>
</form>
  </div>
  <!-- 客户表单end -->
  </div> 
  </div>
  <!-- 小球 -->
<div id="bottomhr">
  </div>
<!-- 小球end -->
  <div>
  <!--回到顶部 -->
  <a class="glyphicon glyphicon-hand-up"  id="gotoTop">回到顶部</a>
  </div>
  <!-- 回到顶部 end-->
  </div>
  <!-- 主体内容end -->
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
  
  <script type="text/javascript" src="resources/js/lbsmap.js"></script>
  </body>
</html>

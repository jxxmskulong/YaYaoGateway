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
    
    <title>招聘英才</title>
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
<!-- recruitingTalent -->
<div class="panel panel-default">
   <div class="panel-heading">
      <div class="page-header">
   		<h2 class="col-md-offset-1">recruitingTalent</h2>
	  </div>
		<ol class="col-md-offset-1 breadcrumb">
  			<li><a href="index">网站首页</a></li>
 			<li class="active">招聘英才</li>
		</ol> 
	</div>
   <div class="panel-body">
  		 <div class="jumbotron container">
      	<div class="container" style="text-shadow:0 0 2px olive;color:green;">
      	<h2 class="text-center" >销售精英</h2>
      	<h3>岗位职责：</h3>
		<p>1、经过公司系统的培训，能够熟悉企业业务流程，识别目标客户潜在需求；</p>
		<p>
		2、通过电话沟通预约时间再上门拜访, 寻求销售机会并努力完成各项销售指标；
		</p>
		<p>
		3、维护客户档案，对客户需求进行定期追踪；
		</p>
		<p>
		4、根据市场数据分析报告，改善销售渠道，提高客户满意度。<p>
		</p>
		<h3>
		任职资格： 
		</h3>
		<p>
		1、学历要求不限，热爱销售，有团队精神； 
		</p>
		<p>
		2、积极主动的心态，愿意接受挑战，能承受较大的工作压力； 
		</p>
		<p>
		3、性格外向，反应灵敏，沟通能力强； 
		</p>
		<p>
		4.热爱电话销售工作，语言表达能力优秀；
		</p>
		<p>
		5.有销售经验者优先考虑；
		</p>
		<p>
		6.有明确的职业发展方向和坚持的职业精神。
		</p>
      	</div>
  
      	 </div>
  		 <div class="jumbotron container">
      	<div class="container" style="text-shadow:0 0 2px olive;color:green;">
      	<h2 class="text-center" >媒介专员</h2>
      	<h3>岗位职责：</h3>
		<p>1.媒体资源采购洽谈、价格把控；</p>
		<p>
		2.公司产品推广媒体排布方案支持；
		</p>
		<p>
		3.资源发布执行、跟踪、监控、总结；
		</p>
		<h3>
		任职资格： 
		</h3>
		<p>
		1.备具优秀商务谈判能力、议价能力； 
		</p>
		<p>
		2.有资源竞争意识、了解网络媒体价值定位； 
		</p>
		<p>
		3.备具良好人际交往能力； 
		</p>
		<p>
		4.熟悉媒体单位或一年以上相关领域经验者优先；
		</p>
		<p>
		5 试用期1—3个月，正式录用基本工资2k—3k，能力卓越者可议；
		</p>
      	</div>
  
      	 </div>
	  </div>
   </div>
<!-- recruitingTalent end -->
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
  </body>
</html>


<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>联系我们</title>
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

<!-- newsDynamic -->
<div class="panel panel-default">
   <div class="panel-heading">
      <div class="page-header">
   		<h2 class="col-md-offset-1" style="display:inline-block;">newsDynamic</h2>
		 <ul class=" col-md-offset-8 list-inline newsDynamic_ul">
  			<li><a href="industryInformation">行业资讯</a></li>
 			<li><a href="companyNews">公司新闻</a></li>
 			<li><a href="qualityServices">优质服务</a></li>
		</ul>
	  </div>
		<ol class="col-md-offset-1 breadcrumb">
  			<li><a href="index">网站首页</a></li>
 			<li >新闻动态</li>
 			<c:if test="${newsList.size()>=0}">
 			<li class="active">${newsList[0].type}</li>
 			</c:if>
 			<c:if test="${news!=null}">
 			<li>${news.type}</li>
 			<li class="active">${news.title}</li>
 			</c:if>
		</ol> 
	</div>
   <div class="panel-body">
  		 <div class="container">
  		 
 <!-- 主体内容 -->
   <div class="row">
		<!-- 新闻列表 -->
		<ul class="list-group">
		<c:forEach items="${newsList}" var="nList" varStatus="status" >
   			<li class="list-group-item">
   			   <c:if test="${pageMap.pageNo ==1 }">
   			   <span class="badge" style="background-color:red;">新</span>
   			   </c:if> 
   				<h3>
   				<a href="newsDynamic/${ nList.id}">${nList.title }</a>
   				</h3>
   				<span class="text-success">
   				<fmt:formatDate value="${nList.createDate }" pattern="yyyy年MM月dd日 HH:mm"/>
   				</span>
   				<div class="text-justify" style="color:#999;white-space:nowrap; width:80%;height:1.5em; overflow: hidden; text-overflow:ellipsis">${nList.content }</div>
   			</li>
		</c:forEach>
		</ul>
		<!-- 新闻列表 end -->
		<!-- 新闻实体 -->
		<c:if test="${news!=null}">
		<div class="page-header text-center">
   			<h1>${news.title}
   			</h1>
      			<small style="font-style:oblique;">作者:${news.author}  &nbsp;&nbsp;发布时间:<fmt:formatDate value="${news.createDate}" pattern="yyyy年MM月dd日 HH:mm"/>  &nbsp;&nbsp; 总浏览数${news.views}次</small>
		</div>
		<div id="contentText"><p>${news.content}</p></div>
		</c:if>
		<!-- 新闻实体end -->
		<!-- 分页 -->
		
		<!-- 行业资讯-->
		<c:if test="${newsList[0].type=='行业资讯'}"> 
		<div class="col-sm-offset-5">
		<ul class="pagination">
  			<li>
  			<a href="industryInformation/pagination/prevPage"
  			<c:if test="${pageMap.pageNo==1}">
  			onClick="return false;"
  			</c:if>
  			>
  			&laquo;</a>
  			</li>
  			<c:if test="${pageMap.totalPage<=pageMap.pageNo+4}">
  			<c:forEach begin="${pageMap.pageNo}" end="${pageMap.totalPage}" varStatus="status">
  			<li <c:if test="${status.index==pageMap.pageNo}">
  			class="active"
  			</c:if>
  			><a href="industryInformation/pagination/${status.index }">${status.index}</a></li>
  			</c:forEach>
  			</c:if>
  			<c:if test="${pageMap.totalPage>pageMap.pageNo+4}">
  			<c:forEach begin="${pageMap.pageNo}" end="${pageMap.pageNo+4}" varStatus="status">
  			<li <c:if test="${status.index==pageMap.pageNo}">
  			class="active"
  			</c:if>
  			><a href="industryInformation/pagination/${status.index }">${status.index}</a></li>
  			</c:forEach>
  			</c:if>
  			
  			<li><a href="industryInformation/pagination/nextPage"
  			<c:if test="${pageMap.pageNo==pageMap.totalPage}">
  			onClick="return false;"
  			</c:if>
  			>&raquo;</a></li>
		</ul>
		</div>
		</c:if> 
		<!-- 行业资讯 end-->
		
			<!--公司新闻-->
		<c:if test="${newsList[0].type=='公司新闻'}"> 
		<div class="col-sm-offset-5">
		<ul class="pagination">
  			<li>
  			<a 
  			href="companyNews/pagination/prevPage"
  			<c:if test="${pageMap.pageNo==1}">
  			onClick="return false;"
  			</c:if>
  			>
  			&laquo;</a>
  			</li>
			
  			
  			<c:if test="${pageMap.totalPage<=pageMap.pageNo+4}">
  			<c:forEach begin="${pageMap.pageNo}" end="${pageMap.totalPage}" varStatus="status">
  			<li <c:if test="${status.index==pageMap.pageNo}">
  			class="active"
  			</c:if>
  			><a href="companyNews/pagination/${status.index }">${status.index}</a></li>
  			</c:forEach>
  			</c:if>
  			<c:if test="${pageMap.totalPage>pageMap.pageNo+4}">
  			<c:forEach begin="${pageMap.pageNo}" end="${pageMap.pageNo+4}" varStatus="status">
  			<li <c:if test="${status.index==pageMap.pageNo}">
  			class="active"
  			</c:if>
  			><a href="companyNews/pagination/${status.index }">${status.index}</a></li>
  			</c:forEach>
  			</c:if>
  			<li><a href="companyNews/pagination/nextPage"
  			<c:if test="${pageMap.pageNo==pageMap.totalPage}">
  			onClick="return false;"
  			</c:if>
  			>&raquo;</a></li>
		</ul>
		</div>
		</c:if> 
		<!-- 公司新闻 end-->
		
			<!-- 优质服务-->
		<c:if test="${newsList[0].type=='优质服务'}"> 
		<div class="col-sm-offset-5">
		<ul class="pagination">
  			<li>
  			<a href="qualityServices/pagination/prevPage"
  			<c:if test="${pageMap.pageNo==1}">
  			onClick="return false;"
  			</c:if>
  			>
  			&laquo;</a>
  			</li>
  			<c:if test="${pageMap.totalPage<=pageMap.pageNo+4}">
  			<c:forEach begin="${pageMap.pageNo}" end="${pageMap.totalPage}" varStatus="status">
  			<li <c:if test="${status.index==pageMap.pageNo}">
  			class="active"
  			</c:if>
  			><a href="qualityServices/pagination/${status.index }">${status.index}</a></li>
  			</c:forEach>
  			</c:if>
  			<c:if test="${pageMap.totalPage>pageMap.pageNo+4}">
  			<c:forEach begin="${pageMap.pageNo}" end="${pageMap.pageNo+4}" varStatus="status">
  			<li <c:if test="${status.index==pageMap.pageNo}">
  			class="active"
  			</c:if>
  			><a href="qualityServices/pagination/${status.index }">${status.index}</a></li>
  			</c:forEach>
  			</c:if>
  			<li><a href="qualityServices/pagination/nextPage"
  			<c:if test="${pageMap.pageNo==pageMap.totalPage}">
  			onClick="return false;"
  			</c:if>
  			>&raquo;</a></li>
		</ul>
		</div>
		</c:if> 
		<!-- 优质服务 end-->
		<c:if test="${newsList!=null}">
		<div style="color:#cccccc" class="text-center">共
		${pageMap.totalPage}
		页
		</div>
		</c:if>
		<!-- 分页 end -->
  </div>
  <!-- 主题内容end -->
  		 
  		 </div>
  	</div>
  	</div>
 <!-- newsDynamic end -->
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
	<script type="text/javascript" src="resources/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap3.2.0.js"></script>
	<script type="text/javascript" src="resources/js/base.js"></script>
	<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=3a8218d248222e29a8ed7fe0d29ff517"></script>
	<script type="text/javascript" src="resources/js/newsDynamic.js"></script>
  </body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%    
String path = request.getContextPath();    
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
%> 
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
		<title>雅耀官网后台管理登陆</title>
	<meta content="width=device-width,initial-scale=1.0,maximum-scale=1,user-scalable=no" name="viewport" />	
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<script type="text/javascript" src="resources/js/jQuery1.11.3.js"></script>
	
</head>
<body style="background-color:#d9d919;">
<div><!-- 整体 -->
	<!-- Header-->
  	 <div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<h3 class="text-center">
					<strong><span class="marker"><strong style="color:green;font-size:36px;">雅耀官网管理系统<br/><small style="color:white;">YaYaoGateway Management System</small></strong></span></strong>
				</h3>
			</div>
		</div>
	</div>
	<div class="row" id="ht_login"  style="width:300px;padding:10px;margin:100px auto 200px;border-radius:10px;background-color:green;">
	<form class="form-horizontal" role="form" method="post" action="adminLogin.dhtml">
	<div class="form-group">
    <label for="inputTitle" class="col-sm-7 control-label">用户登陆</label>
  </div>
  
  <div class="form-group" style="text-align:center;">
    <span style="background-color:#801dae;padding:9px;border:1px solid #801dae;margin-right:-5px;border-radius:5px 0 0 5px;color:white;"><span class="glyphicon glyphicon-user"></span></span>
    <input type="text" style="padding:7px;border:1px solid #801dae;margin-right:-5px;border-radius:0 5px 5px 0;"   name="ht_loginName" placeholder="账户名">
  </div>
  <div class="form-group" style="text-align:center;">
    <span style="background-color:#801dae;padding:9px;border:1px solid #801dae;margin-right:-5px;border-radius:5px 0 0 5px;color:white;"><span class="glyphicon glyphicon-lock"></span></span>
    <input type="password" style="padding:7px;border:1px solid #801dae;margin-right:-5px;border-radius:0 5px 5px 0;"   name="ht_loginPwd" placeholder="账户密码">
    
  </div>
  <div class="form-group" style="text-align:center;">
    <div class=" col-sm-10">
      <input type="submit" style="padding:8px;color:#801dae;font-size:16px;" class="btn btn-default" value="登&nbsp;&nbsp;&nbsp;&nbsp;录"></input>
    </div>
  </div>
</form>
	
	</div>

</div>
</body>
</html>
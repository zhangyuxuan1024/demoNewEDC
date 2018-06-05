<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.main.WebConfig"%>
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	$(function() {
		$(".dropdown-toggle").dropdown('toggle');
	});
</script>
<body>
	<div id="navbar" class="navbar navbar-default navbar-fixed-top">
		<div id="navbar-container" class="navbar-container">
			<div class="navbar-header pull-left">
				<a herf="#" class="navbar-brand">
					<small>
						<i class="fa fa-leaf"></i>
						<%=WebConfig.PROJECTNAME%>
					</small>
				</a>
			</div>
			<div class="navbar-header pull-right" style="margin-right: 10px">
				<ul class="nav navbar-nav ">
					<li>
						<small style="font-size: 16px" class="navbar-brand">
							欢迎您，
							<b id="userName" name="userName">XDD</b>
							!
						</small>
					</li>
					<li>
						<a href="<%=basePath%>" class="dropdown-toggle" data-toggle="dropdown">
							<big>
								<i class="ace-icon fa fa-cog bigger-130"></i>
							</big>
						</a>
						<ul
							class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li>
								<a href="#" style="font-size: 15px">
									<i class="ace-icon glyphicon glyphicon-home"></i>
									返回首页
								</a>
							</li>
							<li>
								<a style="font-size: 15px">
									<i class="ace-icon glyphicon glyphicon-edit"></i>
									修改密码
								</a>
							</li>
							<li>
								<a href="<%=basePath%>" style="font-size: 15px">
									<i class="ace-icon glyphicon glyphicon-off"></i>
									退出登录
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
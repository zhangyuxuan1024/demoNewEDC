<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.main.WebConfig"%>
<%@ page import="java.util.Date"%>
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=WebConfig.TITLE%></title>
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/bootstrap.css" />
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/font-awesome.css" />
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/ace-fonts.css" />
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/ace.css" />
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/ace-rtl.css" />
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/ace-skins.css" />
<script src="<%=basePath%>/script/assets/js/ace-extra.js"></script>
<script src="<%=basePath%>/script/jquery-1.11.2.min.js"></script>
<script src="<%=basePath%>/script/assets/js/bootstrap.js"></script>
<script src="<%=basePath%>/script/assets/js/ace-elements.js"></script>
<script src="<%=basePath%>/script/assets/js/ace.js"></script>
<script src="<%=basePath%>/script/framework.js"></script>
<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->
<!--[if lte IE 8]>
	    <script src="<%=basePath%>/script/assets/js/html5shiv.js"></script>
	    <script src="<%=basePath%>/script/assets/js/respond.js"></script>
	    <![endif]-->
<!--[if lte IE 8]>
	    <script src="<%=basePath%>/script/assets/js/excanvas.js"></script>
	    <![endif]-->
<!--[if lte IE 9]>
	    <link rel="stylesheet" href="<%=basePath%>/script/assets/css/ace-part2.css" class="ace-main-stylesheet" />
	    <![endif]-->
<!--[if lte IE 9]>
	    <link rel="stylesheet" href="<%=basePath%>/script/assets/css/ace-ie.css" />
	    <![endif]-->
</head>
<script type="text/javascript">
	function login() {
	    var userName = $("#userName").val();
	    var passWord = $("#passWord").val();
	    if (userName == "" || passWord == "") {
	        alert("账号或密码有误");
	    } else {
	        window.location.assign(encodeURI("<%=basePath%>/project/subject/index.jsp?userName=" + userName));
	    }
	}
</script>
<body>
	<div id="navbar" class="navbar navbar-default">
		<div id="navbar-container" class="navbar-container">
			<div class="navbar-header pull-left">
				<a herf="#" class="navbar-brand">
					<small>
						<i class="fa fa-leaf"></i>
						<%=WebConfig.PROJECTNAME%>
					</small>
				</a>
			</div>
		</div>
	</div>
	<div id="main-container" class="main-container">
		<div class="main-container-inner">
			<div id="login-box" class="login-box visible widget-box no-border"
				style="margin-left: auto; margin-right: auto; width: 400px;">
				<div class="widget-main">
					<div class="space-32"></div>
					<h4 class="header blue light bigger">
						<i class="ace-icon fa fa-star orange"></i>
						用户登录
					</h4>
					<div class="space-6"></div>
					<form id="userInfo" method="post">
						<fieldset>
							<label class="block clearfix">
								<div class="input-group">
									<span class="input-group-addon">
										<i class="ace-icon glyphicon glyphicon-user"></i>
									</span>
									<input type="text" id="userName" maxlength="10" placeholder="Username"
										class="col-xs-12 col-sm-12">
								</div>
							</label>
							<label class="block clearfix" style="margin-top: 10px; margin-bottom: 30px">
								<div class="input-group">
									<span class="input-group-addon">
										<i class="ace-icon glyphicon glyphicon-lock"></i>
									</span>
									<input type="password" id="passWord" maxlength="10" placeholder="Password"
										class="col-xs-12 col-sm-12">
								</div>
							</label>
						</fieldset>
					</form>
				</div>
				<div class="row">
					<a data-toggle="modal" data-target="#register" style="margin-left:  30px">忘记密码</a>
					<button class="btn btn-white pull-right" style="margin-right: 30px; width: 150px"
						onclick="login()">登录</button>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="footer-inner">
			<div class="footer-content">
				<span class="bigger-120">
					<script type="text/javascript">
                    	document.write("<%=WebConfig.FOOTERNAME%> &copy; <%=WebConfig.COPYRIGHT%>2015 - "+<%=new Date().getYear() + 1900%>);
					</script>
				</span>
			</div>
		</div>
	</div>
	<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">提示</h4>
				</div>
				<div class="modal-body">目前暂不支持个人注册</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary">提交更改</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
</body>
</html>
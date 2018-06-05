<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.main.WebConfig"%>
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><%=WebConfig.TITLE%></title>
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/bootstrap.css" />
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/font-awesome.css" />
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/ace-fonts.css" />
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/ace.css" />
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/ace-rtl.css" />
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/ace-skins.css" />
<style type="text/css">
form .abcdefg {
	border: 1px solid red
}
</style>
<script src="<%=basePath%>/script/assets/js/ace-extra.js"></script>
<script src="<%=basePath%>/script/jquery-1.11.2.min.js"></script>
<script src="<%=basePath%>/script/jquery.tmpl.js"></script>
<script src="<%=basePath%>/script/assets/js/bootstrap.js"></script>
<script src="<%=basePath%>/script/assets/js/ace-elements.js"></script>
<script src="<%=basePath%>/script/assets/js/ace.js"></script>
<script src="<%=basePath%>/script/framework.js"></script>
<script src="<%=basePath%>/script/edc.js"></script>
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
	$(document).ready(function() {
		$("#main-content1").scrollTop(0);
		$("#main-content2").scrollTop(0);
		$("#main-content3").scrollTop(0);
	});
</script>
<body class="no-skin">
	<div id="header">
		<jsp:include page="./_header.jsp" />
	</div>
	<div class="sidebar sidebar-fixed" id="sidebar">
		<jsp:include page="./_left.jsp" />
	</div>
	<div style="position: fixed; width: 100%; margin-left: 300px; z-index: 9999" id="breadcrumb">
		<jsp:include page="./_breadcrumb.jsp" />
	</div>
	<div class="main-content" style="margin-left: 300px; margin-top: 45px; padding: 8px 20px 24px; background: white;">
		<div class="main-content-inner">
			<div class="platform">
				<jsp:include page="./_default.jsp" />
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="footer-inner">
			<div class="footer-content">
				<span class="bigger-120">
					<script type="text/javascript">
						document.write("POWER EDC &copy; ClinDM 2015 - "
								+ (currentDate.getFullYear()));
					</script>
				</span>
			</div>
		</div>
	</div>
	<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse display">
		<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
	</a>
</body>
</html>

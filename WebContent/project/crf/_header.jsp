<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page import="com.main.WebConfig"%>
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
%>
<script type="text/javascript" charset="UTF-8">

</script>
<div class="navbar navbar-default navbar-fixed-top" id="navbar">
	<div class="navbar-container" id="navbar-container">
		<div class="navbar-header pull-left">
			<a href="#" class="navbar-brand">
				<small>
					<i class="fa fa-leaf"></i>
					<%=WebConfig.PROJECTNAME%>
				</small>
			</a>
		</div>
		<div class="navbar-header pull-right">
			<a href="#" class="navbar-brand">
				<small style="font-size: 16px">
					欢迎您，
					<b id="userName" name="userName">XDD</b>
					!
				</small>
			</a>
		</div>
	</div>
</div>
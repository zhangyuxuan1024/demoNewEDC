<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.main.WebConfig"%>
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
%>
<div style="line-height: 40px; background-color: #f5f5f5; text-align: left;" class="col-sm-12">
	<div style="display: inline;" class="col-sm-2">
		<%=WebConfig.SUBJECTNO_DESC%>:
		<span class="text-primary">
			<strong>0053</strong>
		</span>
	</div>
	<div style="display: inline;" class="col-sm-2">
		<%=WebConfig.SUBJECTINITIAL_DESC%>:
		<span class="text-primary">
			<strong>yys</strong>
		</span>
	</div>
	<div style="display: inline;" class="col-sm-2">
		<%=WebConfig.SUBJECTCODE_DESC%>:
		<span class="text-primary">
			<strong>20170606</strong>
		</span>
	</div>
</div>

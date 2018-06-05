<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
%>
<script src="<%=basePath%>/script/jquery-1.11.2.min.js"></script>
<div class="sidebar sidebar-fixed" id="sidebar">
	<div class="sidebar-shortcuts" id="sidebar-shortcuts" class="sidebar-shortcuts-large">
		<div style="margin: 5px auto; font-size: 18px; font-weight: bold;">功能菜单</div>
	</div>
	<ul class="nav nav-list">
		<li class="open">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-list"></i>
				<span class="menu-text">受试者管理</span>
				<b class="arrow fa fa-angle-down"></b>
			</a>
			<b class="arrow"></b>
			<ul class="submenu">
				<li class="">
					<a href='javascript:invokeJSP("subject", "<%=basePath%>/project/subject/business/userinfo.jsp")'>
						<i class="menu-icon fa fa-caret-right"></i>
						受试者信息
					</a>
					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='javascript:invokeJSP("subject", "<%=basePath%>/project/subject/business/pendingquery.jsp")'>
						<i class="menu-icon fa fa-caret-right"></i>
						查看待处理疑问
					</a>
					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='javascript:invokeJSP("subject", "<%=basePath%>/project/subject/business/pendingquery2.jsp")'>
						<i class="menu-icon fa fa-caret-right"></i>
						查看待处理疑问2
					</a>
					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='javascript:invokeJSP("subject", "<%=basePath%>/project/subject/business/pendingquery3.jsp")'>
						<i class="menu-icon fa fa-caret-right"></i>
						查看待处理疑问3
					</a>
					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='javascript:invokeJSP("subject", "<%=basePath%>/project/subject/business/allquery.jsp")'>
						<i class="menu-icon fa fa-caret-right"></i>
						查看所有疑问
					</a>
					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='javascript:invokeJSP("subject", "<%=basePath%>/project/subject/business/enterstate.jsp")'>
						<i class="menu-icon fa fa-caret-right"></i>
						查看录入情况
					</a>
					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='javascript:invokeJSP("subject", "<%=basePath%>/project/subject/business/followstatus.jsp")'>
						<i class="menu-icon fa fa-caret-right"></i>
						查看随访情况
					</a>
					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='javascript:invokeJSP("subject", "<%=basePath%>/project/subject/business/followstatus2.jsp")'>
						<i class="menu-icon fa fa-caret-right"></i>
						查看随访情况2
					</a>
					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='javascript:invokeJSP("subject", "<%=basePath%>/project/subject/business/e-sign.jsp")'>
						<i class="menu-icon fa fa-caret-right"></i>
						查看电子签名情况
					</a>
					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='javascript:invokeJSP("subject", "<%=basePath%>/project/subject/business/sdvstatus.jsp")'>
						<i class="menu-icon fa fa-caret-right"></i>
						查看SDV情况
					</a>
					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='javascript:invokeJSP("subject", "<%=basePath%>/project/subject/business/registerstatus.jsp")'>
						<i class="menu-icon fa fa-caret-right"></i>
						查看注册情况列表
					</a>
					<b class="arrow"></b>
				</li>
			</ul>
		</li>
		<li>
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-list-alt"></i>
				<span class="menu-text">列表</span>
				<b class="arrow fa fa-angle-down"></b>
			</a>
			<b class="arrow"></b>
			<ul class="submenu">
				<li class="">
					<a href='<%=basePath%>/project/subject/business/cmList.jsp' target="_blank">
						<i class="menu-icon fa fa-caret-right"></i>
						合并用药列表
					</a>
					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='<%=basePath%>/project/subject/business/event.jsp' target="_blank">
						<i class="menu-icon fa fa-caret-right"></i>
						事件表列表
					</a>
					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='<%=basePath%>/project/subject/business/404(1).jsp' target="_blank">
						<i class="menu-icon fa fa-caret-right"></i>
						404(1)
					</a>
					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='<%=basePath%>/project/subject/business/404(2).jsp' target="_blank">
						<i class="menu-icon fa fa-caret-right"></i>
						404(2)
					</a>
					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='<%=basePath%>/project/subject/business/404(3).jsp' target="_blank">
						<i class="menu-icon fa fa-caret-right"></i>
						404(3)
					</a>
					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='<%=basePath%>/project/subject/business/500(1).jsp' target="_blank">
						<i class="menu-icon fa fa-caret-right"></i>
						500(1)
					</a>
					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='<%=basePath%>/project/subject/business/500(2).jsp' target="_blank">
						<i class="menu-icon fa fa-caret-right"></i>
						500(2)
					</a>
					<b class="arrow"></b>
				</li>
				<li class="">
					<a href='<%=basePath%>/project/subject/business/500(3).jsp' target="_blank">
						<i class="menu-icon fa fa-caret-right"></i>
						500(3)
					</a>
					<b class="arrow"></b>
				</li>
			</ul>
		</li>
	</ul>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.nav li a').click(function() {
				var b = $(this).hasClass("dropdown-toggle");
				if (!b) {
					$('.nav li').removeClass("active");
					$(this).parent().addClass("active");
				}
			});
		});
	</script>
</div>
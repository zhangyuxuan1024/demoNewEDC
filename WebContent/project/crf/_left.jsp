<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page import="com.main.WebConfig"%>
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
%>
<div class="sidebar-shortcuts" id="sidebar-shortcuts" class="sidebar-shortcuts-large">
	<div style="margin: 5px auto; font-size: 18px; font-weight: bold;">
		<span onclick="sendTo('<%=basePath%>/project/subject/index.jsp ')" style="cursor: pointer">
			<i class="ace-icon fa fa-home home-icon"></i>
			返回首页
		</span>
	</div>
</div>
<ul class="nav nav-list" style="top: 0px">
	<li class="open">
		<a href="#" class="dropdown-toggle">
			<i class="ace-icon glyphicon glyphicon-edit green"></i>
			<span class="menu-text">基线期/筛选期</span>
		</a>
		<b class="arrow"></b>
		<ul class="submenu">
			<li>
				<a href='javascript:invokeJSP("crf", "<%=basePath%>/project/crf/business/baseinfo.jsp")' onclick="scrollTop(0)">
					基线
					<span class="label label-info arrowed-in-right arrowed">Info</span>
					<i class="menu-icon fa fa-caret-right"></i>
				</a>
				<b class="arrow"></b>
			</li>
			<li>
				<a href='javascript:invokeJSP("crf", "<%=basePath%>/project/crf/business/ie.jsp")' onclick="scrollTop(0)">
					入选排除标准
					&nbsp;&nbsp;&nbsp;&nbsp;
					<i class="ace-icon fa fa-bullhorn" style="color: red;"></i>
					<i class="menu-icon fa fa-caret-right"></i>
				</a>
				<b class="arrow"></b>
			</li>
			<li>
				<a href='javascript:invokeJSP("crf", "<%=basePath%>/project/crf/business/operation.jsp")' onclick="scrollTop(0)">
					手术过程记录
					&nbsp;&nbsp;&nbsp;&nbsp;
					<i class="ace-icon fa fa-bell" style="color: green;"></i>
					<i class="menu-icon fa fa-caret-right"></i>
				</a>
				<b class="arrow"></b>
			</li>
		</ul>
	</li>
	<li>
		<a href="#" class="dropdown-toggle">
			<i class="ace-icon glyphicon glyphicon-edit green"></i>
			<span class="menu-text">术后30天</span>
		</a>
		<b class="arrow"></b>
		<ul class="submenu">
			<li>
				<a href='javascript:invokeJSP("crf", "<%=basePath%>/project/crf/business/qol_v1.jsp")'>
					神经系统一般观察
					&nbsp;&nbsp;&nbsp;&nbsp;
					<i class="ace-icon fa fa-beer" style="color: orange;"></i>
					&nbsp;&nbsp;
					<i class="ace-icon fa fa-barcode" style="color: fuchsia;"></i>
					&nbsp;&nbsp;
					<i class="ace-icon fa fa-asterisk" style="color:aqua;"></i>
					<i class="menu-icon fa fa-caret-right"></i>
				</a>
				<b class="arrow"></b>
			</li>
			<li>
				<a href='javascript:invokeJSP("crf", "<%=basePath%>/project/crf/business/csjc_v1.jsp")'>
					辅助情况和肺功能
					<span style="color: red; font-size: 16px">
						&nbsp;
						<b>?</b>
					</span>
					<span style="color: green; font-size: 16px">
						&nbsp;
						<b>!</b>
					</span>
					<i class="menu-icon fa fa-caret-right"></i>
				</a>
				<b class="arrow"></b>
			</li>
		</ul>
	</li>
	<li>
		<a href="#" class="dropdown-toggle">
			<i class="ace-icon glyphicon glyphicon-edit green"></i>
			<span class="menu-text">术后60天</span>
		</a>
		<b class="arrow"></b>
		<ul class="submenu">
			<li>
				<a href='javascript:invokeJSP("crf", "<%=basePath%>/project/crf/business/qol_v2.jsp")'>
					神经系统一般观察
					<i class="label label-info arrowed-in-right arrowed" style="margin-right: 50px">Info</i>
					<i class="menu-icon fa fa-caret-right"></i>
				</a>
				<b class="arrow"></b>
			</li>
			<li>
				<a href='javascript:invokeJSP("crf", "<%=basePath%>/project/pi/crf/business/csjc_v2.jsp")'>
					辅助情况和肺功能辅助情况和肺功能辅助情况和肺功能辅助情况和肺功能
					<i class="label label-info arrowed-in-right arrowed" style="margin-right: 50px">Info</i>
					<i class="menu-icon fa fa-caret-right"></i>
				</a>
				<b class="arrow"></b>
			</li>
		</ul>
	</li>
	<li>
		<a href="#" class="dropdown-toggle">
			<i class="ace-icon glyphicon glyphicon-edit green"></i>
			<span class="menu-text">术后90天</span>
		</a>
		<b class="arrow"></b>
		<ul class="submenu">
			<li>
				<a href='javascript:invokeJSP("crf", "<%=basePath%>/project/crf/business/qol_v3.jsp")'>
					神经系统一般观察
					<i class="menu-icon fa fa-caret-right"></i>
				</a>
				<b class="arrow"></b>
			</li>
			<li>
				<a href='javascript:invokeJSP("crf", "<%=basePath%>/project/crf/business/csjc_v3.jsp")'>
					辅助情况和肺功能
					<i class="menu-icon fa fa-caret-right"></i>
				</a>
				<b class="arrow"></b>
			</li>
		</ul>
	</li>
	<li>
		<a href='javascript:invokeJSP("crf", "<%=basePath%>/project/crf/business/cmList.jsp")'>
			<i class="ace-icon glyphicon glyphicon-edit green"></i>
			合并用药
			<span style="color: red; font-size: 16px">
				&nbsp;
				<b>?</b>
			</span>
			<span style="color: green; font-size: 16px">
				&nbsp;
				<b>!</b>
			</span>
		</a>
		<b class="arrow"></b>
	</li>
	<li>
		<a href='javascript:invokeJSP("crf", "<%=basePath%>/project/crf/business/aeList.jsp")'>
			<i class="ace-icon glyphicon glyphicon-edit green"></i>
			不良事件
			<span class="badge badge-transparent tooltip-error">
				<i class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
			</span>
		</a>
		<b class="arrow"></b>
	</li>
	<li>
		<a href='javascript:invokeJSP("crf", "<%=basePath%>/project/crf/business/summary.jsp")'>
			<i class="ace-icon glyphicon glyphicon-edit green"></i>
			备注页
		</a>
		<b class="arrow"></b>
	</li>
</ul>
<script>
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
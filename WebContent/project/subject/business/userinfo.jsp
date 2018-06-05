<%@page import="com.main.UserAction"%>
<%@ page import="com.main.WebConfig"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.main.Subject"%>
<%
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bootstrap Modal</title>
<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="../assets/css/bootstrap.css" />
<link rel="stylesheet" href="../assets/css/font-awesome.css" />
<!-- page specific plugin styles -->
<link rel="stylesheet" href="../assets/css/jquery-ui.css" />
<!-- text fonts -->
<link rel="stylesheet" href="../assets/css/ace-fonts.css" />
<!-- ace styles -->
<link rel="stylesheet" href="../assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
<!--[if lte IE 9]>
			<link rel="stylesheet" href="../assets/css/ace-part2.css" class="ace-main-stylesheet" />
		<![endif]-->
<!--[if lte IE 9]>
		  <link rel="stylesheet" href="../assets/css/ace-ie.css" />
		<![endif]-->
<!-- inline styles related to this page -->
<!-- ace settings handler -->
<script src="../assets/js/ace-extra.js"></script>
<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->
<!--[if lte IE 8]>
		<script src="../assets/js/html5shiv.js"></script>
		<script src="../assets/js/respond.js"></script>
		<![endif]-->
<link rel="stylesheet" href="../izi/iziModal.min.css">
<script src="../jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="../iziModal.min.js" type="text/javascript"></script>
</head>
<body>
	<div>
		<div class="breadcrumbs" id="breadcrumbs">
			<i class="ace-icon fa fa-pencil-square-o bigger-180"
				style="vertical-align: middle; margin-left: 10px"></i>
			<big>
				<b>创建受试者信息</b>
			</big>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<form id="createSubject" method="post" class="form-horizontal" role="form">
					<br />
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 中心编号： </label>
						<select id="siteNo" class="col-sm-3">
							<option></option>
							<option>01-上海长海医院</option>
							<option>02-湖北省中山医院</option>
							<option>03-常州市第一人民医院</option>
							<option>04-浙江大学医学院附属医院</option>
							<option>05-广东省中医院</option>
							<option>06-郑州大学第一附属医院</option>
							<option>07-南京市第一医院</option>
							<option>08-吉林大学第一医院</option>
							<option>09-中山大学第五附属医院</option>
						</select>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 筛选编号： </label>
						<input id="randomNo" type="text" placeholder="请输入四位数字" class="col-sm-2">
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 姓名缩写： </label>
						<input id="personName" type="text" placeholder="请输入姓名拼音小写首字母 " class="col-sm-3">
					</div>
					<br />
					<div class="form-group">
						<div class="col-sm-12 control-label no-padding-right" for="form-field-1">
							<div class="col-sm-4">
								<button class="btn btn-primary">创建受试者</button>
							</div>
						</div>
					</div>
				</form>
				<br /> <br />
			</div>
		</div>
		<div class="breadcrumbs" id="breadcrumbs">
			<i class="ace-icon glyphicon glyphicon-search bigger-180"
				style="vertical-align: middle; margin-left: 10px"></i>
			<big>
				<b>查询受试者信息</b>
			</big>
		</div>
		<br />
		<div class="row">
			<div class="col-sm-12">
				<form class="form-horizontal" role="form">
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 研究中心编号： </label>
						<input class="col-sm-2" type="text" placeholder="请输入研究中心编号">
						<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 筛选编号： </label>
						<input class="col-sm-2" type="text" placeholder="请输入筛选编号">
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 受试者注册号： </label>
						<input class="col-sm-2" type="text" placeholder="请输入受试者注册号">
						<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 姓名缩写： </label>
						<input class="col-sm-3" type="text" placeholder="请输入姓名拼音小写首字母">
					</div>
					<div class="form-group">
						<div class="col-sm-12 control-label no-padding-right" for="form-field-1">
							<div class="col-sm-4">
								<button class="btn btn-primary">查询受试者</button>
							</div>
							<div class="col-sm-4" style="text-align: center;">
								<button class="btn btn-primary">重置查询</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div>
			<div id="sample-table-2_wrapper" class="dataTables_wrapper form-inline no-footer">
				<table id="sample-table-2"
					class="table table-striped table-bordered table-hover dataTable no-footer" width="100%">
					<thead>
						<tr>
							<th width="8%" style="text-align: center">序号</th>
							<th width="25%" style="text-align: center">研究中心编号</th>
							<th width="12%" style="text-align: center">筛选编号</th>
							<th width="20%" style="text-align: center">姓名缩写</th>
							<th width="15%" style="text-align: center">受试者注册号</th>
							<th width="20%" style="text-align: center">操作</th>
						</tr>
					</thead>
					<tbody>
						<%
							List<Subject> pList = UserAction.get_userinfo();
											for (int i = 0; i < pList.size(); i++) {
						%>
						<tr class="odd" style="text-align: center">
							<td><%=i + 1%></td>
							<td><%=pList.get(i).getSiteNo()%></td>
							<td><%=pList.get(i).getRandomNo()%></td>
							<td><%=pList.get(i).getPersonName()%></td>
							<td><%=pList.get(i).getRegisterNo()%></td>
							<td><a href="#" class="trigger">修改受试者信息</a> &nbsp;&nbsp; <a
									href="<%=basePath%>/project/crf/index.jsp">查看</a></td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
				<div class="row">
					<div class="col-xs-6">
						<div class="dataTables_info" id="sample-table-2_info" role="status" aria-live="polite">
							显示1至10条数据
						</div>
					</div>
					<div class="col-xs-6">
						<div class="dataTables_paginate paging_simple_numbers" id="sample-table-2_paginate">
							<ul class="pagination">
								<li class="paginate_button previous disabled" aria-controls="sample-table-2" tabindex="0"
									id="sample-table-2_previous">
									<a href="#">上一页</a>
								</li>
								<li class="paginate_button active" aria-controls="sample-table-2" tabindex="0">
									<a href="#">1</a>
								</li>
								<li class="paginate_button" aria-controls="sample-table-2" tabindex="0">
									<a href="#">2</a>
								</li>
								<li class="paginate_button" aria-controls="sample-table-2" tabindex="0">
									<a href="#">3</a>
								</li>
								<li class="paginate_button next" aria-controls="sample-table-2" tabindex="0"
									id="sample-table-2_next">
									<a href="#">下一页</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
	<script type="text/javascript">
		$(document).on('click', '.trigger', function(event) {
			event.preventDefault();
			$('#modal').iziModal('open', this); // 需要带上 "this"
		});
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- page specific plugin styles -->
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/jquery-ui.custom.css" />
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/chosen.css" />
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/datepicker.css" />
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/bootstrap-timepicker.css" />
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/daterangepicker.css" />
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/bootstrap-datetimepicker.css" />
<link rel="stylesheet" href="<%=basePath%>/script/assets/css/colorpicker.css" />
<script src="<%=basePath%>/script/assets/js/date-time/bootstrap-datepicker.js"></script>
<script src="<%=basePath%>/script/assets/js/date-time/bootstrap-timepicker.js"></script>
<script src="<%=basePath%>/script/assets/js/date-time/moment.js"></script>
<script src="<%=basePath%>/script/assets/js/date-time/daterangepicker.js"></script>
<script src="<%=basePath%>/script/assets/js/date-time/bootstrap-datetimepicker.js"></script>
</head>
<body>
	<div>
		<div class="breadcrumbs" id="breadcrumbs">
			<i class="ace-icon fa fa-eye bigger-180" style="vertical-align: middle; margin-left: 10px"></i>
			<big>
				<b>查看注册情况</b>
			</big>
		</div>
		<br />
		<table width="100%" border="0" style="line-height: 50px">
			<tr>
				<td width="20%" style="text-align: right;">选择中心：</td>
				<td width="20%"><select>
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
					</select></td>
				<td width="20%" style="text-align: right;">注册分组：</td>
				<td width="20%"><select>
						<option></option>
						<option>所有分组</option>
						<option>植入型左心室辅助人工心脏</option>
					</select></td>
				<td width="20%"></td>
			</tr>
			<tr>
				<td style="text-align: right;">注册起始时间：</td>
				<td>
					<div class="input-group">
						<input class="form-control date-picker" id="id-date-picker-1" type="text"
							data-date-format="yyyy-mm-dd">
						<span class="input-group-addon">
							<i class="fa fa-calendar bigger-110"></i>
						</span>
					</div>
				</td>
				<td style="text-align: right;">注册结束时间：</td>
				<td>
					<div class="input-group">
						<input class="form-control date-picker" id="id-date-picker-2" type="text"
							data-date-format="yyyy-mm-dd">
						<span class="input-group-addon">
							<i class="fa fa-calendar bigger-110"></i>
						</span>
					</div>
				</td>
				<td style="padding-left: 20px"><button class="btn btn-primary">查询</button></td>
			</tr>
		</table>
		<br />
		<div style="font-size: 16px; padding-left: 10px">
			<b>总数：5例</b>
		</div>
		<table class="table table-striped table-bordered table-hover col-sm-12">
			<thead>
				<tr>
					<th class="col-sm-1">研究中心编号</th>
					<th class="col-sm-1">筛选编号</th>
					<th class="col-sm-1">姓名缩写</th>
					<th class="col-sm-1">受试者注册号</th>
					<th class="col-sm-2">注册分组</th>
					<th class="col-sm-2">注册时间</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="vertical-align: middle;">01</td>
					<td style="vertical-align: middle;"><a>001</a></td>
					<td style="vertical-align: middle;">AAAA</td>
					<td style="vertical-align: middle;">001</td>
					<td style="vertical-align: middle;">植入型左心室辅助人工心脏</td>
					<td style="vertical-align: middle;">2018-5-23 11:16:27</td>
				</tr>
				<tr>
					<td style="vertical-align: middle;">02</td>
					<td style="vertical-align: middle;"><a>002</a></td>
					<td style="vertical-align: middle;">BBBB</td>
					<td style="vertical-align: middle;">002</td>
					<td style="vertical-align: middle;">植入型左心室辅助人工心脏</td>
					<td style="vertical-align: middle;">2018-5-22 11:16:27</td>
				</tr>
				<tr>
					<td style="vertical-align: middle;">03</td>
					<td style="vertical-align: middle;"><a>003</a></td>
					<td style="vertical-align: middle;">CCCC</td>
					<td style="vertical-align: middle;">003</td>
					<td style="vertical-align: middle;">植入型左心室辅助人工心脏</td>
					<td style="vertical-align: middle;">2018-5-21 11:16:27</td>
				</tr>
				<tr>
					<td style="vertical-align: middle;">04</td>
					<td style="vertical-align: middle;"><a>004</a></td>
					<td style="vertical-align: middle;">DDDD</td>
					<td style="vertical-align: middle;">004</td>
					<td style="vertical-align: middle;">植入型左心室辅助人工心脏</td>
					<td style="vertical-align: middle;">2018-5-20 11:16:27</td>
				</tr>
				<tr>
					<td style="vertical-align: middle;">05</td>
					<td style="vertical-align: middle;"><a>005</a></td>
					<td style="vertical-align: middle;">EEEE</td>
					<td style="vertical-align: middle;">005</td>
					<td style="vertical-align: middle;">植入型左心室辅助人工心脏</td>
					<td style="vertical-align: middle;">2018-5-19 11:16:27</td>
				</tr>
			</tbody>
		</table>
	</div>
	<script src="<%=basePath%>/script/assets/js/date-time/bootstrap-datepicker.js"></script>
	<script src="<%=basePath%>/script/assets/js/date-time/bootstrap-timepicker.js"></script>
	<script src="<%=basePath%>/script/assets/js/date-time/moment.js"></script>
	<script src="<%=basePath%>/script/assets/js/date-time/daterangepicker.js"></script>
	<script src="<%=basePath%>/script/assets/js/date-time/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript">
		jQuery(function($) {
			$('.date-picker').datepicker({
				autoclose : true,
				todayHighlight : true
			});
		});
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.tip_red {
	font-size: 14px;
	color: red;
}

.tip_green {
	font-size: 14px;
	color: green;
}

.tip_black {
	font-size: 14px;
	color: black;
}
</style>
</head>
<body>
	<div>
		<div class="breadcrumbs" id="breadcrumbs">
			<i class="ace-icon fa fa-eye bigger-180" style="vertical-align: middle; margin-left: 10px"></i>
			<big>
				<b>查看随访情况</b>
			</big>
		</div>
		<br />
		<table width="100%" border="0">
			<tr>
				<td rowspan="4" style="text-align: center;">选择中心： <select>
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
				<td class="tip_red">红色空白：表示该受试者已经到达随访时间窗，但未随访</td>
			</tr>
			<tr>
				<td class="tip_red">红色带日期：表示该受试者是超过随访时间窗后，进行的随访</td>
			</tr>
			<tr>
				<td class="tip_green">绿色：该受试者在随访时间窗内进行的随访</td>
			</tr>
			<tr>
				<td class="tip_black">白色：表示该受试者未到随访时间窗，不需要进行随访</td>
			</tr>
		</table>
		<br />
		<table class="table table-striped table-bordered table-hover col-sm-12" style="font-size: 15px">
			<thead>
				<tr>
					<th class="col-sm-1" style="text-align: center;">筛选编号</th>
					<th class="col-sm-1" style="text-align: center;">姓名缩写</th>
					<th class="col-sm-1" style="text-align: center;">受试者注册号</th>
					<th class="col-sm-1" style="text-align: center;">手术</th>
					<th class="col-sm-1" style="text-align: center;">1个月±3d</th>
					<th class="col-sm-1" style="text-align: center;">2个月±3d</th>
					<th class="col-sm-1" style="text-align: center;">3个月±3d</th>
				</tr>
			</thead>
			<tbody style="text-align: center;">
				<tr>
					<td style="vertical-align: middle;">001</td>
					<td>AAAA</td>
					<td style="vertical-align: middle;">001</td>
					<td style="vertical-align: middle;">2017年9月22日</td>
					<td style="vertical-align: middle;">2017年10月22日</td>
					<td style="vertical-align: middle;">2017年11月22日</td>
					<td style="vertical-align: middle;">2017年12月22日</td>
				</tr>
				<tr>
					<td style="vertical-align: middle;">002</td>
					<td>BBBB</td>
					<td style="vertical-align: middle;">002</td>
					<td style="vertical-align: middle;">2014年5月22日</td>
					<td style="vertical-align: middle;">2014年6月22日</td>
					<td style="vertical-align: middle;">2014年7月22日</td>
					<td style="vertical-align: middle;">2014年8月22日</td>
				</tr>
				<tr>
					<td style="vertical-align: middle;">003</td>
					<td>CCCC</td>
					<td style="vertical-align: middle;">003</td>
					<td style="vertical-align: middle;">2013-5-22</td>
					<td style="vertical-align: middle;">2013-6-22</td>
					<td style="vertical-align: middle;">2013-7-22</td>
					<td style="vertical-align: middle;">2013-8-22</td>
				</tr>
				<tr>
					<td style="vertical-align: middle;">004</td>
					<td>DDDD</td>
					<td style="vertical-align: middle;">004</td>
					<td style="vertical-align: middle;">2012年1月22日</td>
					<td style="vertical-align: middle;">2012年2月22日</td>
					<td style="vertical-align: middle;">2012年3月22日</td>
					<td style="vertical-align: middle;">2012年4月22日</td>
				</tr>
				<tr>
					<td style="vertical-align: middle;">005</td>
					<td>EEEE</td>
					<td style="vertical-align: middle;">005</td>
					<td style="vertical-align: middle;">2018-3-22</td>
					<td style="vertical-align: middle;">2018-4-22</td>
					<td style="vertical-align: middle;">2018-5-22</td>
					<td style="vertical-align: middle;"></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
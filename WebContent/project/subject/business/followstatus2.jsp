<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
table {
	table-layout: fixed;
	line-height: 40px;
}

.td_left {
	word-break: keep-all;
	padding-left: 20px
}

.tdwidth {
	width: 60px;
	color: white;
	font-size: 16px;
	text-align: center;
}

.tip_red {
	font-size: 15px;
	background-color: #F15358;
}

.tip_green {
	font-size: 15px;
	background-color: #6ECA64;
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
		<table width="100%" border="0" style="line-height: 30px;background-color: white;">
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
				<td style="font-size: 14px;color: red">红色空白：表示该受试者已经到达随访时间窗，但未随访</td>
			</tr>
			<tr>
				<td style="font-size: 14px;color: red">红色带日期：表示该受试者是超过随访时间窗后，进行的随访</td>
			</tr>
			<tr>
				<td style="font-size: 14px;color: green">绿色：该受试者在随访时间窗内进行的随访</td>
			</tr>
			<tr>
				<td style="font-size: 14px;color: black">白色：表示该受试者未到随访时间窗，不需要进行随访</td>
			</tr>
		</table>
		<br />
		<table width="100%">
			<tr>
				<td width="30%" valign="top">
					<table style="font-size: 15px;" width="100%" border="1" bordercolor="#dddddd">
						<thead style="background-color: rgb(245,245,245);">
							<tr>
								<th style="text-align: center; word-break: keep-all;">筛选编号</th>
								<th style="text-align: center; word-break: keep-all;">姓名缩写</th>
								<th style="text-align: center; word-break: keep-all;">受试者注册号</th>
							</tr>
						</thead>
						<tbody style="text-align: center;">
							<tr>
								<td>001</td>
								<td>AAAA</td>
								<td>001</td>
							</tr>
							<tr>
								<td>002</td>
								<td>BBBB</td>
								<td>002</td>
							</tr>
							<tr>
								<td>003</td>
								<td>CCCC</td>
								<td>003</td>
							</tr>
							<tr>
								<td>004</td>
								<td>DDDD</td>
								<td>004</td>
							</tr>
							<tr>
								<td>005</td>
								<td>EEEE</td>
								<td>005</td>
							</tr>
							<tr>
								<td>006</td>
								<td>FFFF</td>
								<td>006</td>
							</tr>
							<tr>
								<td>007</td>
								<td>GGGG</td>
								<td>007</td>
							</tr>
							<tr>
								<td>008</td>
								<td>HHHH</td>
								<td>008</td>
							</tr>
							<tr>
								<td>009</td>
								<td>IIII</td>
								<td>009</td>
							</tr>
							<tr>
								<td>010</td>
								<td>JJJJ</td>
								<td>010</td>
							</tr>
						</tbody>
					</table>
			</td>
			<td width="70%" valign="top">
				<div style="width: 100%; height: 100%; overflow-x: scroll">
					<table width="1500px" border="1" bordercolor="#dddddd" style="font-size: 15px;">
						<thead style="background-color: rgb(245,245,245)">
							<tr>
								<th style="text-align: center; width: 60px">手术</th>
								<th style="text-align: center; width: 60px">1个月±3d</th>
								<th style="text-align: center; width: 60px">2个月±3d</th>
								<th style="text-align: center; width: 60px">3个月±3d</th>
								<th style="text-align: center; width: 60px">4个月±3d</th>
								<th style="text-align: center; width: 60px">5个月±3d</th>
							</tr>
						</thead>
						<tbody style="text-align: center;">
							<tr>
								<td class="tip_green">2017年9月22日</td>
								<td class="tip_red">2017年10月22日</td>
								<td class="tip_green">2017年11月22日</td>
								<td class="tip_green">2017年12月22日</td>
								<td class="tip_red">2018年1月22日</td>
								<td class="tip_green">2018年2月22日</td>
							</tr>
							<tr>
								<td class="tip_green">2014年5月22日</td>
								<td class="tip_green">2014年6月22日</td>
								<td class="tip_red">2014年7月22日</td>
								<td>2014年8月22日</td>
								<td class="tip_red">2014年9月22日</td>
								<td class="tip_red">2014年10月22日</td>
							</tr>
							<tr>
								<td class="tip_red">2013-5-22</td>
								<td class="tip_green">2013-6-22</td>
								<td class="tip_green">2013-7-22</td>
								<td class="tip_green">2013-8-22</td>
								<td class="tip_green">2013-9-22</td>
								<td class="tip_red">2013-10-22</td>
							</tr>
							<tr>
								<td>2012年1月22日</td>
								<td class="tip_green">2012年2月22日</td>
								<td class="tip_red">2012年3月22日</td>
								<td class="tip_red">2012年4月22日</td>
								<td class="tip_green">2012年5月22日</td>
								<td class="tip_green">2012年6月22日</td>
							</tr>
							<tr>
								<td>2018-3-22</td>
								<td class="tip_green">2018-4-22</td>
								<td class="tip_red">2018-5-22</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>2017年9月22日</td>
								<td class="tip_red">2017年10月22日</td>
								<td class="tip_red">2017年11月22日</td>
								<td>2017年12月22日</td>
								<td class="tip_red">2018年1月22日</td>
								<td class="tip_green">2018年2月22日</td>
							</tr>
							<tr>
								<td class="tip_green">2014年5月22日</td>
								<td class="tip_green">2014年6月22日</td>
								<td>2014年7月22日</td>
								<td class="tip_red">2014年8月22日</td>
								<td class="tip_green">2014年9月22日</td>
								<td class="tip_red">2014年10月22日</td>
							</tr>
							<tr>
								<td>2013-5-22</td>
								<td class="tip_red">2013-6-22</td>
								<td class="tip_red">2013-7-22</td>
								<td class="tip_green">2013-8-22</td>
								<td class="tip_red">2013-9-22</td>
								<td class="tip_green">2013-10-22</td>
							</tr>
							<tr>
								<td class="tip_green">2012年1月22日</td>
								<td>2012年2月22日</td>
								<td class="tip_green">2012年3月22日</td>
								<td class="tip_red">2012年4月22日</td>
								<td class="tip_green">2012年5月22日</td>
								<td class="tip_red">2012年6月22日</td>
							</tr>
							<tr>
								<td>2018-3-22</td>
								<td class="tip_red">2018-4-22</td>
								<td>2018-5-22</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</td>
			</tr>
		</table>
	</div>
</body>
</html>
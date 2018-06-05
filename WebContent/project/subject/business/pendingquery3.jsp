<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>待处理疑问界面</title>
<style type="text/css">
.table {
	table-layout: fixed;
}

.table td {
	word-wrap: break-word;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}
</style>
</head>
<script type="text/javascript">
	function showContent() {
		$("#td1").css("overflow", "visible");
		$("#td1").css("white-space", "normal");
	}
	function hideContent() {
		$("#td1").css("word-wrap", "break-word");
		$("#td1").css("overflow", "hidden");
		$("#td1").css("text-overflow", "ellipsis");
		$("#td1").css("white-space", "nowrap");
	}
	var a = false;
	function show_hide(i,j,k){	
		if(!a){
			$("#td"+i+"_"+j).css("overflow", "visible");
			$("#td"+i+"_"+j).css("white-space", "normal");
			
			$("#td"+i+"_"+k).css("overflow", "visible");
			$("#td"+i+"_"+k).css("white-space", "normal");
		} else {
			$("#td"+i+"_"+j).css("word-wrap", "break-word");
			$("#td"+i+"_"+j).css("overflow", "hidden");
			$("#td"+i+"_"+j).css("text-overflow", "ellipsis");
			$("#td"+i+"_"+j).css("white-space", "nowrap");
			
			$("#td"+i+"_"+k).css("word-wrap", "break-word");
			$("#td"+i+"_"+k).css("overflow", "hidden");
			$("#td"+i+"_"+k).css("text-overflow", "ellipsis");
			$("#td"+i+"_"+k).css("white-space", "nowrap");
		}
		a = !a;
	}
</script>
<body>
	<div>
		<div class="breadcrumbs" id="breadcrumbs">
			<i class="ace-icon fa fa-eye bigger-180" style="vertical-align: middle; margin-left: 10px"></i>
			<big>
				<b>查看待处理疑问</b>
			</big>
		</div>
		<br />
		<div class="row">
			<div class="col-sm-12">
				<table border="0">
					<tr>
						<td class="col-sm-2" style="text-align: right;">选择中心：</td>
						<td class="col-sm-2"><select>
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
						<td class="col-sm-2" style="text-align: right;">疑问状态：</td>
						<td class="col-sm-2"><select>
								<option></option>
								<option>所有状态</option>
								<option>未发送</option>
								<option>未解答</option>
								<option>已解答</option>
							</select></td>
						<td class="col-sm-2" style="text-align: right;">CRF模块：</td>
						<td class="col-sm-2"><select>
								<option></option>
								<option>访视3实验室检查/十二导联心电图/影像学检查</option>
								<option>备注信息</option>
								<option>访视4生命体征</option>
								<option>非靶病变3</option>
								<option>出院前信息检查</option>
								<option>入选排除标准</option>
								<option>术后12个月随访</option>
							</select></td>
					</tr>
					<tr>
						<td height="20px"></td>
					</tr>
					<tr>
						<td class="col-sm-2" style="text-align: right;">筛选编号：</td>
						<td class="col-sm-2"><input type="text" placeholder="请输入筛选编号 "></td>
						<td class="col-sm-2" style="text-align: right;">姓名缩写：</td>
						<td class="col-sm-2"><input type="text" placeholder="请输入姓名缩写"></td>
						<td class="col-sm-2" style="text-align: right;">注册号：</td>
						<td class="col-sm-2"><input type="text" placeholder="请输入受试者注册号 "></td>
					</tr>
				</table>
			</div>
		</div>
		<br />
		<table class="table table-striped table-bordered table-hover col-sm-12">
			<thead>
				<tr>
					<th class="col-sm-1">中心编号</th>
					<th class="col-sm-1">筛选编号</th>
					<th class="col-sm-1">姓名缩写</th>
					<th class="col-sm-1">注册号</th>
					<th class="col-sm-2">CRF模块</th>
					<th class="col-sm-3">疑问描述</th>
					<th class="col-sm-1">疑问状态</th>
					<th class="col-sm-1">发起者</th>
					<th class="col-sm-1">操作</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (int i = 0; i < 1; i++) {
				%>
				<tr>
					<td style="vertical-align: middle;">01</td>
					<td style="vertical-align: middle;">2001</td>
					<td style="vertical-align: middle;">AAAA</td>
					<td style="vertical-align: middle;">1</td>
					<td id="td1_1" style="vertical-align: middle;">访视3实验室检查/十二导联心电图/影像学检查</td>
					<td id="td1_1" style="vertical-align: middle;">有心脏、肺脏功能衰竭疾病</td>
					<td style="vertical-align: middle;">未解决</td>
					<td style="vertical-align: middle;">CRA</td>
					<td style="vertical-align: middle;"><a>查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
							class="ace-icon glyphicon glyphicon-search" onclick="show_hide(1,1,2)"></i></td>
				</tr>
				<tr>
					<td style="vertical-align: middle;">02</td>
					<td style="vertical-align: middle;">2002</td>
					<td style="vertical-align: middle;">BBBB</td>
					<td style="vertical-align: middle;">2</td>
					<td id="td2_1" style="vertical-align: middle;">访视3实验室检查/十二导联心电图/影像学检查</td>
					<td id="td2_2" style="vertical-align: middle;">有心脏、肺脏、肝脏及肾脏功能衰竭或其他严重疾病（如脑内肿瘤、脑动静脉畸形、全身性感染、活动性的播散性血管内凝血、入组前12个月内心肌梗塞、严重精神病史）；
						有心脏、肺脏、肝脏及肾脏功能衰竭或其他严重疾病（如脑内肿瘤、脑动静脉畸形、全身性感染、活动性的播散性血管内凝血、入组前12个月内心肌梗塞、严重精神病史）；</td>
					<td style="vertical-align: middle;">已解答</td>
					<td style="vertical-align: middle;">CRC</td>
					<td style="vertical-align: middle;"><a>查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
							class="ace-icon glyphicon glyphicon-search" onclick="show_hide(2,1,2)"></i></td>
				</tr>
				<tr>
					<td style="vertical-align: middle;">03</td>
					<td style="vertical-align: middle;">2003</td>
					<td style="vertical-align: middle;">CCCC</td>
					<td style="vertical-align: middle;">3</td>
					<td id="td3_1" style="vertical-align: middle;">备注信息</td>
					<td id="td3_2" style="vertical-align: middle;">有心脏、肺脏、肝脏及肾脏功能衰竭或其他严重疾病</td>
					<td style="vertical-align: middle;">未发送</td>
					<td style="vertical-align: middle;">监察员</td>
					<td style="vertical-align: middle;"><a>查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
							class="ace-icon glyphicon glyphicon-search" onclick="show_hide(3,1,2)"></i></td>
				</tr>
				<tr>
					<td style="vertical-align: middle;">04</td>
					<td style="vertical-align: middle;">2004</td>
					<td style="vertical-align: middle;">DDDD</td>
					<td style="vertical-align: middle;">4</td>
					<td id="td4_1" style="vertical-align: middle;">访视4生命体征</td>
					<td id="td4_2" style="vertical-align: middle;">有心脏、肺脏、肝脏及肾脏功能衰竭或其他严重疾病（如脑内肿瘤、脑动静脉畸形、全身性感染、活动性的播散性血管内凝血、入组前12个月内心肌梗塞、严重精神病史）；
						有心脏、肺脏、肝脏及肾脏功能衰竭或其他严重疾病（如脑内肿瘤、脑动静脉畸形、全身性感染、活动性的播散性血管内凝血、入组前12个月内心肌梗塞、严重精神病史）；</td>
					<td style="vertical-align: middle;">未解答</td>
					<td style="vertical-align: middle;">CRA</td>
					<td style="vertical-align: middle;"><a>查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
							class="ace-icon glyphicon glyphicon-search" onclick="show_hide(4,1,2)"></i></td>
				</tr>
				<tr>
					<td style="vertical-align: middle;">05</td>
					<td style="vertical-align: middle;">2005</td>
					<td style="vertical-align: middle;">EEEE</td>
					<td style="vertical-align: middle;">5</td>
					<td id="td5_1" style="vertical-align: middle;">访视3实验室检查/十二导联心电图/影像学检查</td>
					<td id="td5_2" style="vertical-align: middle;">有心脏、肺脏、肝脏及肾脏功能衰竭或其他严重疾病（如脑内肿瘤、脑动静脉畸形、全身性感染、活动性的播散性血管内凝血、入组前12个月内心肌梗塞、严重精神病史）；
						有心脏、肺脏、肝脏及肾脏功能衰竭或其他严重疾病（如脑内肿瘤、脑动静脉畸形、全身性感染、活动性的播散性血管内凝血、入组前12个月内心肌梗塞、严重精神病史）；</td>
					<td style="vertical-align: middle;">已解答</td>
					<td style="vertical-align: middle;">监察员</td>
					<td style="vertical-align: middle;"><a>查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
							class="ace-icon glyphicon glyphicon-search" onclick="show_hide(5,1,2)"></i></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>
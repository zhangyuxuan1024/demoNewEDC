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
	border-top: white;
	border-bottom: white;
	border-left: white;
	border-right: white;
}

.td_left {
	word-break: keep-all;
	padding-left: 20px
}

.tdwidth {
	width: 100px;
	color: white;
	font-size: 16px;
	text-align: center;
}

.tdwidth_red {
	width: 100px;
	background-color: #F15358;
}

.tdwidth_green {
	width: 100px;
	background-color: #6ECA64;
}
</style>
</head>
<body>
	<div>
		<div class="breadcrumbs" id="breadcrumbs">
			<i class="ace-icon fa fa-eye bigger-180" style="vertical-align: middle; margin-left: 10px"></i>
			<big>
				<b>查看录入情况</b>
			</big>
		</div>
		<br />
		<table width="100%" border="0">
			<tr>
				<td rowspan="2" style="text-align: center;">选择中心： <select>
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
				<td style="font-size: 14px; color: green;">绿色：代表录入且已提交；如果是多表，绿色表示未录入或已提交</td>
			</tr>
			<tr>
				<td style="font-size: 14px; color: red;">红色：①代表未录入；②代表录入且保存状态</td>
			</tr>
		</table>
		<br />
		<table width="100%">
			<tr>
				<td width="0%"></td>
				<td width="30%" valign="top">
					<table width="100%" border="1" style="font-size: 16px; color: white; background-color: #438eb9;">
						<tr>
							<td class="td_left">筛选编号</td>
						</tr>
						<tr>
							<td class="td_left">姓名缩写</td>
						</tr>
						<tr>
							<td class="td_left">受试者注册号</td>
						</tr>
						<tr>
							<td class="td_left">基线期/筛选期</td>
						</tr>
						<tr>
							<td class="td_left">疾病史</td>
						</tr>
						<tr>
							<td class="td_left">基线期/筛选期超声检查</td>
						</tr>
						<tr>
							<td class="td_left">基线期筛选期神经系统和生活质量</td>
						</tr>
						<tr>
							<td class="td_left">入选排除标准</td>
						</tr>
						<tr>
							<td class="td_left">各随访时间点检查信息</td>
						</tr>
						<tr>
							<td class="td_left">各随访时间点实验室检查</td>
						</tr>
						<tr>
							<td class="td_left" title="各随访时间点泵缆皮肤出口部位及系统运转">各随访时间点泵缆皮肤出口部位及系统运转</td>
						</tr>
						<tr>
							<td class="td_left">各随访时间点尿量检测</td>
						</tr>
						<tr>
							<td class="td_left">手术过程记录</td>
						</tr>
						<tr>
							<td class="td_left">手术过程辅助情况</td>
						</tr>
						<tr>
							<td class="td_left">试验器械的发放与回收</td>
						</tr>
						<tr>
							<td class="td_left">神经系统一般观察Day1-7</td>
						</tr>
						<tr>
							<td class="td_left">神经系统一般观察Day8-14</td>
						</tr>
						<tr>
							<td class="td_left">神经系统一般观察Day15-21</td>
						</tr>
						<tr>
							<td class="td_left">术后第一个月神经系统一般观察</td>
						</tr>
						<tr>
							<td class="td_left">术后第一个月辅助情和肺功能</td>
						</tr>
						<tr>
							<td class="td_left">术后第二个月神经系统一般观察</td>
						</tr>
						<tr>
							<td class="td_left">术后第三个月神经系统检查及功能评定</td>
						</tr>
						<tr>
							<td class="td_left">术后第三个月超声&CT检查</td>
						</tr>
						<tr>
							<td class="td_left">心脏移植术神经系统和生活质量</td>
						</tr>
						<tr>
							<td class="td_left">本装置拆除术超声检查</td>
						</tr>
						<tr>
							<td class="td_left">本装置拆除术</td>
						</tr>
						<tr>
							<td class="td_left" title="三个月内摘除本装置术后随访神经系统和生活质量">三个月内摘除本装置术后随访神经系统和生活质量</td>
						</tr>
						<tr>
							<td class="td_left" title="EVAHEART植入术三个月后神经系统一般观察">EVAHEART植入术三个月后神经系统一般观察</td>
						</tr>
						<tr>
							<td class="td_left">合并用药</td>
						</tr>
						<tr>
							<td class="td_left">合并非药物治疗</td>
						</tr>
						<tr>
							<td class="td_left">不良事件表</td>
						</tr>
						<tr>
							<td class="td_left">器械缺陷</td>
						</tr>
						<tr>
							<td class="td_left">方案偏离</td>
						</tr>
						<tr>
							<td class="td_left">提前终止</td>
						</tr>
						<tr>
							<td class="td_left">备注页</td>
						</tr>
					</table>
			</td>
			<td width="70%" style="padding-left: 0px">
				<div style="width: 100%; height: 100%; overflow-x: scroll">
					<table width="1000px" border="1">
						<tr style="background-color: #438eb9">
							<%
								for (int i = 1; i <= 26; i++) {
							%>
							<td class="tdwidth">
								<%
									if (i < 10) {
								%> <%="00" + i%> <%
								 	} else {
								%> <%="0" + i%> <%
								 	}
								%>
							</td>
							<%
								}
							%>
						</tr>
						<tr style="background-color: #438eb9">
							<%
								for (char i = 'A'; i <= 'Z'; i++) {
							%>
							<td class="tdwidth"><%=i + "" + i + "" + i%></td>
							<%
								}
							%>
						</tr>
						<tr style="background-color: #438eb9">
							<%
								for (int i = 1; i <= 26; i++) {
							%>
							<td class="tdwidth">
								<%
									if (i < 10) {
								%> <%="00" + i%> <%
 	} else {
 %><%="0" + i%> <%
 	}
 %>
							</td>
							<%
								}
							%>
						</tr>
						<%
							for (int i = 0; i < 32; i++) {
								if (i % 3 == 0 && i % 2 == 0) {
						%>
						<tr>
							<td class="tdwidth_red">&nbsp;</td>
							<td class="tdwidth_red"></td>
							<td class="tdwidth_red"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_red"></td>
							<td class="tdwidth_red"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_red"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_red"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_red"></td>
							<td class="tdwidth_red"></td>
							<td class="tdwidth_red"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_red"></td>
							<td class="tdwidth_red"></td>
							<td class="tdwidth_red"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_red"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_red"></td>
							<td class="tdwidth_red"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_red"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_red"></td>
						</tr>
						<%
							} else {
						%>
						<tr>
							<td class="tdwidth_green">&nbsp;</td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
						</tr>
						<%
							}
							}
						%>
					</table>
				</div>
			</td>
			</tr>
		</table>
	</div>
</body>
</html>
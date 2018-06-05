<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.table_left {
	border-color: white;
	text-align: center;
	color: black;
	font-size: 14px;
	background-color: LightBlue;
	line-height: 40px;
	border-top: white;
	border-bottom: white;
	border-right: white;
	border-left: white;
	word-break: keep-all;
}

.table_right {
	table-layout: fixed;
	line-height: 40px;
	border-top: white;
	border-bottom: white;
	border-right: white;
	border-left: white;
}

.tdwidth {
	width: 60px;
	color: black;
	font-size: 16px;
	text-align: center;
	border-color: white;
}

.tdwidth_red {
	width: 60px;
	background-color: #F15358;
	border-color: white;
}

.tdwidth_green {
	width: 60px;
	background-color: #6ECA64;
	border-color: white;
}
</style>
</head>
<body>
	<div>
		<div class="breadcrumbs" id="breadcrumbs">
			<i class="ace-icon fa fa-eye bigger-180" style="vertical-align: middle; margin-left: 10px"></i>
			<big>
				<b>查看电子签名情况</b>
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
				<td style="font-size: 14px; color: red;">红色：代表已经录入数据，但未进行SDV</td>
			</tr>
			<tr>
				<td style="font-size: 14px; color: green;">绿色：代表不需要做SDV或者已经完成SDV</td>
			</tr>
		</table>
		<br />
		<table width="100%">
			<tr>
				<td width="10%"></td>
				<td width="20%">
					<table class="table_left" width="100%" border="1">
						<tr>
							<td>筛选编号</td>
						</tr>
						<tr>
							<td>姓名缩写</td>
						</tr>
						<tr>
							<td>受试者注册号</td>
						</tr>
						<tr>
							<td>基线期/筛选期</td>
						</tr>
						<tr>
							<td>疾病史</td>
						</tr>
						<tr>
							<td>基线期/筛选期超声检查</td>
						</tr>
						<tr>
							<td>基线期筛选期神经系统和生活质量</td>
						</tr>
						<tr>
							<td>入选排除标准</td>
						</tr>
						<tr>
							<td>各随访时间点检查信息</td>
						</tr>
						<tr>
							<td>各随访时间点实验室检查</td>
						</tr>
						<tr>
							<td>各随访时间点泵缆皮肤出口部位及系统运转</td>
						</tr>
						<tr>
							<td>各随访时间点尿量检测</td>
						</tr>
						<tr>
							<td>手术过程记录</td>
						</tr>
						<tr>
							<td>手术过程辅助情况</td>
						</tr>
						<tr>
							<td>试验器械的发放与回收</td>
						</tr>
						<tr>
							<td>神经系统一般观察Day1-7</td>
						</tr>
						<tr>
							<td>神经系统一般观察Day8-14</td>
						</tr>
						<tr>
							<td>神经系统一般观察Day15-21</td>
						</tr>
						<tr>
							<td>术后第一个月神经系统一般观察</td>
						</tr>
						<tr>
							<td>术后第一个月辅助情和肺功能</td>
						</tr>
						<tr>
							<td>术后第二个月神经系统一般观察</td>
						</tr>
						<tr>
							<td>术后第三个月神经系统检查及功能评定</td>
						</tr>
						<tr>
							<td>术后第三个月超声&CT检查</td>
						</tr>
						<tr>
							<td>心脏移植术神经系统和生活质量</td>
						</tr>
						<tr>
							<td>本装置拆除术超声检查</td>
						</tr>
						<tr>
							<td>本装置拆除术</td>
						</tr>
						<tr>
							<td>三个月内摘除本装置术后随访神经系统和生活质量</td>
						</tr>
						<tr>
							<td>EVAHEART植入术三个月后神经系统一般观察</td>
						</tr>
						<tr>
							<td>合并用药</td>
						</tr>
						<tr>
							<td>合并非药物治疗</td>
						</tr>
						<tr>
							<td>不良事件表</td>
						</tr>
						<tr>
							<td>器械缺陷</td>
						</tr>
						<tr>
							<td>方案偏离</td>
						</tr>
						<tr>
							<td>提前终止</td>
						</tr>
						<tr>
							<td>备注页</td>
						</tr>
					</table>
				</td>
				<td width="60%">
					<table width="100%" border="1" class="table_right">
						<tr style="background-color: LightBlue">
							<%
								for (int i = 1; i <= 11; i++) {
							%>
							<td class="tdwidth">
								<%
									if (i < 10) {
								%><%="00" + i%>
								<%
									} else {
								%><%="0" + i%>
								<%
									}
								%>
							</td>
							<%
								}
							%>
						</tr>
						<tr style="background-color: LightBlue">
							<%
								for (char i = 'A'; i <= 'K'; i++) {
							%>
							<td class="tdwidth"><%=i + "" + i + "" + i%></td>
							<%
								}
							%>
						</tr>
						<tr style="background-color: LightBlue">
							<%
								for (int i = 1; i <= 11; i++) {
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
						</tr>
						<%
							}
							}
						%>
					</table>
			</td>
			<td width="10%"></td>
			</tr>
		</table>
		
		<br /><br />
		<table width="100%">
			<tr>
				<td width="10%"></td>
				<td width="20%">
					<table class="table_left" width="100%" border="1">
						<tr>
							<td>筛选编号</td>
						</tr>
						<tr>
							<td>姓名缩写</td>
						</tr>
						<tr>
							<td>受试者注册号</td>
						</tr>
						<tr>
							<td>基线期/筛选期</td>
						</tr>
						<tr>
							<td>疾病史</td>
						</tr>
						<tr>
							<td>基线期/筛选期超声检查</td>
						</tr>
						<tr>
							<td>基线期筛选期神经系统和生活质量</td>
						</tr>
						<tr>
							<td>入选排除标准</td>
						</tr>
						<tr>
							<td>各随访时间点检查信息</td>
						</tr>
						<tr>
							<td>各随访时间点实验室检查</td>
						</tr>
						<tr>
							<td>各随访时间点泵缆皮肤出口部位及系统运转</td>
						</tr>
						<tr>
							<td>各随访时间点尿量检测</td>
						</tr>
						<tr>
							<td>手术过程记录</td>
						</tr>
						<tr>
							<td>手术过程辅助情况</td>
						</tr>
						<tr>
							<td>试验器械的发放与回收</td>
						</tr>
						<tr>
							<td>神经系统一般观察Day1-7</td>
						</tr>
						<tr>
							<td>神经系统一般观察Day8-14</td>
						</tr>
						<tr>
							<td>神经系统一般观察Day15-21</td>
						</tr>
						<tr>
							<td>术后第一个月神经系统一般观察</td>
						</tr>
						<tr>
							<td>术后第一个月辅助情和肺功能</td>
						</tr>
						<tr>
							<td>术后第二个月神经系统一般观察</td>
						</tr>
						<tr>
							<td>术后第三个月神经系统检查及功能评定</td>
						</tr>
						<tr>
							<td>术后第三个月超声&CT检查</td>
						</tr>
						<tr>
							<td>心脏移植术神经系统和生活质量</td>
						</tr>
						<tr>
							<td>本装置拆除术超声检查</td>
						</tr>
						<tr>
							<td>本装置拆除术</td>
						</tr>
						<tr>
							<td>三个月内摘除本装置术后随访神经系统和生活质量</td>
						</tr>
						<tr>
							<td>EVAHEART植入术三个月后神经系统一般观察</td>
						</tr>
						<tr>
							<td>合并用药</td>
						</tr>
						<tr>
							<td>合并非药物治疗</td>
						</tr>
						<tr>
							<td>不良事件表</td>
						</tr>
						<tr>
							<td>器械缺陷</td>
						</tr>
						<tr>
							<td>方案偏离</td>
						</tr>
						<tr>
							<td>提前终止</td>
						</tr>
						<tr>
							<td>备注页</td>
						</tr>
					</table>
				</td>
				<td width="60%">
					<table width="100%" border="1" class="table_right">
						<tr style="background-color: LightBlue">
							<%
								for (int i = 12; i <= 22; i++) {
							%>
							<td class="tdwidth">
								<%
									if (i < 10) {
								%><%="00" + i%>
								<%
									} else {
								%><%="0" + i%>
								<%
									}
								%>
							</td>
							<%
								}
							%>
						</tr>
						<tr style="background-color: LightBlue">
							<%
								for (char i = 'L'; i <= 'V'; i++) {
							%>
							<td class="tdwidth"><%=i + "" + i + "" + i%></td>
							<%
								}
							%>
						</tr>
						<tr style="background-color: LightBlue">
							<%
								for (int i = 12; i <= 22; i++) {
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
						</tr>
						<%
							}
							}
						%>
					</table>
			</td>
			<td width="10%"></td>
			</tr>
		</table>
		<br /><br />
		<table width="100%">
			<tr>
				<td width="10%"></td>
				<td width="20%">
					<table class="table_left" width="100%" border="1">
						<tr>
							<td>筛选编号</td>
						</tr>
						<tr>
							<td>姓名缩写</td>
						</tr>
						<tr>
							<td>受试者注册号</td>
						</tr>
						<tr>
							<td>基线期/筛选期</td>
						</tr>
						<tr>
							<td>疾病史</td>
						</tr>
						<tr>
							<td>基线期/筛选期超声检查</td>
						</tr>
						<tr>
							<td>基线期筛选期神经系统和生活质量</td>
						</tr>
						<tr>
							<td>入选排除标准</td>
						</tr>
						<tr>
							<td>各随访时间点检查信息</td>
						</tr>
						<tr>
							<td>各随访时间点实验室检查</td>
						</tr>
						<tr>
							<td>各随访时间点泵缆皮肤出口部位及系统运转</td>
						</tr>
						<tr>
							<td>各随访时间点尿量检测</td>
						</tr>
						<tr>
							<td>手术过程记录</td>
						</tr>
						<tr>
							<td>手术过程辅助情况</td>
						</tr>
						<tr>
							<td>试验器械的发放与回收</td>
						</tr>
						<tr>
							<td>神经系统一般观察Day1-7</td>
						</tr>
						<tr>
							<td>神经系统一般观察Day8-14</td>
						</tr>
						<tr>
							<td>神经系统一般观察Day15-21</td>
						</tr>
						<tr>
							<td>术后第一个月神经系统一般观察</td>
						</tr>
						<tr>
							<td>术后第一个月辅助情和肺功能</td>
						</tr>
						<tr>
							<td>术后第二个月神经系统一般观察</td>
						</tr>
						<tr>
							<td>术后第三个月神经系统检查及功能评定</td>
						</tr>
						<tr>
							<td>术后第三个月超声&CT检查</td>
						</tr>
						<tr>
							<td>心脏移植术神经系统和生活质量</td>
						</tr>
						<tr>
							<td>本装置拆除术超声检查</td>
						</tr>
						<tr>
							<td>本装置拆除术</td>
						</tr>
						<tr>
							<td>三个月内摘除本装置术后随访神经系统和生活质量</td>
						</tr>
						<tr>
							<td>EVAHEART植入术三个月后神经系统一般观察</td>
						</tr>
						<tr>
							<td>合并用药</td>
						</tr>
						<tr>
							<td>合并非药物治疗</td>
						</tr>
						<tr>
							<td>不良事件表</td>
						</tr>
						<tr>
							<td>器械缺陷</td>
						</tr>
						<tr>
							<td>方案偏离</td>
						</tr>
						<tr>
							<td>提前终止</td>
						</tr>
						<tr>
							<td>备注页</td>
						</tr>
					</table>
				</td>
				<td width="60%">
					<table width="100%" border="1" class="table_right">
						<tr style="background-color: LightBlue">
							<%
								for (int i = 23; i <= 33; i++) {
							%>
							<td class="tdwidth">
								<%
									if (i < 27) {
								%><%="00" + i%>
								<%
									} else {
								%><%=""%>
								<%
									}
								%>
							</td>
							<%
								}
							%>
						</tr>
						<tr style="background-color: LightBlue">
							<%
								for (char i = 'W'; i <= 'Z'+7; i++) {
									if(i<='Z'){
										%>
										<td class="tdwidth"><%=i + "" + i + "" + i%></td>
										<%
									} else {
										%>
										<td class="tdwidth"><%=""%></td>
										<%	
									}
								}
							%>
						</tr>
						<tr style="background-color: LightBlue">
							<%
								for (int i = 23; i <= 33; i++) {
							%>
							<td class="tdwidth">
								<%
									if (i < 27) {
								%> <%="00" + i%> <%
								 	} else {
								 %><%=""%> <%
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
							<td class="tdwidth_white"></td>
							<td class="tdwidth_white"></td>
							<td class="tdwidth_white"></td>
							<td class="tdwidth_white"></td>
							<td class="tdwidth_white"></td>
							<td class="tdwidth_white"></td>
							<td class="tdwidth_white"></td>
						</tr>
						<%
							} else {
						%>
						<tr>
							<td class="tdwidth_green">&nbsp;</td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_green"></td>
							<td class="tdwidth_white"></td>
							<td class="tdwidth_white"></td>
							<td class="tdwidth_white"></td>
							<td class="tdwidth_white"></td>
							<td class="tdwidth_white"></td>
							<td class="tdwidth_white"></td>
							<td class="tdwidth_white"></td>
						</tr>
						<%
							}
							}
						%>
					</table>
			</td>
			<td width="10%"></td>
			</tr>
		</table>
	</div>
</body>
</html>
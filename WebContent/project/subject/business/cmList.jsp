<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>合并用药列表</title>
<style type="text/css">
.table {
	table-layout: fixed;
}

.table td:hover {
	overflow: visible;
	white-space: normal;
}

.table td {
	word-wrap: break-word;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}
</style>
</head>
<body>
	<div>
		<h2 style="text-align: center;">合并用药列表</h2>
		<div style="text-align: center;">
			<label>选择中心：</label>
			<select>
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
		<br />
		<table width="100%" border="1" style="x-overflow: scroll; table-layout: fixed;">
			<%
				for (int i = 1; i < 36; i++) {
			%>
			<tr>
				<%
					for (int j = 1; j < 41; j++) {
						if (j % 3 == 0 || i % 4 == 0 || i== 1) {
						%>
						<td width="120px"><%="哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈尔滨" + i + "-" + j%></td>
						<%
						} else {
						%>
						<td width="120px"><%=i + "-" + j%></td>
						<%
						}
					}
				%>
			</tr>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>
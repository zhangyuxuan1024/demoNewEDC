<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.th {
	text-align: center;
}
</style>
</head>
<body>
	<div style="font: 14px solid arial">
		<div>
			<h4>
				<b>合并用药</b>
			</h4>
		</div>
		<button class="btn btn-primary">增加记录</button>
		&nbsp;&nbsp;
		<button class="btn btn-primary">返回列表</button>
		<br />
		<br />
		<div>
			<table class="table table-striped table-bordered table-hover col-sm-12" style="text-align: center;">
				<thead>
					<tr>
						<th class="col-sm-1 th">编号</th>
						<th class="col-sm-1 th">药物名称</th>
						<th class="col-sm-2 th">开始日期</th>
						<th class="col-sm-1 th">录入状态</th>
						<th class="col-sm-1 th">疑问</th>
						<th class="col-sm-1 th ">SDV</th>
						<th class="col-sm-1 th">电子签名</th>
						<th class="col-sm-1 th">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>阿司匹林</td>
						<td>2018年5月29日</td>
						<td>已提交</td>
						<td>无</td>
						<td>已做</td>
						<td>已做</td>
						<td><a>查看</a></td>
					</tr>
					<tr>
						<td>2</td>
						<td>板蓝根</td>
						<td>2012年5月29日</td>
						<td>已提交</td>
						<td style="color: red">有</td>
						<td style="color: red">未做</td>
						<td style="color: red">未做</td>
						<td><a>查看</a></td>
					</tr>
					<tr>
						<td>3</td>
						<td>三硝基甲苯</td>
						<td>2014年5月29日</td>
						<td style="color: red">未提交</td>
						<td>有</td>
						<td style="color: red">未做</td>
						<td>已做</td>
						<td><a>查看</a></td>
					</tr>
					<tr>
						<td>4</td>
						<td>新康泰克</td>
						<td>2018年5月29日</td>
						<td>已提交</td>
						<td>无</td>
						<td>已做</td>
						<td style="color: red">未做</td>
						<td><a>查看</a></td>
					</tr>
					<tr>
						<td>5</td>
						<td>葡萄糖酸钙</td>
						<td>2016年2月7日</td>
						<td>已提交</td>
						<td>有</td>
						<td>已做</td>
						<td>已做</td>
						<td><a>查看</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
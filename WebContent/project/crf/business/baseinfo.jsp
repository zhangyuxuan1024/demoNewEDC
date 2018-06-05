<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
%>
<head>
<style type="text/css">
.helpBar {
	box-sizing: content-box;
	padding: 0px;
	display: block;
	visibility: visible;
	border: none;
	float: none;
	overflow: hidden;
	position: fixed;
	z-index: 2147483646;
	height: 200px;
	right: 20px;
	top: 150px;
	background: none;
}

.menu {
	box-sizing: content-box;
	position: absolute;
	padding-top: 5px;
	width: 100px;
	height: 25px;
	top: 0px;
	left: 0px;
	cursor: pointer;
	color: rgb(255, 255, 255);
	text-align: center;
	line-height: 20px;
	background-color: #a8bacc;
	font-size: 14px;
}

.th {
	text-align: center;
}

#basic-table td {
	vertical-align: middle;
}
</style>
</head>
<body>
	<form class="form-horizontal" id="information" method="post">
		<div style="font: 14px solid arial">
			<div>
				<h5>
					<b>受试者基本资料</b>
				</h5>
				<table style="width: 100%">
					<tr height="40px">
						<td width="10%">出生日期</td>
						<td width="30%"><input id="Screening.DM.birth_y" type="text" size="8" /> 年 <input
								id="Screening.DM.birth_m" type="text" size="4" /> 月 <input id="Screening.DM.birth_d"
								type="text" size="4" /> 日</td>
						<td width="10%">性别</td>
						<td><select id="Screening.DM.sex">
								<option></option>
								<option>男</option>
								<option>女</option>
							</select></td>
					</tr>
					<tr height="40px">
						<td>身高</td>
						<td><input id="Screening.VS.height" type="text" /></td>
						<td>体重</td>
						<td><input id="Screening.VS.weight" type="text" /></td>
					</tr>
					<tr height="40px">
						<td>体温</td>
						<td><input id="Screening.VS.temp" type="text" /></td>
						<td>呼吸</td>
						<td><input id="Screening.VS.breath" type="text" /></td>
					</tr>
					<tr height="40px">
						<td>收缩压</td>
						<td><input id="Screening.VS.sbp" type="text" /></td>
						<td>舒张压</td>
						<td><input id="Screening.VS.dbp" type="text" /></td>
					</tr>
					<tr height="40px">
						<td>心率</td>
						<td><input id="Screening.VS.hr" type="text" /></td>
						<td colspan="2"></td>
					</tr>
					<tr height="40px">
						<td>联系方式1</td>
						<td><input id="Screening.OTH.phone1" type="text" maxlength="11" /></td>
						<td>联系方式2</td>
						<td><input id="Screening.OTH.phone2" type="text" /></td>
					</tr>
				</table>
				<hr />
				<h5>
					<b>疾病史</b>
				</h5>
				<table style="width: 100%">
					<tr height="40px">
						<td width="20%">糖尿病 <select id="Screening.MH.tnb_yn">
								<option></option>
								<option>无</option>
								<option>有</option>
							</select>
						</td>
						<td>糖尿病类型 <select id="Screening.MH.tnblx_cl">
								<option></option>
								<option>I型</option>
								<option>II型</option>
								<option>III型</option>
							</select> ， 持续时间 <input id="Screening.MH.tnb_year" type="text" size="4" /> 年， 治疗方式 <select
								id="Screening.MH.tnbzl_cl">
								<option></option>
								<option>药物治疗</option>
								<option>手术治疗</option>
							</select>
						</td>
					</tr>
					<tr height="40px">
						<td width="20%">高血压 <select id="Screening.MH.gxy_yn">
								<option></option>
								<option>无</option>
								<option>有</option>
							</select>
						</td>
						<td>持续时间 <input id="Screening.MH.gxy_year" type="text" size="4" /> 年， 治疗方式 <select
								id="Screening.MH.gxyzl_cl">
								<option></option>
								<option>药物治疗</option>
								<option>手术治疗</option>
							</select>
						</td>
					</tr>
					<tr height="40px">
						<td width="20%">高脂血症 <select id="Screening.MH.gzxz_yn">
								<option></option>
								<option>无</option>
								<option>有</option>
							</select>
						</td>
						<td>持续时间 <input id="Screening.MH.gzxz_y" type="text" size="4" /> 年
						</td>
					</tr>
					<tr height="40px">
						<td width="20%">吸烟 <select id="Screening.SU.xy_cl">
								<option></option>
								<option>无</option>
								<option>有</option>
							</select>
						</td>
						<td>持续时间 <input id="Screening.SU.xy_year" type="text" size="4" /> 年 <input
								id="Screening.SU.xy_month" type="text" size="4" /> 月
						</td>
					</tr>
				</table>
				<table style="width: 100%">
					<tr height="40px">
						<td width="15%">本次急性心梗临床类型</td>
						<td width="25%"><select id="Screening.MH.jxxglx_cl">
								<option></option>
								<option>I型</option>
								<option>II型</option>
								<option>III型</option>
							</select></td>
						<td width="15%">本次急性心梗部位</td>
						<td><select id="Screening.MH.jxxgbw_cl">
								<option></option>
								<option>左心房</option>
								<option>右心房</option>
							</select></td>
					</tr>
					<tr height="40px">
						<td>既往心绞痛或心肌缺血表现</td>
						<td><select id="Screening.MH.xjt_yn">
								<option></option>
								<option>表现一</option>
								<option>表现二</option>
								<option>表现三</option>
							</select></td>
						<td>既往心绞痛或心肌缺血表现类型</td>
						<td><select id="Screening.MH.xjtlx_cl">
								<option></option>
								<option>表现一</option>
								<option>表现二</option>
								<option>表现三</option>
							</select></td>
					</tr>
					<tr height="40px">
						<td>稳定型心绞痛CCS分级</td>
						<td><select id="Screening.MH.xjtwd_cl">
								<option></option>
								<option>表现一</option>
								<option>表现二</option>
								<option>表现三</option>
							</select></td>
						<td>不稳定型心绞痛Braunwald分级</td>
						<td><select id="Screening.MH.xjtbwd_cl">
								<option></option>
								<option>表现一</option>
								<option>表现二</option>
								<option>表现三</option>
							</select></td>
					</tr>
					<tr height="40px">
						<td>心功能不全表现</td>
						<td><select id="Screening.MH.xgn_yn">
								<option></option>
								<option>表现一</option>
								<option>表现二</option>
								<option>表现三</option>
							</select></td>
						<td>NYHA分级</td>
						<td><select id="Screening.MH.xgnfj_cl">
								<option></option>
								<option>等级一</option>
								<option>等级二</option>
								<option>等级三</option>
							</select></td>
					</tr>
					<tr height="40px">
						<td>急性心梗KILLIP分级</td>
						<td><select id="Screening.MH.xgjxg_cl">
								<option></option>
								<option>等级一</option>
								<option>等级二</option>
								<option>等级三</option>
							</select></td>
						<td colspan="2"></td>
					</tr>
				</table>
				<br />
				<div style="display: inline;">
					<button class="btn btn-primary">保存</button>
				</div>
				<div style="display: inline; margin-left: 10px">
					<button class="btn btn-primary">提交</button>
				</div>
				<div style="display: inline; margin-left: 10px">
					<button class="btn btn-primary">电子签名</button>
				</div>
				<br /> <br />
				<div>
					<table class="table table-striped table-bordered table-hover"
						style="font-size: 15px; width: 100%">
						<thead>
							<tr>
								<th width="35%" class="th">疑问描述</th>
								<th width="8%" class="th">操作</th>
								<th width="10%" class="th">发起者</th>
								<th width="47%" class="th">修改/不修改理由</th>
							</tr>
						</thead>
						<tbody style="background-color: rgb(249, 249, 249)">
							<tr>
								<td>既往3个月内发生活动性消化性溃疡，符合排除标准第2项，请确认既往3个月内发生活动性消化性溃疡，符合排除标准第2项，请确认既往3个月内发生活动性消化性溃疡，符合排除标准第2项，请确认既往3个月内发生活动性消化性溃疡，符合排除标准第2项，请确认</td>
								<td style="text-align: center; vertical-align: middle;"><a>回答</a></td>
								<td style="text-align: center; vertical-align: middle;">CRC</td>
								<td style="text-align: center; vertical-align: middle;"><input id="change"
										name="change" size="40" maxlength="30" style="display: inline;" />
									<button type="button" class="btn btn-xs btn-info" data-toggle="button"
										style="display: inline;">提交疑问回答</button></td>
							</tr>
							<tr>
								<td>符合排除标准第2项，请确认</td>
								<td style="text-align: center; vertical-align: middle;"><a>回答</a></td>
								<td style="text-align: center; vertical-align: middle;">研究者</td>
								<td style="text-align: center; vertical-align: middle;"><input id="change"
										name="change" size="40" maxlength="30" style="display: inline;" />
									<button type="button" class="btn btn-xs btn-info" data-toggle="button"
										style="display: inline;">提交疑问回答</button></td>
							</tr>
							<tr>
								<td>既往3个月内发生第2项，请确认</td>
								<td style="text-align: center; vertical-align: middle;"><a>回答</a></td>
								<td style="text-align: center; vertical-align: middle;">数据管理员</td>
								<td style="text-align: center; vertical-align: middle;"><input id="change"
										name="change" size="40" maxlength="30" style="display: inline;" />
									<button type="button" class="btn btn-xs btn-info" data-toggle="button"
										style="display: inline;">提交疑问回答</button></td>
							</tr>
						</tbody>
					</table>
				</div>
				<br />
				<div>
					<table class="table table-striped table-bordered table-hover"
						style="font-size: 15px; width: 100%">
						<thead>
							<tr>
								<th width="15%" class="th">疑问描述</th>
								<th width="8%" class="th">疑问状态</th>
								<th width="15%" class="th">变量名</th>
								<th width="8%" class="th">旧值</th>
								<th width="8%" class="th">新值</th>
								<th width="15%" class="th">修改/不修改理由</th>
								<th width="8%" class="th">发起者</th>
								<th width="8%" class="th">回答者</th>
								<th width="15%" class="th">操作</th>
							</tr>
						</thead>
						<tbody id="basic-table">
							<tr>
								<td>请确认高血压</td>
								<td style="text-align: center;">已确认</td>
								<td>高血压</td>
								<td style="text-align: center;">1</td>
								<td style="text-align: center;">2</td>
								<td>已核实修改</td>
								<td style="text-align: center;">监察员</td>
								<td style="text-align: center;">研究者</td>
								<td style="text-align: center;">
									<button type="button" class="btn btn-xs btn-info" data-toggle="button"
										style="display: inline;">关闭疑问</button>
									<button type="button" class="btn btn-xs btn-info" data-toggle="button"
										style="display: inline;">再次发送</button>
								</td>
							</tr>
							<tr>
								<td>凄凄切切群群群群</td>
								<td style="text-align: center;">已解答</td>
								<td>消化性活动性消化性活动性消化性活动性消化性活动性</td>
								<td style="text-align: center;">2</td>
								<td style="text-align: center;">1</td>
								<td>填写错误，已修改</td>
								<td style="text-align: center;">监察员</td>
								<td style="text-align: center;">研究者</td>
								<td style="text-align: center;">
									<button type="button" class="btn btn-xs btn-info" data-toggle="button"
										style="display: inline;">关闭疑问</button>
									<button type="button" class="btn btn-xs btn-info" data-toggle="button"
										style="display: inline;">再次发送</button>
								</td>
							</tr>
							<tr>
								<td>请确认高血压</td>
								<td style="text-align: center;">已确认</td>
								<td>高血压</td>
								<td style="text-align: center;">1</td>
								<td style="text-align: center;">2</td>
								<td>已核实修改</td>
								<td style="text-align: center;">监察员</td>
								<td style="text-align: center;">研究者</td>
								<td style="text-align: center;"><a href="#">关闭疑问</a> <a href="#">再次发送</a></td>
							</tr>
							<tr>
								<td>凄凄切切群群群群</td>
								<td style="text-align: center;">已解答</td>
								<td>消化性活动性消化性活动性消化性活动性消化性活动性</td>
								<td style="text-align: center;">2</td>
								<td style="text-align: center;">1</td>
								<td>填写错误，已修改</td>
								<td style="text-align: center;">监察员</td>
								<td style="text-align: center;">研究者</td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</form>
	<!-- 浮动框 -->
	<div id="helpBar" class="helpBar">
		<div class="menu">辅助菜单</div>
		<table style="margin-top: 30px; margin-right: 30px; width: 100px;" border="0">
			<tr>
				<td style="height: 5px"></td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-primary" style="width: 100%">保存</button>
				</td>
			</tr>
			<tr>
				<td style="height: 5px"></td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-primary" style="width: 100%">提交</button>
				</td>
			</tr>
			<tr>
				<td style="height: 5px"></td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-primary" style="width: 100%">电子签名</button>
				</td>
			</tr>
			<tr>
				<td style="height: 5px"></td>
			</tr>
		</table>
		<div
			style="box-sizing: content-box; position: absolute; width: 100px; height: 20px; top: 176px; left: 0px; cursor: pointer; color: rgb(255, 255, 255); text-align: center; line-height: 20px; background-color: #a8bacc; font-size: 14px;"
			onclick="closeHelpBar()">关闭</div>
	</div>
</body>
<script type="text/javascript">
	/*$(document).ready(function(){
	    var specs=parse(${specs});
	    var trialDatabases=parse(${trialDatabases});
	    initComponent(specs);
	    initInformation(trialDatabases);
	});*/
</script>

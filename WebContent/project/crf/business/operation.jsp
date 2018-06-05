<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
%>
<head>
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
</style>
</head>
<script type="text/javascript">
	$(function() {
		$('#enterTime').timepicker({
			minuteStep : 1,
			showSeconds : true,
			showMeridian : false
		}).next().on(ace.click_event, function() {
			$(this).prev().focus();
		});
		$('#leaveTime').timepicker({
			minuteStep : 1,
			showSeconds : true,
			showMeridian : false
		}).next().on(ace.click_event, function() {
			$(this).prev().focus();
		});
		$('#startTime1').timepicker({
			minuteStep : 1,
			showSeconds : true,
			showMeridian : false
		}).next().on(ace.click_event, function() {
			$(this).prev().focus();
		});
		$('#endTime1').timepicker({
			minuteStep : 1,
			showSeconds : true,
			showMeridian : false
		}).next().on(ace.click_event, function() {
			$(this).prev().focus();
		});
		$('#startTime2').timepicker({
			minuteStep : 1,
			showSeconds : true,
			showMeridian : false
		}).next().on(ace.click_event, function() {
			$(this).prev().focus();
		});
		$('#endTime2').timepicker({
			minuteStep : 1,
			showSeconds : true,
			showMeridian : false
		}).next().on(ace.click_event, function() {
			$(this).prev().focus();
		});
		$('#operationstartTime').timepicker({
			minuteStep : 1,
			showSeconds : true,
			showMeridian : false
		}).next().on(ace.click_event, function() {
			$(this).prev().focus();
		});
		$('#operationendTime').timepicker({
			minuteStep : 1,
			showSeconds : true,
			showMeridian : false
		}).next().on(ace.click_event, function() {
			$(this).prev().focus();
		});
	});
</script>
<body>
	<form class="form-horizontal" id="information" method="post">
		<div style="font: 14px solid arial">
			<div>
				<h4>
					<b>心脏移植术 手术过程记录</b>
				</h4>
				<table style="width: 100%; border-collapse: separate; border-spacing: 0px 10px">
					<tr>
						<td colspan="2"><b>心脏移植术</b></td>
					</tr>
					<tr>
						<td width="25%">心脏移植手术是否成功？</td>
						<td><select id="xzyzcg" name="xzyzcg">
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr id="xzyzcg_tr1">
						<td>&nbsp;&nbsp;未成功原因</td>
						<td><input id="xzyzcg1" name="xzyzcg1" type="text" size="60" maxlength="60" /></td>
					</tr>
				</table>
				<table style="width: 100%; border-collapse: separate; border-spacing: 0px 10px">
					<tr>
						<td colspan="2"><b>合并手术（同时实施的手术）</b></td>
					</tr>
					<tr>
						<td colspan="2">受试者有无合并手术（同时实施的手术） <select id="hbss" name="hbss">
								<option></option>
								<option>有</option>
								<option>无</option>
							</select> <span id="hbss_tr1">有，请填写以下信息：</span>
						</td>
					</tr>
					<tr span id="hbss_tr2">
						<td colspan="2">合并手术： <select id="hbssn" name="hbssn">
								<option></option>
								<option>ASD房间隔缺损封闭术</option>
								<option>三尖瓣修复术</option>
								<option>CABG冠状动脉移植术</option>
								<option>PFO卵圆孔未闭闭合术</option>
								<option>二尖瓣修复术</option>
								<option>RAVD植入术</option>
								<option>其他手术</option>
							</select>
						</td>
					</tr>
					<tr id="hbssn_tr1">
						<td colspan="2">&nbsp;&nbsp;其他手术名称： <input id="hbssn1" name="hbssn1" type="text"
								size="60" maxlength="60" />
						</td>
					</tr>
				</table>
				<table style="width: 100%; border-collapse: separate; border-spacing: 0px 10px">
					<tr>
						<td colspan="2"><b>手术时间</b></td>
					</tr>
					<tr>
						<td colspan="2">受试者有无记录手术时间？ <select id="jlss" name="jlss">
								<option></option>
								<option>有</option>
								<option>无</option>
							</select> <span id="jlss_tr1">有，请填写以下信息：</span>
						</td>
					</tr>
				</table>
				<table style="width: 100%; line-height: 60px">
					<tr id="jlss_tr2">
						<td width="20%">手术室时间</td>
						<td width="10%">进入时间：</td>
						<td width="20%">
							<div class="input-group bootstrap-timepicker" style="width: 170px">
								<input id="enterTime" type="text" class="form-control" />
								<span class="input-group-addon">
									<i class="fa fa-clock-o bigger-110"></i>
								</span>
							</div>
						</td>
						<td width="10%">离开时间：</td>
						<td width="20%">
							<div class="input-group bootstrap-timepicker" style="width: 170px">
								<input id="leaveTime" type="text" class="form-control" />
								<span class="input-group-addon">
									<i class="fa fa-clock-o bigger-110"></i>
								</span>
							</div>
						</td>
						<td width="20%"></td>
					</tr>
					<tr id="jlss_tr3">
						<td>麻醉时间</td>
						<td>开始时间</td>
						<td>
							<div class="input-group bootstrap-timepicker" style="width: 170px">
								<input id="startTime1" type="text" class="form-control" />
								<span class="input-group-addon">
									<i class="fa fa-clock-o bigger-110"></i>
								</span>
							</div>
						</td>
						<td>结束时间：</td>
						<td>
							<div class="input-group bootstrap-timepicker" style="width: 170px">
								<input id="endTime1" type="text" class="form-control" />
								<span class="input-group-addon">
									<i class="fa fa-clock-o bigger-110"></i>
								</span>
							</div>
						</td>
						<td width="20%"></td>
					</tr>
					<tr id="jlss_tr4">
						<td>体外循环时间</td>
						<td>开始时间</td>
						<td>
							<div class="input-group bootstrap-timepicker" style="width: 170px">
								<input id="startTime2" type="text" class="form-control" />
								<span class="input-group-addon">
									<i class="fa fa-clock-o bigger-110"></i>
								</span>
							</div>
						<td>结束时间：</td>
						<td>
							<div class="input-group bootstrap-timepicker" style="width: 170px">
								<input id="endTime2" type="text" class="form-control" />
								<span class="input-group-addon">
									<i class="fa fa-clock-o bigger-110"></i>
								</span>
							</div>
						</td>
						<td width="20%"></td>
					</tr>
					<tr id="jlss_tr5">
						<td>手术时间</td>
						<td>开始时间</td>
						<td>
							<div class="input-group bootstrap-timepicker" style="width: 170px">
								<input id="operationstartTime" type="text" class="form-control" />
								<span class="input-group-addon">
									<i class="fa fa-clock-o bigger-110"></i>
								</span>
							</div>
						</td>
						<td>结束时间：</td>
						<td>
							<div class="input-group bootstrap-timepicker" style="width: 170px">
								<input id="operationendTime" type="text" class="form-control" />
								<span class="input-group-addon">
									<i class="fa fa-clock-o bigger-110"></i>
								</span>
							</div>
						</td>
						<td width="20%"></td>
					</tr>
					<tr id="jlss_tr6">
						<td>心室颤动时间</td>
						<td><input id="xscd" name="xscd" type="text" size="5" maxlength="${lenMap['xscd']}" />
							分钟</td>
					</tr>
				</table>
				<table style="width: 100%; border-collapse: separate; border-spacing: 0px 10px">
					<tr>
						<td width="30%">有无实施主动脉阻断？</td>
						<td><select id="zdmzd" name="zdmzd">
								<option></option>
								<option>无</option>
								<option>有</option>
							</select> <span id="zdmzd_tr1">有，请填写以下信息：</span></td>
					</tr>
					<tr id="zdmzd_tr2">
						<td>&nbsp;&nbsp;阻断时间</td>
						<td><input id="zdsj" name="zdsj" type="text" size="5" maxlength="5" /> 分钟</td>
					</tr>
					<tr id="zdmzd_tr3">
						<td colspan="2">&nbsp;&nbsp;阻断理由： <input id="zdly" name="zdly" type="text" size="60"
								maxlength="60" />
						</td>
					</tr>
					<tr>
						<td colspan="2"><b>出血量和输血量</b></td>
					</tr>
					<tr>
						<td>手术期间有无记录出血量？</td>
						<td><select id="cxjl" name="cxjl">
								<option></option>
								<option>无</option>
								<option>有</option>
							</select> <span id="cxjl_tr1">
								有，出血量：
								<input id="cxl" name="cxl" type="text" size="10" maxlength="10" />
								ml
							</span></td>
					</tr>
					<tr>
						<td>受试者手术期间有无给予输血？</td>
						<td><select id="shuxue" name="shuxue">
								<option></option>
								<option>无</option>
								<option>有</option>
							</select> <span id="shuxue_tr1">有，请填写以下信息：</span></td>
					</tr>
				</table>
				<table style="width: 100%; border-collapse: separate; border-spacing: 0px 10px" id="shuxue_tr2">
					<tr>
						<td width="6%"><b>序号</b></td>
						<td width="35%"><b>血液制品名称</b></td>
						<td width="12%"><b>是否输血</b></td>
						<td width="23%"><b>输血日期(年/月/日)</b></td>
						<td width="15%"><b>输血量</b></td>
						<td><b>单位</b></td>
					</tr>
					<tr>
						<td>01</td>
						<td>红血细胞悬液（MAP）</td>
						<td><select id="sxmap" name="sxmap">
								<option></option>
								<option>否</option>
								<option>是</option>
							</select></td>
						<td id="sxmap_tr1"></td>
						<td id="sxmap_tr2"><input id="sxmapl" name="sxmapl" type="text" size="8" maxlength="8" /></td>
						<td id="sxmap_tr3"><select id="sxmpau" name="sxmpau">
								<option></option>
								<option>cc</option>
								<option>ml</option>
							</select></td>
					</tr>
					<tr>
						<td>02</td>
						<td>新鲜冰冻血浆（FFP）</td>
						<td><select id="sxffp" name="sxffp">
								<option></option>
								<option>否</option>
								<option>是</option>
							</select></td>
						<td id="sxffp_tr1"></td>
						<td id="sxffp_tr2"><input id="sxffpl" name="sxffpl" type="text" size="8" maxlength="8" />
						</td>
						<td id="sxffp_tr3"><select id="sxffpu" name="sxffpu">
								<option></option>
								<option>cc</option>
								<option>ml</option>
							</select></td>
					</tr>
					<tr>
						<td>03</td>
						<td>血小板</td>
						<td><select id="sxxcb" name="sxxcb">
								<option></option>
								<option>否</option>
								<option>是</option>
							</select></td>
						<td id="sxxcb_tr1"></td>
						<td id="sxxcb_tr2"><input id="sxxcbl" name="sxxcbl" type="text" size="8" maxlength="8" />
						</td>
						<td id="sxxcb_tr3"><select id="sxxcbu" name="sxxcbu">
								<option></option>
								<option>cc</option>
								<option>ml</option>
							</select></td>
					</tr>
					<tr>
						<td>04</td>
						<td colspan="2">其他1&nbsp; <select id="sxqt1" name="sxqt1">
								<option></option>
								<option>无</option>
								<option>有</option>
							</select> <span id="sxqt1_tr1">
								<input id="sxqt1n" name="sxqt1n" type="text" size="30" maxlength="30" />
							</span>
						</td>
						<td></td>
						<td><span id="sxqt1_tr3">
								<input id="sxqtl1" name="sxqtl1" type="text" size="8" maxlength="8" />
							</span></td>
						<td><span id="sxqt1_tr4">
								<select id="sxqtu1" name="sxqtu1">
									<option></option>
									<option>cc</option>
									<option>ml</option>
								</select>
							</span></td>
					</tr>
					<tr>
						<td>05</td>
						<td colspan="2">其他2&nbsp; <select id="sxqt2" name="sxqt2">
								<option></option>
								<option>无</option>
								<option>有</option>
							</select> <span id="sxqt2_tr1">
								<input id="sxqt2n" name="sxqt2n" type="text" size="30" maxlength="30" />
							</span>
						</td>
						<td id="sxqt2_tr2"></td>
						<td id="sxqt2_tr3"><input id="sxqtl2" name="sxqtl2" type="text" size="8" maxlength="8" />
						</td>
						<td id="sxqt2_tr4"><select id="sxqtu2" name="sxqtu2">
								<option></option>
								<option>cc</option>
								<option>ml</option>
							</select></td>
					</tr>
				</table>
				<table style="width: 100%; border-collapse: separate; border-spacing: 0px 10px">
					<tr>
						<td colspan="2"><b>经食管超声心动图观察（心脏移植时）</b></td>
					</tr>
					<tr>
						<td width="40%">受试者是否进行经食管超声心动图检查？</td>
						<td><select id="sgcs" name="sgcs">
								<option></option>
								<option>否</option>
								<option>是</option>
							</select> <span id="sgcs_tr2">如“是”，请填写如下信息：</span></td>
					</tr>
					<tr id="sgcs_tr1">
						<td colspan="2">&nbsp;&nbsp;如“否”，请说明原因： <input id="sgcsyy" name="sgcsyy" type="text"
								size="60" maxlength="60" />
						</td>
					</tr>
					<tr id="sgcs_tr3">
						<td>是否拍摄经食管超声心动图检查？</td>
						<td><select id="sgcsps" name="sgcsps">
								<option></option>
								<option>否</option>
								<option>是</option>
							</select></td>
					</tr>
					<tr id="sgcs_tr4">
						<td colspan="2">是否经食管超声心动图观察体内构成组件安装状态？ <select id="sgcszj" name="sgcszj">
								<option></option>
								<option>否</option>
								<option>是</option>
							</select>
						</td>
					</tr>
				</table>
				<table style="width: 100%; border-collapse: separate; border-spacing: 0px 10px" id="sgcs_tr5">
					<tr>
						<td width="20%"><b></b></td>
						<td width="20%"><b>观察项目</b></td>
						<td width="12%"><b>正常/异常</b></td>
						<td><b>异常说明</b></td>
					</tr>
					<tr>
						<td><b>入血管的插入处</b></td>
						<td>入血管的位置</td>
						<td><select id="sgcs1" name="sgcs1">
								<option></option>
								<option>正常</option>
								<option>异常</option>
							</select></td>
						<td><span id="sgcs1_tr1">
								<input id="sgcs1a" name="sgcs1a" type="text" size="40" maxlength="40" />
							</span></td>
					</tr>
					<tr>
						<td></td>
						<td>入血管的方向</td>
						<td><select id="sgcs2" name="sgcs2">
								<option></option>
								<option>正常</option>
								<option>异常</option>
							</select></td>
						<td><span id="sgcs2_tr1">
								<input id="sgcs2a" name="sgcs2a" type="text" size="40" maxlength="40" />
							</span></td>
					</tr>
					<tr>
						<td></td>
						<td>缝合部位出血</td>
						<td><select id="sgcs3" name="sgcs3">
								<option></option>
								<option>无</option>
								<option>有</option>
							</select></td>
						<td><span id="sgcs3_tr1">
								<input id="sgcs3a" name="sgcs3a" type="text" size="40" maxlength="40" />
							</span></td>
					</tr>
					<tr>
						<td></td>
						<td>其他</td>
						<td><select id="sgcs4" name="sgcs4">
								<option></option>
								<option>无</option>
								<option>有</option>
							</select></td>
						<td><span id="sgcs4_tr1">
								<input id="sgcs4a" name="sgcs4a" type="text" size="40" maxlength="40" />
							</span></td>
					</tr>
					<tr>
						<td><b>出血管的缝合处</b></td>
						<td>缝合部位出血</td>
						<td><select id="sgcs5" name="sgcs5">
								<option></option>
								<option>无</option>
								<option>有</option>
							</select></td>
						<td><span id="sgcs5_tr1">
								<input id="sgcs5a" name="sgcs5a" type="text" size="40" maxlength="40" />
							</span></td>
					</tr>
					<tr>
						<td></td>
						<td>其他</td>
						<td><select id="sgcs6" name="sgcs6">
								<option></option>
								<option>无</option>
								<option>有</option>
							</select></td>
						<td><span id="sgcs6_tr1">
								<input id="sgcs6a" name="sgcs6a" type="text" size="40" maxlength="40" />
							</span></td>
					</tr>
					<tr>
						<td colspan="2"><b>升主动脉瓣膜的开闭状态</b></td>
						<td><select id="szdmzt" name="szdmzt">
								<option></option>
								<option>正常</option>
								<option>异常</option>
							</select></td>
						<td><span id="szdmzt_tr1">
								<input id="szdmyc" name="szdmyc" type="text" size="40" maxlength="40" />
							</span></td>
					</tr>
				</table>
				<table style="width: 100%; border-collapse: separate; border-spacing: 0px 10px">
					<tr>
						<td colspan="2"><b>重要提示：</b></td>
					</tr>
					<tr>
						<td width="6%" align="center"><b>1</b></td>
						<td>受试者若发生不良事件，请填写<b style="color: red">“不良事件”</b>表
						</td>
					</tr>
					<tr>
						<td><b></b></td>
						<td style="line-height: 2em">（如果不良事件给予治疗，请分别在<b style="color: red">“血管活性药物”</b>、<b
								style="color: red">“抗凝药物”</b>、<b style="color: red">“其他合并药物（除外血管活性药物和抗凝药物）”</b>或<b
								style="color: red">“合并非药物治疗”</b>表中填写相应的治疗信息。）
						</td>
					</tr>
					<tr>
						<td align="center"><b>2</b></td>
						<td>受试者血管活性药物发生新的变化，请填写<b style="color: red">“血管活性药物”</b>表。
						</td>
					</tr>
					<tr>
						<td><b></b></td>
						<td>（血管活性药物用于治疗不良事件，请在<b style="color: red">“不良事件”</b>表中填写相应的不良事件。）
						</td>
					</tr>
					<tr>
						<td align="center"><b>3</b></td>
						<td>受试者抗凝药物发生新的变化，请填写<b style="color: red">“抗凝药物”</b>表。
						</td>
					</tr>
					<tr>
						<td><b></b></td>
						<td>（抗凝药物用于治疗不良事件，请在<b style="color: red">“不良事件”</b>表中填写相应的不良事件。）
						</td>
					</tr>
					<tr>
						<td align="center"><b>4</b></td>
						<td>受试者其他合并用药发生新的变化，请填写<b style="color: red">“其他合并用药”</b>表。
						</td>
					</tr>
					<tr>
						<td><b></b></td>
						<td>（其他合并用药用于治疗不良事件，请在<b style="color: red">“不良事件”</b>表中填写相应的不良事件。）
						</td>
					</tr>
					<tr>
						<td align="center"><b>5</b></td>
						<td>受试者合并非药物治疗发生新的变化，请填写<b style="color: red">“合并非药物治疗”</b>表。
						</td>
					</tr>
					<tr>
						<td><b></b></td>
						<td>（合并非药物治疗用于治疗不良事件，请在<b style="color: red">“不良事件”</b>表中填写相应的不良事件。）
						</td>
					</tr>
					<tr>
						<td align="center"><b>6</b></td>
						<td>受试者退出试验，请填写<b style="color: red">“研究结束/终止页”</b>。
						</td>
					</tr>
				</table>
			</div>
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
	<br />
	<br />
</body>

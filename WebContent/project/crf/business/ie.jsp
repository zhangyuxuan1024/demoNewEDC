<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
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
.th {
	text-align: center;
}

#basic-table td {
	vertical-align: middle;
}
</style>
</head>
<script type="text/javascript">
 	function showContent(){
		$("#td1").css("overflow","visible");
		$("#td1").css("white-space","normal");
	}
	function hideContent(){
		$("#td1").css("word-wrap","break-word");
		$("#td1").css("overflow","hidden");
		$("#td1").css("text-overflow","ellipsis");
		$("#td1").css("white-space","nowrap");
	}
	/* function showContent(){
		$("#td1").hover(function(){
			$(this).css("overflow","visible");
		},function(){
			$(this).css("white-space","normal");
		});
	}
	function hideContent(){
		$("#td1").css("word-wrap","break-word");
		$("#td1").css("overflow","hidden");
		$("#td1").css("text-overflow","ellipsis");
		$("#td1").css("white-space","nowrap");
	} */
</script>
<body>
	<form class="form-horizontal" id="information" method="post">
		<div style="font: 14px solid arial">
			<div>
				<h4>
					<b>入选排除标准</b>
				</h4>
				<table width="100%" style="border-collapse: separate; border-spacing: 0px 10px">
					<tr>
						<td colspan="3"><b>入选标准</b></td>
					</tr>
					<tr>
						<td colspan="3"><b>如入选标准中任何一项回答为“否”，则受试者不能入选本临床试验。</b></td>
					</tr>
					<tr>
						<td width="5%">(1)</td>
						<td width="70%">年龄大于18岁，男女不限；</td>
						<td width="25%"><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(2)</td>
						<td>终末期/重症心力衰竭，且被判定为适合心脏移植者；*心脏移植适应症由包括该试验实施医疗机构心外科医师判定适应症的可行性。</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(3)</td>
						<td>患有严重心力衰竭症状（符合符合NYHA心功能分级中Ⅳ级）者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(4)</td>
						<td>已知情同意，并且受试者及其家人或陪同人员已在知情同意书上签字。</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td colspan="3"><b>排除标准</b></td>
					</tr>
					<tr>
						<td colspan="3"><b>如排除标准中任何一项回答为“是”，则受试者不能入选本临床试验。</b></td>
					</tr>
					<tr>
						<td>(1)</td>
						<td>术前24小时内，被认定为下述定义的全身性感染者；</br> ①白细胞数＞10000/mm<sup>3</sup>（或白细胞计数＞10.0×109/L），或</br>
							②术前检查血液细菌培养检查呈阳性反应。
						</td>
						<td width="25%"><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(2)</td>
						<td>体表面积＜1.4m<sup>2</sup>者； *测量身高（cm）及体重（kg），利用许文生氏公式进行计算。</br> 体表面积（m<sup>2</sup>）=0.0061×身高（cm）+0.0124×体重（kg）-0.0099。</br>
						</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(3)</td>
						<td>身体质量指数（BMI）＞40kg/m<sup>2</sup>者；
						</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(4)</td>
						<td>被认定为具有以下任何一项不可逆性器官衰竭者；</br> ①肾功能不全</br> 血清肌酐（CR）＞3.0mg/dl（或血清肌酐＞265.2μmol/L），或处于透析治疗中。</br> ②肝功能不全</br>
							血清总胆红素值（TBIL）＞3mg/dl（或血清总胆红素＞51.3μmol/L），或未进行抗凝疗法时国际标准化比值（INR）＞2.0者。</br> ③呼吸衰竭</br>
							使用人工呼吸器官或体外膜肺氧和者；患有慢性阻塞性肺疾病（COPD）者；药物疗法无效，最近肺血管阻力（PVR）在6Wood单位以上，并且症状固定的肺高血压症者；有肺梗塞病史或肺血管发生闭塞性病变者。
						</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(5)</td>
						<td>重度右心衰竭，中心静脉压（CVP）＞20 mmHg者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(6)</td>
						<td>曾经做过心脏移植、或做过左心室形成术的受试者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(7)</td>
						<td>最近90天内发生脑血管功能障碍或有短暂性脑出血发作病史者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(8)</td>
						<td>患有升主动脉中、重度粥样硬化者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(9)</td>
						<td>拒绝输血者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(10)</td>
						<td>患有凝血机制障碍者；</br> *在不进行抗凝疗法下，INR＞2.0，或血小板计数＜50000/mm<sup>3</sup>（或血小板计数＜50×109/L）或有肝素诱导的血小板减少症（HIT）病史。
						</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(11)</td>
						<td>患有不可逆性认知功能障碍者；</br> *简易精神状态评价量表＜24/30。
						</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(12)</td>
						<td>患有精神病、重大感情障碍、酒精依赖性、药物依赖性等重大精神障碍者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(13)</td>
						<td>最近60天内参加药品或其他医疗器械临床试验者；</br> *参加双心起搏临床试验者除外。
						</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(14)</td>
						<td>妊娠者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(15)</td>
						<td>存在未被治疗的直径＞5cm的大动脉瘤者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(16)</td>
						<td>患有重度末梢血管障碍者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(17)</td>
						<td>最近30天内患有脑血栓病史者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(18)</td>
						<td>肿瘤患者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(19)</td>
						<td>肝硬化失代偿期者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(20)</td>
						<td>患有心力衰竭以外重度疾病且预期生存期小于2年者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(21)</td>
						<td>患有B型肝炎（包括乙肝表面抗原阳性）、C型肝炎（包括丙型肝炎病毒抗体阳性）者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(22)</td>
						<td>艾滋病病毒抗体呈现阳性者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(23)</td>
						<td>罹患胶原病等全身性疾病者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(24)</td>
						<td>患有重度中枢神经障碍者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(25)</td>
						<td>机械瓣膜植入者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(26)</td>
						<td>48小时内的急性心肌梗死者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(27)</td>
						<td>患有中等度以上主动脉瓣关闭不全者（需要同期进行主动脉瓣修复或生物瓣替换手术）；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(28)</td>
						<td>无法得到同居看护人协助的受试者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(29)</td>
						<td>符合心脏移植禁忌症者；</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
					</tr>
					<tr>
						<td>(30)</td>
						<td>研究者综合判定受试者不适合进行植入手术者。</td>
						<td><select>
								<option></option>
								<option>是</option>
								<option>否</option>
							</select></td>
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
						<tr id="tr1">
							<td id="td1">既往3个月内发生活动性消化性溃疡，符合排除标准第2项，请确认既往3个月内发生活动性消化性溃疡，符合排除标准第2项，请确认既往3个月内发生活动性消化性溃疡，符合排除标准第2项，请确认既往3个月内发生活动性消化性溃疡，符合排除标准第2项，请确认</td>
							<td style="text-align: center; vertical-align: middle;"><a>回答</a></td>
							<td style="text-align: center; vertical-align: middle;">CRC</td>
							<td style="text-align: center; vertical-align: middle;"><input id="change" name="change"
									size="40" maxlength="30" style="display: inline;" onfocus="showContent()" onblur="hideContent()"/>
								<button type="button" class="btn btn-xs btn-info" data-toggle="button"
									style="display: inline;">提交疑问回答</button></td>
						</tr>
						<tr>
							<td>符合排除标准第2项，请确认符合排除标准第2项，请确认符合排除标准第2项，请确认符合排除标准第2项，请确认符合排除标准第2项，请确认符合排除标准第2项，请确认符合排除标准第2项，请确认符合排除标准第2项，请确认</td>
							<td style="text-align: center; vertical-align: middle;"><a>回答</a></td>
							<td style="text-align: center; vertical-align: middle;">研究者</td>
							<td style="text-align: center; vertical-align: middle;"><input id="change" name="change"
									size="40" maxlength="30" style="display: inline;" />
								<button type="button" class="btn btn-xs btn-info" data-toggle="button"
									style="display: inline;">提交疑问回答</button></td>
						</tr>
						<tr>
							<td>既往3个月内发生第2项，请确认</td>
							<td style="text-align: center; vertical-align: middle;"><a>回答</a></td>
							<td style="text-align: center; vertical-align: middle;">数据管理员</td>
							<td style="text-align: center; vertical-align: middle;"><input id="change" name="change"
									size="40" maxlength="30" style="display: inline;" />
								<button type="button" class="btn btn-xs btn-info" data-toggle="button"
									style="display: inline;">提交疑问回答</button></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<br /> <br />
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
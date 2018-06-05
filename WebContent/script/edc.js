//初始化组件 
function initComponent(specs){
	for(var o in specs){
		var spec=specs[o];
		$("[id='"+spec.variableName+"']").attr("name",spec.variableName); 
		if(spec.controlType=='dropdown'){
			var options=spec.dataFormat.split(';');
			$("[id='"+spec.variableName+"']").append("<option value=''></option>");
			for(var i in options){
				var option=options[i];
				var value_text=option.split('=');
				$("[id='"+spec.variableName+"']").append("<option value='"+value_text[0]+"'>"+value_text[1]+"</option>");
			}
		}
		else if(spec.controlType=='number'){
			$("[id='"+spec.variableName+"']").attr("maxlength",spec.dataFormat);  
		}
		else if(spec.controlType=='int'){
			$("[id='"+spec.variableName+"']").attr("maxlength",spec.dataFormat);  
		}
		else if(spec.controlType=='float'){
			$("[id='"+spec.variableName+"']").attr("maxlength",spec.dataFormat);  
		}
		else if(spec.controlType=='date'){
			$("[id='"+spec.variableName+"']").attr("maxlength",spec.dataFormat.length); 
			$("[id='"+spec.variableName+"']").after('<div class="help-block inline" style="font-size:13px">'+spec.dataFormat+'</div>');   
		}
		else if(spec.controlType=='text'){
			$("[id='"+spec.variableName+"']").attr("maxlength",spec.dataFormat);  
		}
		else{
			alert(spec.variableName+"-"+spec.controlType+':类型初始化错误');
		}
	}
}
//初始化数据
function initInformation(trialDatabases){
	//var trialDatabases=parse(trialDatabases);
	for(var o in trialDatabases){
		var trialDatabase=trialDatabases[o];
		$("[id='"+trialDatabase.variableName+"']").val(trialDatabase.variableValue);   
	}
}

//增加录入控制规则
function initSwitchRule(specs){
	for(var o in specs){
		var spec=specs[o];
		if(spec.switchRule!=null){
			var rule=spec.switchRule.split(';');
			var expression=rule[0];
			var variables=rule[1];
			var variableName=spec.variableName;
			$("[id='"+variableName+"']").on("change",{"variableName":variableName,"expression":expression,"variables":variables},
				function(event){
					doSwitchRule(event.data.variableName,event.data.expression,event.data.variables);
				}
			);
			//alert(variableName+"->"+value+"->"+variables+":"+spec.variableName);
			//初始化录入控制
			$("[id='"+variableName+"']").change();
		}
	}
}
//录入控制
function doSwitchRule(variableName,expression,variables){
	var value=$("[id='"+variableName+"']").val(); 
	if(expression.indexOf('{')==0){
		var s=expression.substr(1,expression.length-2).split(',');
		if(s.indexOf(value)<0){
			var variableNames=variables.split(',');
			for(var o in variableNames){
				$("[id='"+variableNames[o]+"']").val('').attr("disabled","disabled");
				if($("[id='"+variableNames[o]+"']").is('select')){
					$("[id='"+variableNames[o]+"']").change();
				}
			}
		}
		else{
			var variableNames=variables.split(',');
			for(var o in variableNames){
				$("[id='"+variableNames[o]+"']").removeAttr('disabled');
			}
		}
	}
	else{
		var s=expression.substr(1,expression.length-2).split(',');
		var flag=expression.substr(0,1)+expression.substr(expression.length-1,expression.length),minValue=Number(s[0]),maxValue=Number(s[1]);
		if(flag=="[]"){
			if(value<minValue || value>maxValue){
				var variableNames=variables.split(',');
				for(var o in variableNames){
					$("[id='"+variableNames[o]+"']").val('').attr("disabled","disabled");
					if($("[id='"+variableNames[o]+"']").is('select')){
						$("[id='"+variableNames[o]+"']").change();
					}
				}
			}
			else{
				var variableNames=variables.split(',');
				for(var o in variableNames){
					$("[id='"+variableNames[o]+"']").removeAttr('disabled');
				}
			}
		}
		else if(flag=="(]"){
			if(value<=minValue || value>maxValue){
				var variableNames=variables.split(',');
				for(var o in variableNames){
					$("[id='"+variableNames[o]+"']").val('').attr("disabled","disabled");
					if($("[id='"+variableNames[o]+"']").is('select')){
						$("[id='"+variableNames[o]+"']").change();
					}
				}
			}
			else{
				var variableNames=variables.split(',');
				for(var o in variableNames){
					$("[id='"+variableNames[o]+"']").removeAttr('disabled');
				}
			}
		}
		else if(flag=="[)"){
			if(value<minValue || value>=maxValue){
				var variableNames=variables.split(',');
				for(var o in variableNames){
					$("[id='"+variableNames[o]+"']").val('').attr("disabled","disabled");
					if($("[id='"+variableNames[o]+"']").is('select')){
						$("[id='"+variableNames[o]+"']").change();
					}
				}
			}
			else{
				var variableNames=variables.split(',');
				for(var o in variableNames){
					$("[id='"+variableNames[o]+"']").removeAttr('disabled');
				}
			}
		}
		else if(flag=="()"){
			if(value<=minValue || value>=maxValue){
				var variableNames=variables.split(',');
				for(var o in variableNames){
					$("[id='"+variableNames[o]+"']").val('').attr("disabled","disabled");
					if($("[id='"+variableNames[o]+"']").is('select')){
						$("[id='"+variableNames[o]+"']").change();
					}
				}
			}
			else{
				var variableNames=variables.split(',');
				for(var o in variableNames){
					$("[id='"+variableNames[o]+"']").removeAttr('disabled');
				}
			}
		}
		else{
			var variableNames=variables.split(',');
			for(var o in variableNames){
				$("[id='"+variableNames[o]+"']").removeAttr('disabled');
			}
		}
	}
}
//定义疑问
function query(obj){
	this.subjectId=obj.subjectId;
	this.pageName=obj.pageName;
	this.variableName=obj.variableName;
	this.variableValue=obj.variableValue;
	this.source=obj.source;
	this.message=obj.message;
	this.queryStatus=obj.queryStatus;
}

//重新设计
function initQueryRule(specs){
	var queries=new Array();
	for(var o in specs){
		var spec=specs[o];
		if(spec.required=='Y' || spec.required=='D'){
			var controlType=spec.controlType;
			var required=spec.required;
			var queryRule=spec.queryRule;
			var variableName=spec.variableName;
			var minValue=spec.minValue;
			var maxValue=spec.maxValue;
			var condition="",expression="";
			
			if(required=='Y'){
				condition="true";
				expression=queryRule;
			}
			else if(required=='D'){
				var rule=queryRule.split(';');
				condition=rule[0];
				expression=rule[1];
			}
			else{
				continue;
			}
			//处理condition
			var flag=true;
			while(condition.indexOf('#')!=-1){
				if(flag){
					condition=condition.replace('#','$("[id=\'');
				}
				else{
					condition=condition.replace('#','\']").val()');
				}
				flag=!flag;
			}
			var query=null;
			if(controlType=='dropdown'){
				$("[id='"+variableName+"']").on("blur",
					{"condition":condition,"variableName":variableName,"expression":expression},
					function(event){
						if(eval(event.data.condition)){
							query=valueIsRequired(event.data.variableName,event.data.expression);
							if(query!=null){
								highlightErrField(query);
								queries.push(query);
							}
							else{
								undoHighlightErrField(event.data.variableName);
							}
						}
					}
				);
			}
			if(controlType=='number'){
				$("[id='"+variableName+"']").on("blur",
					{"condition":condition,"variableName":variableName,"minValue":minValue,"maxValue":maxValue,"expression":expression},
					function(event){
						if(eval(event.data.condition)){
							query=valueIsBetween2Values(event.data.variableName,event.data.minValue,event.data.maxValue,event.data.expression);
							if(query!=null){
								highlightErrField(query);
								queries.push(query);
							}
							else{
								undoHighlightErrField(event.data.variableName);
							}
						}
					}
				);
			}
			//初始化逻辑验证
			$("[id='"+variableName+"']").blur();
		}
	}
	return queries;
}

function generateQuery(subjectId,pageName){
	var queries=initQueryRule(specs);
	for(var o in queries){
		var query=queries[o];
		query.subjectId=subjectId;
		query.pageName=pageName;
	}
	return queries;
}

//保存数据
function saveInformation(basePath,formId){
	var params=$("#"+formId).serialize();
	var result=ajaxTo(basePath,params); 
	var data=parse(result);
	return data;
	//invokeJSP("sidebar", basePath+"/invoke?url=site/crf/_left");
}
function submitInformation(basePath,formId,queries){
	var params=$("#"+formId).serialize();
	var json=serializeToJSON(params);
	json.queries=JSON.stringify(queries);
	var result=ajaxTo(basePath+'/crfManagement/submit',json); 
	parse(result);
	invokeJSP("sidebar", basePath+"/invoke?url=site/crf/_left");
}
//关闭
function closeHelpBar(){
	$('#helpBar').css('display','none');
}
function valueIsRequired(variableName,expression){
	var value=$("[id='"+variableName+"']").val(); 
	if(expression=="{}"){
		if($.trim(value)==""){
			return new query({"variableName":variableName,"variableValue":value,"source":"system","message":"不能为空","queryStatus":"system"});
		}
	}
	else if(expression=="''"){
		if(!($.trim(value)=="")){
			return new query({"variableName":variableName,"variableValue":value,"source":"system","message":"必须为空","queryStatus":"system"});
		}
	}
	else if(expression=="!''"){
		if(!($.trim(value)!="")){
			return new query({"variableName":variableName,"variableValue":value,"source":"system","message":"不能为空","queryStatus":"system"});
		}
	}
	else{
		var s=expression.substr(1,expression.length-2).split(',');
		if(s.indexOf(value)<0){
			return new query({"variableName":variableName,"variableValue":value,"source":"system","message":"请选择正确的选项"+expression,"queryStatus":"system"});
		}
	}
}
function valueIsBetween2Values(variableName,minValue,maxValue,expression){
	var value=$("[id='"+variableName+"']").val(); 
	if(isNaN(value)){
		return new query({"variableName":variableName,"variableValue":value,"source":"system","message":"请输入正确的数值","queryStatus":"system"});
	}
	if(expression=="[]"){
		if(!(value>=minValue && value<=maxValue)){
			return new query({"variableName":variableName,"variableValue":value,"source":"system","message":"数值不在正常值范围["+minValue+" , "+maxValue+"]内","queryStatus":"system"});
		}
	}
	else if(expression=="(]"){
		if(!(value>minValue && value<=maxValue)){
			return new query({"variableName":variableName,"variableValue":value,"source":"system","message":"数值不在正常值范围("+minValue+" , "+maxValue+"]内","queryStatus":"system"});
		}
	}
	else if(expression=="[)"){
		if(!(value>=minValue && value<maxValue)){
			return new query({"variableName":variableName,"variableValue":value,"source":"system","message":"数值不在正常值范围["+minValue+" , "+maxValue+")内","queryStatus":"system"});
		}		
	}
	else if(expression=="()"){
		if(!(value>minValue && value<maxValue)){
			return new query({"variableName":variableName,"variableValue":value,"source":"system","message":"数值不在正常值范围("+minValue+" , "+maxValue+")内","queryStatus":"system"});
		}
	}
	else{ 
		return new query({"variableName":variableName,"variableValue":value,"source":"system","message":"请输入正确的数值","queryStatus":"system"});
	}
}
function highlightErrField(query){
	$("[id='"+query.variableName+"']").css('border','1px solid red').attr('title',query.message);
}
function undoHighlightErrField(variableName){
	$("[id='"+variableName+"']").css('border','1px solid #d5d5d5').removeAttr('title');
}
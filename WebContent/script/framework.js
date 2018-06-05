
var currentDate=new Date();
var dateFormat=(currentDate.getYear()+1900)+"-"+(currentDate.getMonth()+1)+"-"+currentDate.getDate();
var msg=0,data=1,msg_data=2;

function submitTo(formId,url){
	$('#'+formId).attr("action",url).submit();
}
//跳转到
function sendTo(url){
	location.href=url;
}
function ajax(urlName,data,returnType){
	var result;
	$.ajax({
        url: urlName,  
        type: 'post',     
        async: false,      
        data: data,
        dataType: returnType,
        success: function(content) {
        	result=content;
        },   
        error:function (data, status, e){   
            result={"status":msg,"msg":"操作失败，请联系系统管理员!"};   
        } 
    });
	return result;
}


function ajaxTo(urlName,data,returnType){
	var type=arguments[2]||"json";
	return ajax(urlName,data,type);
}
function invokeJSP(divId,urlName,data){
	var d=arguments[2]||{};
	var html=ajax(urlName,d,"html");
	$('#'+divId).html(html);
}

function parse(result){
	if(result["status"]==msg){
		alert(result.msg);
		return;
	}
	if(result["status"]==data){
		return result["data"];
	}
	if(result["status"]==msg_data){
		alert(result["msg"]);
		return result["data"];
	}
}
function serializeToJSON(data){
	data=data.replace(/&/g,"\",\"");
    data=data.replace(/=/g,"\":\"");
    data="{\""+data+"\"}"
    return JSON.parse(data);
}

function debug(data,level){
	var l=arguments[1]||1;
	if(l==1){
		var s="";
		for(var o in data){
			s+=o+"->"+data[o]+"\n";
		}
		alert(s);
	}
	if(l==2){
		var s="";
		for(var o in data){
			for(var p in data[o]){
				s+=p+"->"+data[o][p]+"\n";
			}
			s+="\n";
		}
		alert(s);
	}
}
function debugForm(data){
	debug(serializeToJSON(data));
}


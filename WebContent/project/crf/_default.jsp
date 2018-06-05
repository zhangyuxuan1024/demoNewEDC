<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath();%>
<script src="<%=basePath%>/script/jquery-1.11.2.min.js"></script>
<!-- 嵌入CRF Page -->
<div id="crf" style="margin-top: 45px;">

</div>

<script type="text/javascript">
    var basePath="<%=basePath%>";
    $(document).ready(function(){
        var pageOID="${pageOID}";
        invokeCRFPage(pageOID);
    });
    

    function invokeCRFPage(pageOID){
        invokeJSP("crf", "<%=basePath%>/crf/invokePage?pageOID="+pageOID);
        initSetting();
    }
    function initSetting(){
        //通过权限判断调用哪个按钮组
        $('#information').append("<div id='buttons'></div>");
        invokeJSP("buttons", "<%=basePath%>/invoke?url=crf/business/saveButton");
        //增加签名。。。一系列工作
    }
    function save(){
        var pageOID=saveInformation("<%=basePath%>/crf/save", 'information');
        invokeCRFPage(pageOID)
    }
</script>






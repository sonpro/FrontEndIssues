<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : sign_popup.jsp
 *   Description        : ���ڼ��� �̹���
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.11                     ������             
 *
 *  @author     ������ 
 *  @Since      
 *  @Version 1.0
 * 
 */
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<!-- //head start -->
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //head end -->
<%

String pageId = SessionUtil.getRequestValue(request, "pageId");       //PageId

%>
<title>���� ����� ������ ����</title>
</head>


<script type="text/javascript">
<!--
    function goClose(param){
	
		if(param == "ok"){
		    if(document.frm.signPass.value == ""){
		    	alert("������ ��ȣ�� �Է��ϼ���.");
		    	document.frm.signPass.focus();
		    	return;
		    } 
		}else{
			alert("�����ڵ� : -1201 \n\n������ ������ ��ҵǾ����ϴ�.");
			self.close();

		}
		
		if(window.opener){
			window.opener.returnValue = param;
		}else {
			window.returnValue = param;
		}
        self.close();
    }

function imgInit(){
	var id = "<%=pageId%>";
	
	if("T41_05_00" == id){
		document.getElementById("backImg").style.display = "none";
        document.getElementById("backImg_single").style.display = "block";
	}else{
		document.getElementById("backImg").style.display = "block";
        document.getElementById("backImg_single").style.display = "none";
	}
}
//-->
</script>

<body onload="imgInit()">
<form id="frm" name="frm">

	<div id="content" style="width:441px; height:475px;">
	    <div id="backImg" style="position:absolute; z-index:1; left:0px;top:0px; display:none;">
	        <img src="/img/sign.png" width="441" height="475" border="0" alt="" usemap="#signMap" />
	    </div>
	    <div id="backImg_single" style="position:absolute; z-index:1; left:0px;top:0px; display:none;">
            <img src="/img/sign_single.png" width="441" height="475" border="0" alt="" usemap="#signMap" />
        </div>
	    <div id="textInput" style="position:absolute; z-index:2; left:226px;top:367px;">
	        <input type="password" name="signPass" id="signPass" maxlength="20" style="width:196px;height:19px;" title="������ �н����带 �Է��ϼ���."/>
	    </div>
	</div>
</form>
<map name="signMap">
    <area shape="rect" coords="243,437,330,461" href="javascript:goClose('ok');" alt="Ȯ��">
    <area shape="rect" coords="342,437,425,461" href="javascript:goClose('no');" alt="���">
</map>


</body>
</html>

<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : oz_popup.jsp
 *   Description        : 오즈레포팅 이미지
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.11                     예기해             
 *
 *  @author     예기해 
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
<title>OZ Report - 사용실적보고서</title>
</head>
<!-- //head start -->
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //head end -->

<%
    String ozPage       = SessionUtil.getRequestValue(request, "ozPage");
    String imgFile = "";

    if("U33".equals(ozPage)){
    	imgFile = "/img/oz_U33.png";
    }else if("U34".equals(ozPage)){
        imgFile = "/img/oz_U34.png";
    }else if("U35".equals(ozPage)){
        imgFile = "/img/oz_U35.png";
    }else{
        imgFile = "/img/oz_U33.png";
    }

%>

<body style="background:#ecebdc;">
	<div id="content" style="width:1000px; height:1000px; color:#d4d0c8; padding-top: 0px; padding-left: 0px; position:absolute; margin:0 auto;">
	    <div id="titleImg" style="z-index:1; left:0px;top:0px;">
	        <img src="/img/oz_header.png" width="1000px" height="32px" border="0" alt="테스트 이미지입니다." />
	    </div>
	    <div id="dobyImg" style="z-index:2; left:0px;top:0px; color:#d4d0c8; ">
	        <img src="<%=imgFile%>" height="1143px" border="0" alt="테스트 이미지입니다." />
	    </div>
	</div>


</body>
</html>

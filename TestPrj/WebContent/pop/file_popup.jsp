<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : file_popup.jsp
 *   Description        : 파일등록 이미지
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
<title>파일등록</title>
</head>
<%
String mode   = kr.go.rcms.web.util.SessionUtil.getRequestValue(request, "mode");       //mode  임시값으로 실습환경을 위해 생성
String method   = kr.go.rcms.web.util.SessionUtil.getRequestValue(request, "method");       //method  - 
%>
<script type="text/javascript">
<!--
    var mode = "<%=mode%>";
    var method = "<%=method%>";

    function goClose(param){
		if(param == "ok"){
		    if(document.getElementById("imgAdd").style.display == "none"){
		    	alert("첨부된 파일이 없습니다. 첨부파일 추가후 다시 실행해 주십시요.");
		    	return;
		    } 
		    opener.document.frm.docName.value = "1";
		    opener.document.frm.methodName.value = method;
		    opener.edmsReturnAction();
		    
		    self.close();
		}else if(param == "delete"){
			
			opener.document.frm.methodName.value = method;
            opener.edmsReturnAction();
            
		    self.close();
			
		}else{
            
            self.close();
            
        }
		
    }
    
    
    function fileAdd(param){
        if("1"==param){
            document.getElementById("imgMain").style.display = "none";
            document.getElementById("imgAdd").style.display = "block";
        }else if("2"==param){
            document.getElementById("imgAdd").style.display = "none";
            document.getElementById("imgMain").style.display = "block";
        }
    }

    function callBack(){
        alert("실습환경에서는 지원하지 않는 기능입니다.");
        return;
    }
    
    
    function pageInit(){
    	if("update"==mode){
            document.getElementById("imgMain").style.display = "none";
            document.getElementById("imgAdd").style.display = "block";
        }else if("search"==mode || "get" == method){
            document.getElementById("imgMain").style.display = "none";
            document.getElementById("imgAdd").style.display = "none";
            document.getElementById("fileDiv").style.display = "none";
            document.getElementById("fileSearch").style.display = "block";
            
        }else if("blank"==mode){
            document.getElementById("imgMain").style.display = "none";
            document.getElementById("imgAdd").style.display = "none";
            document.getElementById("fileDiv").style.display = "none";
            document.getElementById("fileSearch").style.display = "block";
            document.getElementById("searchImg").style.display = "none";
            document.getElementById("searchImg_modify").style.display = "none";
            document.getElementById("searchImg_blank").style.display = "block";
        }else if("delete" == mode){
            goClose(mode);
        }else{
    		document.getElementById("imgMain").style.display = "block";
    		document.getElementById("imgAdd").style.display = "none";
    	}
    }
    
    
    
    function goModify(param){
        
        //파일 수정이 아닌 이미지들 display:none
        document.getElementById("backImg").style.display = "none";
        document.getElementById("imgMain").style.display = "none";
        document.getElementById("imgAdd").style.display = "none";
        document.getElementById("fileDiv").style.display = "none";
        
        document.getElementById("fileSearch").style.display = "none";
        document.getElementById("searchImg").style.display = "none";
        document.getElementById("searchImg_blank").style.display = "none";
        document.getElementById("searchImg_modify").style.display = "none";
            
        
        document.getElementById("modifyImg_file1").style.display = "none";
        document.getElementById("modifyImg_file2").style.display = "none";
        document.getElementById("modifyImg_blank").style.display = "none";
        document.getElementById("modifyImg").style.display = "block";
        document.getElementById("fileModify").style.display = "block";
    }
    
    
    
    //파일 수정 후 저장
    var isFile1 = true;
    var isFile2 = true;
    function goSearch(){
    	isFile1 = true;
        isFile2 = true;
        
    	document.getElementById("backImg").style.display = "none";
    	document.getElementById("imgMain").style.display = "none";
        document.getElementById("imgAdd").style.display = "none";
        document.getElementById("fileDiv").style.display = "none";
        
        document.getElementById("modifyImg").style.display = "none";
        document.getElementById("modifyImg_file1").style.display = "none";
        document.getElementById("modifyImg_file2").style.display = "none";
        document.getElementById("modifyImg_blank").style.display = "none";
        document.getElementById("fileModify").style.display = "none";
        
        document.getElementById("searchImg").style.display = "none";
        document.getElementById("fileSearch").style.display = "block";
        document.getElementById("searchImg_modify").style.display = "block";
    }

    
    function fileChange(param){
    	// 1 : 1번삭제
    	// 2 : 2번삭제
    	// add : 추가
    	
    	if("1" == param){
    		isFile1 = false;
    		
	    	document.getElementById("modifyImg").style.display = "none";
	    	document.getElementById("modifyImg_file1").style.display = "none";
    		if(isFile2){
	    		document.getElementById("modifyImg_file2").style.display = "block";
	    		document.getElementById("modifyImg_blank").style.display = "none";
    		}else{
    		    document.getElementById("modifyImg_file2").style.display = "none";
                document.getElementById("modifyImg_blank").style.display = "block";
    		}
    		
    		
    		
    	}else if("2" == param){
    		isFile2 = false;
    		
    		document.getElementById("modifyImg").style.display = "none";
            document.getElementById("modifyImg_file2").style.display = "none";
            
            if(isFile1){
                document.getElementById("modifyImg_file1").style.display = "block";
                document.getElementById("modifyImg_blank").style.display = "none";
            }else{
                document.getElementById("modifyImg_file1").style.display = "none";
                document.getElementById("modifyImg_blank").style.display = "block";
            }
            
    	}else if("add" == param){
            if(!isFile1 && !isFile2){
            	isFile1 = true;
            	document.getElementById("modifyImg").style.display = "none";
                document.getElementById("modifyImg_file1").style.display = "block";
                document.getElementById("modifyImg_file2").style.display = "none";
                document.getElementById("modifyImg_blank").style.display = "none";
                
            }else if(isFile1){
            	if(!isFile2){
            		isFile2 = true;
	                document.getElementById("modifyImg").style.display = "block";
	                document.getElementById("modifyImg_file1").style.display = "none";
	                document.getElementById("modifyImg_file2").style.display = "none";
	                document.getElementById("modifyImg_blank").style.display = "none";
            		
            	}
            }else if(isFile2){
                if(!isFile1){
                    isFile1 = true;
                    document.getElementById("modifyImg").style.display = "block";
                    document.getElementById("modifyImg_file1").style.display = "none";
                    document.getElementById("modifyImg_file2").style.display = "none";
                    document.getElementById("modifyImg_blank").style.display = "none";
                    
                }
            }
        }
    	
    }
    
    
    function fnBlank(){
    	
    }
    
    
//-->
</script>

<body onLoad="pageInit();">
<form id="frm" name="frm">

    <!-- 파일등록 -->
	<div id="fileDiv">
	    <div id="backImg" style="position:absolute; z-index:1; left:0px;top:0px; ">
	        <img src="/img/fileUpload.png" width="763" height="396" border="0" alt="" usemap="#fileMap" />
	    </div>
	    <div id="imgMain" style="position:absolute; z-index:2; left:15px;top:91px; display:none;">
	        <img src="/img/fileUpload_main.png" width="739" height="200" border="0" alt="" usemap="#fileControl1" />
	    </div>
	    <div id="imgAdd" style="position:absolute; z-index:2; left:15px;top:91px; display:none;">
	        <img src="/img/fileUpload_add.png" width="739" height="200" border="0" alt="" usemap="#fileControl2" />
	    </div>
	</div>
	
	<!-- 파일조회 -->
    <div id="fileSearch" style="display:none;">
        <div id="searchImg" style="position:absolute; z-index:1; left:0px;top:0px; ">
            <img src="/img/fileSearch.png" width="763" height="396" border="0" alt="" usemap="#fileSearchMap" />
        </div>
        <div id="searchImg_blank" style="position:absolute; z-index:1; left:0px;top:0px; display:none;">
            <img src="/img/fileSearch_blank.png" width="763" height="396" border="0" alt="" usemap="#fileSearchMap2" />
        </div>
        <div id="searchImg_modify" style="position:absolute; z-index:1; left:0px;top:0px; display:none;">
            <img src="/img/fileSearch_modify.png" width="763" height="396" border="0" alt="" usemap="#fileSearchMap3" />
        </div>
    </div>
    
    <!-- 파일 수정 -->
    <div id="fileModify" style="display:none;">
        <div id="modifyImg" style="position:absolute; z-index:1; left:0px;top:0px; ">
            <img src="/img/fileModify.png" width="763" height="396" border="0" alt="" usemap="#fileModifyMap" />
        </div>
        <div id="modifyImg_file1" style="position:absolute; z-index:1; left:0px;top:0px; display:none;">
            <img src="/img/fileModify_file_1.png" width="763" height="396" border="0" alt="" usemap="#fileModifyMap1" />
        </div>
        <div id="modifyImg_file2" style="position:absolute; z-index:1; left:0px;top:0px; display:none;">
            <img src="/img/fileModify_file_2.png" width="763" height="396" border="0" alt="" usemap="#fileModifyMap2" />
        </div>
        <div id="modifyImg_blank" style="position:absolute; z-index:1; left:0px;top:0px; display:none;">
            <img src="/img/fileModify_file_blank.png" width="763" height="396" border="0" alt="" usemap="#fileModifyMap_blank" />
        </div>
    </div>
    
</form>

<!-- 파일등록 -->
<map name="fileMap">
    <area shape="rect" coords="696,5,760,36" href="javascript:goClose('no');" alt="닫기">
    <area shape="rect" coords="632,333,700,355" href="javascript:goClose('ok');" alt="저장하기">
    <area shape="rect" coords="707,333,753,355" href="javascript:goClose('no');" alt="닫기">
</map>
<map name="fileControl1">
    <area shape="rect" coords="9,169,88,193" href="javascript:fileAdd('1');" alt="추가">
    <area shape="rect" coords="93,169,172,193" href="javascript:fileAdd('2');" alt="삭제">
</map>
<map name="fileControl2">
    <area shape="rect" coords="9,169,88,193" href="javascript:fileAdd('1');" alt="추가">
    <area shape="rect" coords="93,169,172,193" href="javascript:fileAdd('2');" alt="삭제">
    <area shape="rect" coords="708,26,738,49" href="javascript:fileAdd('2');" alt="">
</map>

<!-- 파일조회 -->
<map name="fileSearchMap">
    <area shape="rect" coords="696,5,760,36" href="javascript:goClose('no');" alt="닫기">
    <area shape="rect" coords="439,82,478,100" href="javascript:goModify('1');" alt="수정">
    
    <area shape="rect" coords="14,349,27,362" href="javascript:callBack();" alt="전체체크">
    <area shape="rect" coords="25,85,38,98" href="javascript:callBack();" alt="">
    
    <area shape="rect" coords="333,345,448,366" href="javascript:callBack();" alt="">
    <area shape="rect" coords="457,345,572,366" href="javascript:callBack();" alt="">
    <area shape="rect" coords="581,345,696,366" href="javascript:callBack();" alt="">
    <area shape="rect" coords="705,345,752,366" href="javascript:goClose();" alt="닫기">
</map>
<map name="fileSearchMap2">
    <area shape="rect" coords="696,5,760,36" href="javascript:goClose('no');" alt="닫기">
    
    <area shape="rect" coords="14,349,27,362" href="javascript:callBack();" alt="전체체크">
    
    <area shape="rect" coords="333,345,448,366" href="javascript:callBack();" alt="">
    <area shape="rect" coords="457,345,572,366" href="javascript:callBack();" alt="">
    <area shape="rect" coords="581,345,696,366" href="javascript:callBack();" alt="">
    <area shape="rect" coords="705,345,752,366" href="javascript:goClose();" alt="닫기">
</map>
<map name="fileSearchMap3">
    <area shape="rect" coords="696,5,760,36" href="javascript:goClose('no');" alt="닫기">
    
    <area shape="rect" coords="14,349,27,362" href="javascript:callBack();" alt="전체체크">
    
    <area shape="rect" coords="257,345,372,366" href="javascript:callBack();" alt="">
    <area shape="rect" coords="381,345,496,366" href="javascript:callBack();" alt="">
    <area shape="rect" coords="505,345,620,366" href="javascript:callBack();" alt="">
    <area shape="rect" coords="629,345,697,366" href="javascript:goClose();" alt="저장하기">
    <area shape="rect" coords="705,345,752,366" href="javascript:goClose();" alt="닫기">
</map>

<!-- 파일수정 -->
<map name="fileModifyMap">
    <area shape="rect" coords="555,334,623,355" href="javascript:goSearch();" alt="저장하기">
    <area shape="rect" coords="630,334,698,355" href="javascript:callBack();" alt="조회하기">
    <area shape="rect" coords="705,334,752,355" href="javascript:goClose();" alt="닫기">
    <area shape="rect" coords="696,5,760,36" href="javascript:goClose('no');" alt="닫기">
    
    <area shape="rect" coords="19,259,98,283" href="javascript:fileChange();" alt="추가">
    <area shape="rect" coords="103,259,182,283" href="javascript:fnBlank();" alt="삭제">
    
    <area shape="rect" coords="723,117,753,139" href="javascript:fileChange('1');" alt="삭제">
    <area shape="rect" coords="723,141,753,163" href="javascript:fileChange('2');" alt="삭제">
    
</map>
<map name="fileModifyMap1">
    <area shape="rect" coords="555,334,623,355" href="javascript:goSearch();" alt="저장하기">
    <area shape="rect" coords="630,334,698,355" href="javascript:callBack();" alt="조회하기">
    <area shape="rect" coords="705,334,752,355" href="javascript:goClose();" alt="닫기">
    <area shape="rect" coords="696,5,760,36" href="javascript:goClose('no');" alt="닫기">
    
    <area shape="rect" coords="19,259,98,283" href="javascript:fileChange('add');" alt="추가">
    <area shape="rect" coords="103,259,182,283" href="javascript:fnBlank();" alt="삭제">
    
    <area shape="rect" coords="723,117,753,139" href="javascript:fileChange('1');" alt="삭제">
    
</map>
<map name="fileModifyMap2">
    <area shape="rect" coords="555,334,623,355" href="javascript:goSearch();" alt="저장하기">
    <area shape="rect" coords="630,334,698,355" href="javascript:callBack();" alt="조회하기">
    <area shape="rect" coords="705,334,752,355" href="javascript:goClose();" alt="닫기">
    <area shape="rect" coords="696,5,760,36" href="javascript:goClose('no');" alt="닫기">
    
    <area shape="rect" coords="19,259,98,283" href="javascript:fileChange('add');" alt="추가">
    <area shape="rect" coords="103,259,182,283" href="javascript:fnBlank();" alt="삭제">
    
    <area shape="rect" coords="723,117,753,139" href="javascript:fileChange('2');" alt="삭제">
    
</map>
<map name="fileModifyMap_blank">
    <area shape="rect" coords="555,334,623,355" href="javascript:goSearch();" alt="저장하기">
    <area shape="rect" coords="630,334,698,355" href="javascript:callBack();" alt="조회하기">
    <area shape="rect" coords="705,334,752,355" href="javascript:goClose();" alt="닫기">
    <area shape="rect" coords="696,5,760,36" href="javascript:goClose('no');" alt="닫기">
    
    <area shape="rect" coords="19,259,98,283" href="javascript:fileChange('add');" alt="추가">
    <area shape="rect" coords="103,259,182,283" href="javascript:fnBlank();" alt="삭제">
    
</map>

</body>
</html>

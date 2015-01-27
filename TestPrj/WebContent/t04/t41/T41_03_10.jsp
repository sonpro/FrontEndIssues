<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T41_03_10.jsp
 *   Description        : 권한등록/수정 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ==================================================================================
 *   2013.12.12                     예기해
 *
 *  @author 예기해
 *  @Since  2013.12.12.
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
<%@ page import="kr.go.rcms.web.util.StringUtil" %>

<%@ page import="java.util.HashMap" %>


<%

    String Dv               =   StringUtil.null2void(SessionUtil.getRequestValue(request,"Dv"));            // 업무구분코드(수정,등록)
    String PmsId            =   StringUtil.null2void(SessionUtil.getRequestValue(request,"PmsId"));         // PMSID          
    String BzClasCd         =   StringUtil.null2void(SessionUtil.getRequestValue(request,"BzClasCd"));      // 사업분류코드   
    String SbjtId           =   StringUtil.null2void(SessionUtil.getRequestValue(request,"SbjtId"));        // 과제ID         
    String UsrId            =   StringUtil.null2void(SessionUtil.getRequestValue(request,"UsrId"));         // 사용자ID       
    String InstId           =   StringUtil.null2void(SessionUtil.getRequestValue(request,"InstId"));        // 기관ID         
    String InstNm           =   StringUtil.null2void(SessionUtil.getRequestValue(request,"InstNm"));        // 기관명         
    String UsrNm            =   StringUtil.null2void(SessionUtil.getRequestValue(request,"UsrNm"));         // 사용자명       
    String HmpwRoleDv       =   StringUtil.null2void(SessionUtil.getRequestValue(request,"HmpwRoleDv"));    // 인력역할구분
    String RcmsGrpCd        =   StringUtil.null2void(SessionUtil.getRequestValue(request,"RcmsGrpCd"));     // RCMS그룹코드   
    String UseYn            =   StringUtil.null2void(SessionUtil.getRequestValue(request,"UseYn"));         // 사용여부       
    boolean isDatanull      =   true;
    String SbjtNm           = "";
    String schParam     =   StringUtil.null2void(SessionUtil.getRequestValue(request,"schParam"));   //과제 선택 번호
    String argmtSeqNo     =   StringUtil.null2void(SessionUtil.getRequestValue(request,"argmtSeqNo"));   //과제 번호
    
    
    if("U".equals(Dv)){
	    //1
	    if("TEST0001".equals(SbjtId)){
	    	SbjtNm = "RCMS 실습용 신규과제";
	
	    //2
	    }else if("TEST0002".equals(SbjtId)){
            SbjtNm = "RCMS 실습용 진행과제";
	
	    //3
	    }else if("TEST0003".equals(SbjtId)){
            SbjtNm = "RCMS 실습용 정산과제";
	
	    //4
	    }else if("TEST0004".equals(SbjtId)){
	    	SbjtNm = "RCMS 실습용 정산과제";
	    	
	    
	    }
    }else{
        //1
        if("1".equals(schParam)){
            SbjtNm = "RCMS 실습용 신규과제";
    
        //2
        }else if("2".equals(schParam)){
            SbjtNm = "RCMS 실습용 진행과제";
    
        //3
        }else if("3".equals(schParam)){
            SbjtNm = "RCMS 실습용 정산과제";
    
        //4
        }else if("4".equals(schParam)){
            SbjtNm = "RCMS 실습용 정산과제";
        
        }
    }
    
    
%>
<script type="text/javascript">
var Dv          = "<%=Dv%>";
var PmsId       = "<%=PmsId%>";
var BzClasCd    = "<%=BzClasCd%>";
var SbjtId      = "<%=SbjtId%>";
var UsrId       = "<%=UsrId%>";
var InstId      = "<%=InstId%>";
var InstNm      = "<%=InstNm%>";
var UsrNm       = "<%=UsrNm%>";
var HmpwRoleDv  = "<%=HmpwRoleDv%>";
var RcmsGrpCd   = "<%=RcmsGrpCd%>";
var UseYn       = "<%=UseYn%>";
var schParam    = "<%=schParam%>";
</script>

<title>권한 등록수정 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">권한 등록수정</p>
        </div>
        <!-- //head title// --> 
    </div>
        <div id="body">
            <form name="frm" method="post">
            <input type="hidden" name="Dv" value='<%=Dv%>'>                     <!-- 업무구분코드(등록:C,수정:U) -->
            <input type="hidden" name="UsrId" value='<%=UsrId%>'>               <!-- 사용자ID -->
            <input type="hidden" name="UsrNm" value='<%=UsrNm%>'>               <!-- 사용자명 -->
            <input type="hidden" name="HmpwRoleDv" value='<%=HmpwRoleDv%>'>     <!-- 인력역할구분 -->
            <input type="hidden" name="InstId" value='<%=InstId%>'>             <!-- 기관ID -->
            <input type="hidden" name="InstNm" value='<%=InstNm%>'>             <!-- 기관명 -->
            <input type="hidden" name="RcmsGrpCdOld" value='<%=RcmsGrpCd%>'>    <!-- 수정되기전 RCMS 권한 -->

            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>권한등록/수정</h3>
                <!-- 권한등록/수정 리스트 start -->
                <div class="t10 b10 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="권한등록/수정 리스트" class="tbl_type02">
                    <caption>권한등록/수정 리스트</caption>
                    <colgroup>
                        <col width="20%" />
                        <col width="80%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="col">과제명</th>
                        <td class="ll"><%=StringUtil.null2void(SbjtNm) %></td>
                    </tr>
                    <tr>
                        <th scope="col">사용자</th>
                        <td class="ll" id="inUserNm">
<%
                    if("U".equals(Dv)){     //업무구분코드(수정)
                            out.println(UsrNm+" [ "+UsrId+" ]");
                    }else{                  //업무구분코드(등록)                
                        //1
                        if("1" == schParam){
                        }else if("2" == schParam){
                        }else if("3" == schParam){
                        }else if("4" == schParam){
                        }
                            
                        out.println("<select name=\"UsrCombo\" id=\"UsrCombo\"  onchange=uf_chgHmpw(this); ><option value=\"\">선택</option><option value=\"KIMSG|김서기|00|일반사용자|00011645|㈜RCMS\" >김서기 [KANGMN]</option><option value=\"KGUNMU|강총무|00|일반사용자|00011645|㈜RCMS\" >강총무 [KGUNMU]</option><option value=\"TOTALEE|이회계|00|일반사용자|00011645|㈜RCMS\" >이회계 [TOTALEE]</option></select>");
                           
                    }
%>
                       </td>
                    </tr>
                    <tr>
                        <th scope="col">과제권한구분</th>
                        <td class="ll"><span id="RoleDvSpan"><%=CodeUtil.getCode("RND115",HmpwRoleDv) %></span></td>
                    </tr>
                    <tr>
                        <th scope="col">RCMS권한구분</th>
                        <td class="ll">
                            <span id="RcmsSpan">

                                <select name="RcmsGrpCd" id="RcmsGrpCd"><option value="">선택</option></select>                              
 
                           </span>
                           <!-- <a href="#dummy"  onclick="uf_GrpMenu();"><img style="height: 16px" src="../../../img/buttons/btn_search_blue.gif" alt="검색" /></a> 제거 20110705 이세상-->
                        </td>
                    </tr>
                    <tr>
                        <th scope="col">사용여부</th>
                        <td class="ll">
                            <input type="radio" name="UseYn" id="ra1" value="Y" title="사용" class="radio2"/><label for="ra1">사용</label>
                            <span class="l20"></span>
                            <input type="radio" name="UseYn" id="ra2" value="N" title="미사용" class="radio2"/><label for="ra2">미사용</label>
<%
                        if("N".equals(UseYn)) {
                            out.println("<script type=\"text/javascript\">document.frm.UseYn[1].checked=true;</script>");
                        } else {
                            out.println("<script type=\"text/javascript\">document.frm.UseYn[0].checked=true;</script>");
                        }
%>
                        </td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //권한등록/수정 리스트 end// -->
                <div class="guide_bu">이체권한은 과제책임자/이체담당자에게만 부여됩니다.</div>
                <!-- action bt start -->
                <div class="pop_action_bt">
                    <a href="#" onclick="uf_save(); return false;" class="bt_action2-01" title="확인"><span class="bt_sp">확인</span></a>
                </div>
                <!-- //action bt end// --> 
            </div>
            </form>
            <!-- //content end// -->  
        </div>
        
<%@ include file="/inc/jspFooter_popup.jsp" %> 

<script type="text/javascript">

    function setRcmsSpan(){
        if(HmpwRoleDv == "00"){
            document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option><option value='MR050' >일반사용자</option><option value='MR042' >일반사용자(구매담당자)</option><option value='MR043' >일반사용자(이체담당자)</option></select>";          
        }else if(HmpwRoleDv == "01"){
            document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option><option value='MR030' >기관대표자</option></select>";          
        }else if(HmpwRoleDv == "02"){
            document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option><option value='MR010' >과제책임자</option></select>";          
        }else if(HmpwRoleDv == "03"){
            document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option></select>";          
        }else if(HmpwRoleDv == "04"){
            document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option><option value='MR020' >참여연구원</option><option value='MR023' >참여연구원(이체담당자)</option></select>";          
        }else if(HmpwRoleDv == "05"){
            document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option></select>";          
        }else if(HmpwRoleDv == "06"){
            document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option></select>";          
        }else if(HmpwRoleDv == "07"){
            document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option></select>";          
        }
    }
    setRcmsSpan();

    function uf_Mbr(){
    	alert("실습환경에서는 지원하지 않는 기능입니다.");
    }
    
    function uf_SetMbr(obj_rtn){
        var frm = document.frm;
        var arr;
        arr = obj_rtn.split("|");
        
        document.getElementById("inUserNm").innerHTML   = arr[1]+" ["+arr[0]+"]"+"<a href=\"#dummy\" onclick=\"uf_reSet();\">&nbsp;<img src=\"/images/bt/btn_reset_gray.gif\" alt=\"초기화\" /></a>";
        document.getElementById("RoleDvSpan").innerHTML = "일반사용자";
    
        frm.UsrId.value         =   arr[0];         
        frm.UsrNm.value         =   arr[1];
        frm.InstId.value        =   InstId;  
        frm.InstNm.value        =   InstNm;
        frm.HmpwRoleDv.value    =   "00";   
        

            if(HmpwRoleDv == "00"){
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option><option value='MR050' >일반사용자</option><option value='MR042' >일반사용자(구매담당자)</option><option value='MR043' >일반사용자(이체담당자)</option></select>";          
            }

            if(HmpwRoleDv == "01"){
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option><option value='MR030' >기관대표자</option></select>";          
            }

            if(HmpwRoleDv == "02"){
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option><option value='MR010' >과제책임자</option></select>";          
            }

            if(HmpwRoleDv == "03"){
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option></select>";          
            }

            if(HmpwRoleDv == "04"){
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option><option value='MR020' >참여연구원</option><option value='MR023' >참여연구원(이체담당자)</option></select>";          
            }

            if(HmpwRoleDv == "05"){
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option></select>";          
            }

            if(HmpwRoleDv == "06"){
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option></select>";          
            }

            if(HmpwRoleDv == "07"){
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option></select>";          
            }

    }    
    
    /******************************************************************
     * uf_save      권한등록및수정요청
     * @param       
     * @return
    ******************************************************************/
    function uf_save(){
        var frm = document.frm;
        var rcmsGrp = frm.RcmsGrpCd.options[frm.RcmsGrpCd.options.selectedIndex].value;
        
        if(frm.RcmsGrpCd.value == ""){
            alert("RCMS권한구분을 선택하여주세요");
            return false;
        }
        //과제권한이 과제책임자일때 RCMS권한을 연구기관과제책임자 외에 수정할 수 없음
        if("02" == HmpwRoleDv){
            if(rcmsGrp != "MR010"){
                alert("과제책임자의 RCMS권한은 과제책임자만 가능합니다.");
                return;
            }
        }
        
        if (!confirm("저장하시겠습니까?")) {
            return;
        }
        
        
        var msg = "";
            
                    
        if("C" == Dv) {
        	msg = "등록되었습니다.";
        } else {
        	msg = "수정되었습니다.";
        }
        

        uf_proce_display_on();  //로딩바
        
        setTimeout(
            function(){
                    try{
                    	<%-- 
                    	//신규과제일시 세션생성
                    	if("G00000000000001" == "<%=argmtSeqNo%>"){
                    		makeSessData();
                    	}
                    	 --%>
                        reset_submit();
                        alert(msg);
                        opener.uf_search();
                        
                        window.close();
                    }finally{
                    }
                
                }, 1000);   // 1초후 실행 1000 = 1초s
                
    }
    
    //세션 등록
    function makeSessData(){
    	//var _SESS_DATA = dataCtrl.getObjData("T41_06_00");
    	var sessGridData = [];
    	var rcmsGrp = $('#RcmsGrpCd option:selected').val(); //frm.RcmsGrpCd.options[frm.RcmsGrpCd.options.selectedIndex].value;
    	var rcmsGrpTxt = $('#RcmsGrpCd option:selected').text();// frm.RcmsGrpCd.options[frm.RcmsGrpCd.options.selectedIndex].value;
    	var useYn = $('input[name="UseYn"]:radio:checked').val();
    	var useYnTxt = $('input[name="UseYn"]:radio:checked').attr("title");
    	
    	
    	if("C" == Dv) { //등록
    		var usrCombo = $('#UsrCombo option:selected').val();
            var usrComboArr = usrCombo.split("|");
            
            var _SESS_DATA = dataCtrl.getObjData("T41_03_00");
    	    var sessCnt = 0;
    		if(_SESS_DATA != null){
                sessGridData = JSON.parse(_SESS_DATA);
                sessCnt = sessGridData.length;
                
                for(var i=0;i<sessCnt;i++){
                    if(sessGridData[i].USR_ID == usrComboArr[0]){
                    	reset_submit();
                        alert("이미 등록된 사용자입니다.");
                        return fasle;
                    }
                }
    		}
    		var GRIDKEY = "";
    		GRIDKEY += "PmsId=" + "G01"; 
    		GRIDKEY += "&BzClasCd=" + "S1056";
    		GRIDKEY += "&SbjtId=" + "TEST0001";
    		GRIDKEY += "&UsrId=" + usrComboArr[0];
    		GRIDKEY += "&InstId=" + usrComboArr[4];
    		GRIDKEY += "&InstNm=" + usrComboArr[5];
    		GRIDKEY += "&UsrNm=" + usrComboArr[1];
    		GRIDKEY += "&HmpwRoleDv=" + usrComboArr[2];
    		GRIDKEY += "&RcmsGrpCd=" + rcmsGrp;
    		GRIDKEY += "&UseYn=" + useYn;
    		sessGridData[sessCnt] = {
    				"USR_NM":usrComboArr[1]
   					,"USR_ID":usrComboArr[0]
   					,"HM_HMPW_ROLE_DV":usrComboArr[3]
   					,"USE_YN":useYnTxt
   					,"GRIDKEY":GRIDKEY
   					,"RCMS_GRP_CD":rcmsGrp
   					,"INST_NM":usrComboArr[5]
   					,"INST_ID":usrComboArr[4]
   					,"HM_RCMS_GRP_CD":rcmsGrpTxt
   					,"RES_REG_NO":"80-01-01"
   					,"HMPW_ROLE_DV":usrComboArr[2]
    	    };
    	}else{// 수정
    		
    		var _SESS_DATA = dataCtrl.getObjData("T41_03_00");
    		if(_SESS_DATA != null){
    			sessGridData = JSON.parse(_SESS_DATA);
    			
    			for(var i=0;i<sessGridData.length;i++){
    				if(sessGridData[i].USR_ID == UsrId){
    					//RcmsGrpCd 권한구분
    			        var GRIDKEY = "";
   			            GRIDKEY += "PmsId=" + PmsId;
   			            GRIDKEY += "&BzClasCd=" + BzClasCd;
   			            GRIDKEY += "&SbjtId=" + SbjtId;
   			            GRIDKEY += "&UsrId=" + UsrId;
   			            GRIDKEY += "&InstId=" + InstId;
   			            GRIDKEY += "&InstNm=" + InstNm;
   			            GRIDKEY += "&UsrNm=" + UsrNm;
   			            GRIDKEY += "&HmpwRoleDv=" + HmpwRoleDv;
   			            GRIDKEY += "&RcmsGrpCd=" + rcmsGrp;
   			            GRIDKEY += "&UseYn=" + useYn;
   			            sessGridData[i] = {
   			                    "USR_NM":UsrNm
   			                    ,"USR_ID":UsrId
   			                    ,"HM_HMPW_ROLE_DV":"<%=CodeUtil.getCode("RND115",HmpwRoleDv) %>"
   			                    ,"USE_YN":useYnTxt
   			                    ,"GRIDKEY":GRIDKEY
   			                    ,"RCMS_GRP_CD":rcmsGrp
   			                    ,"INST_NM":InstNm
   			                    ,"INST_ID":InstId
   			                    ,"HM_RCMS_GRP_CD":rcmsGrpTxt
   			                    ,"RES_REG_NO":"80-01-01"
   			                    ,"HMPW_ROLE_DV":HmpwRoleDv
   			            };
    				}//if
    			}//for
    		}// if
    		
    	}
    	
    	dataCtrl.setObjData("T41_03_00", JSON.stringify(sessGridData));
    	
    		 
    }
    
    function uf_reSet(){
        if("U".equals(Dv)){     //업무구분코드(수정)
        	document.getElementById('inUserNm').innerHTML = UsrNm+" [ "+UsrId+" ]";
        }else{                  //업무구분코드(등록)
            //1
        	if("1" == schParam){
            }else if("2" == schParam){
            }else if("3" == schParam){
            }else if("4" == schParam){
            }
            	
            document.getElementById("inUserNm").innerHTML ='<select name="UsrCombo" id="UsrCombo"  onchange=uf_chgHmpw(this); ><option value="">선택</option><option value="KIMSG|김서기|00|일반사용자|00011645|㈜RCMS" >김서기 [KANGMN]</option><option value="KGUNMU|강총무|00|일반사용자|00011645|㈜RCMS" >강총무 [KGUNMU]</option><option value="TOTALEE|이회계|00|일반사용자|00011645|㈜RCMS" >이회계 [TOTALEE]</option></select>';
                    
            document.getElementById("inUserNm").innerHTML += '&nbsp;<a href="#dummy"  onclick="uf_Mbr();"><img style="height: 16px" src="/bt/bt_search4.gif" alt="검색" /></a>';
        }
    }
    
    /******************************************************************
     * uf_chgHmpw       사용자콤보박스 onchage
     * @param       
     * @return
    ******************************************************************/
    function uf_chgHmpw(obj){
        var frm = document.frm;
        var sel_id,sel_nm,sel_rolecd,sel_rolenm,sel_instID,sel_InstNm;
    
        sel_id              =   obj.value.split("|")[0];            //사용자ID
        sel_nm              =   obj.value.split("|")[1];            //사용자명
        sel_rolecd          =   obj.value.split("|")[2];            //인력역할구분
        sel_rolenm          =   obj.value.split("|")[3];            //인력역할구분명
        sel_instID          =   obj.value.split("|")[4];            //기관ID
        sel_InstNm          =   obj.value.split("|")[5];            //기관명
    
        if(typeof sel_rolenm == "undefined"){
            sel_rolenm = "";
        }
        
        document.getElementById("RoleDvSpan").innerHTML     = sel_rolenm;
        frm.UsrId.value         =   sel_id;         
        frm.UsrNm.value         =   sel_nm;
        frm.InstId.value        =   sel_instID; 
        frm.InstNm.value        =   sel_InstNm;
        frm.HmpwRoleDv.value    =   sel_rolecd; 
    

            if(sel_rolecd == "00")
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option><option value='MR050' >일반사용자</option><option value='MR042' >일반사용자(구매담당자)</option><option value='MR043' >일반사용자(이체담당자)</option></select>";          

            if(sel_rolecd == "01")
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option><option value='MR030' >기관대표자</option></select>";          

            if(sel_rolecd == "02")
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option><option value='MR010' >과제책임자</option></select>";          

            if(sel_rolecd == "03")
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option></select>";          

            if(sel_rolecd == "04")
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option><option value='MR020' >참여연구원</option><option value='MR023' >참여연구원(이체담당자)</option></select>";          

            if(sel_rolecd == "05")
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option></select>";          

            if(sel_rolecd == "06")
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option></select>";          

            if(sel_rolecd == "07")
                document.getElementById("RcmsSpan").innerHTML = "<select name='RcmsGrpCd'  id='RcmsGrpCd'  class=''  ><option value=''>선택</option></select>";          

    }

</script>

</body>
</html> 
<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T41_07_20.jsp
 *   Description        : 사용중지신청 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ==================================================================================
 *   2013.12.17                    예기해
 *
 *  @author 예기해
 *  @Since  2013.12.17.
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
    String Dv           = SessionUtil.getRequestValue(request, "Dv");                               // 등록수정구분
    String CrdNo        = SessionUtil.getRequestValue(request, "CARD_NO").replaceAll("-","");       // 카드번호
    String CrdNo2       = SessionUtil.getRequestValue(request, "CARD_NO2");       // 카드번호
    String ValdTrm      = SessionUtil.getRequestValue(request, "VALD_TRM");                         // 유효기간
    String CrdcoCd      = SessionUtil.getRequestValue(request, "CARD_CO_NO");                       // 카드사코드
    String CrdcoNm      = SessionUtil.getRequestValue(request, "CARD_CO_NM");                       // 카드사명
    String SetlBnkCd    = SessionUtil.getRequestValue(request, "SET_BNK_CD");                       // 결제은행코드
    String SetlBnkNm    = SessionUtil.getRequestValue(request, "SET_BNK_NM");                       // 결제은행명
    String SetlAcctNo   = SessionUtil.getRequestValue(request, "SETL_ACC_NO").replaceAll("-","");   // 결제계좌번호
    String SetlAcctNo2  = SessionUtil.getRequestValue(request, "SETL_ACC_NO2");   // 결제계좌번호
    String CrdDv        = SessionUtil.getRequestValue(request, "CARD_DV");                          // 카드구분
    String CrdDvNm      = SessionUtil.getRequestValue(request, "CARD_DV_NM");                          // 카드구분
    String SetlDd       = SessionUtil.getRequestValue(request, "SETL_DD");                          // 결제일
    
    String rowIndex       = SessionUtil.getRequestValue(request, "rowIndex");                          // 삭제할 row
    String argmtSeqNo       = SessionUtil.getRequestValue(request, "argmtSeqNo");                          // 삭제할 row
    
%>


<title>연구비카드 사용중지 신청 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">연구비카드 사용중지 신청</p>
        </div>
        <!-- //head title// --> 
    </div>

<script type="text/javascript">

    function uf_search(){
        opener.uf_AutoSearch('S');
    }

    //////////////////////////////////
    //등록 처리
    //////////////////////////////////
    function uf_update(){
        var frm = document.frm;
        if( isSubmit() ) return;    // 이중처리

        if(!confirm("사용중지하시겠습니까?")){return;}            

        var url = "/pop/sign_popup.jsp";
        var obj = "서명에 사용할 인증서 선택";
        var style = "dialogWidth:441px;dialogHeight:475px;center:yes;scroll:no;resizable:no;status:no;";
        var reValue = window.showModalDialog(url, obj, style);
        if(reValue == undefined){
            reValue = window.returnValue;
        }
        

        if(reValue == "ok"){
            uf_proce_display_on();  //로딩바
            
            setTimeout(
                    function(){
                    	//세션 사용안함 20140307
                    	<%-- 
                    	if("G00000000000001" == "<%=argmtSeqNo%>"){
	                    	delSessData("<%=rowIndex%>");  //T41_07_00 에서 데이터 삭제
	                    	udpSessData("<%=CrdcoCd%>","<%=CrdNo2%>"); //T41_07_10 에서 사용안함 처리
                    	}
                    	 --%>
                        reset_submit();
                        alert("저장되었습니다.");
                        opener.uf_search();
                        window.close();
                        }, 1000);   // 1초후 실행 1000 = 1초s
        }
    }
    
    
    //삭제처리
    function delSessData(rowIndex){
    	
    	var rowIdx = Number(rowIndex);
    	var _SESS_DATA = dataCtrl.getObjData("T41_07_00");
        var gridValue = [];
        var cnt = 0;
        if(_SESS_DATA != null){
        	
            var sessGridData = JSON.parse(_SESS_DATA);
            var cnt2 = sessGridData.length;
            for(var i=0;i<cnt2;i++){
            	if(i == rowIdx) continue;
                gridValue[cnt++] = sessGridData[i];
            }//for
        }
        
        dataCtrl.setObjData("T41_07_00", JSON.stringify(gridValue));
    }
    
    //수정처리
    function udpSessData(CrdcoCd, crdNo){
        var sessionNm = "T41_07_10" + "_" + CrdcoCd;
        var _SESS_DATA = dataCtrl.getObjData(sessionNm);
        var gridValue = [];
        var cnt = 0;
        var cnt2 = 0;   //사용중인 카드 수 T41_06_00
        
        if(_SESS_DATA != null){
            var sessGridData = JSON.parse(_SESS_DATA);
            var cnt = sessGridData.length;
            
            for(var i=0;i<cnt;i++){
            	
                if(crdNo == sessGridData[i].CRD_NO){
                	sessGridData[i].CRDCO_REG_PROC_ST = "5";
                	sessGridData[i].CRDCO_REG_PROC_ST_NM = "해지완료";
                }
                gridValue[i] = sessGridData[i];
                
                if(sessGridData[i].CRDCO_REG_PROC_ST == "3") cnt2++;   //사용중인 카드 수 T41_06_00
                
            }//for
        }
        dataCtrl.setObjData(sessionNm, JSON.stringify(gridValue));
        
        
        //연구비카드 정보 업데이트  T41_06_00
        var _SESS_DATA_41_06_00 = dataCtrl.getObjData("T41_06_00");
        if(_SESS_DATA_41_06_00 != null){
            var sessGridData_41_06_00 = JSON.parse(_SESS_DATA_41_06_00);
            var cnt_41_06_00 = sessGridData_41_06_00.length;
            
            for(var i=0;i<cnt_41_06_00;i++){
                //카드가 등록완료 (CRDCO_REG_PROC_ST == "3") 이며 해당카드사와 같을경우
                if(sessGridData_41_06_00[i].CRDCO_REG_PROC_ST == "3" && CrdcoCd == sessGridData_41_06_00[i].FNC_INST_CD){
                    sessGridData_41_06_00[i].REG_CRD_CNT = String(cnt2);    //위 T41_07_10 에서 사용중인 카드 수 등록
                }
            }
            
            dataCtrl.setObjData("T41_06_00", JSON.stringify(sessGridData_41_06_00));
            
        }
        
        
    }
    
    
</script>


        <div id="body"> 
            <form name="frm" method="post">
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <h3>법인카드정보</h3>
                <!-- 법인카드정보 start -->
                <div class="t10 b20 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="법인카드정보" class="tbl_type02">
                    <caption>법인카드정보</caption>
                    <colgroup>
                        <col width="30%" />
                        <col width="70%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">카드번호</th>
                        <td colspan="3" class="ll"><%=CrdNo2 %></td>
                    </tr>
                    <tr>
                        <th scope="row">카드사</th>
                        <td colspan="3" class="ll"><%=CrdcoNm %></td>
                    </tr>
                    <tr>
                        <th scope="row">유효기간</th>
                        <td colspan="3" class="ll"><%=ValdTrm %></td>
                    </tr>
                    <tr>
                        <th scope="row">결제은행</th>
                        <td colspan="3" class="ll"><%=SetlBnkNm %></td>
                    </tr>
                    <tr>
                        <th scope="row">결제계좌번호</th>
                        <td colspan="3" class="ll"><%=SetlAcctNo2 %></td>
                    </tr>
                    <tr>
                        <th scope="row">카드구분</th>
                        <td colspan="3" class="ll"><%=CrdDvNm %></td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //법인카드정보 end// -->
                <!-- action bt start -->
                <div class="pop_action_bt">
                    <a href="#dummy" onclick="uf_update(); return false;" class="bt_action4-01" title="사용중지"><span class="bt_sp">사용중지</span></a>
                </div>
                <!-- //action bt end// --> 
            </div>
            <!-- //content end// -->
            </form>
        </div>
        
<%@ include file="/inc/jspFooter_popup.jsp" %> 


</body>
</html> 
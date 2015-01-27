<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_25_00.jsp
 *   Description        : 부가가치세금액 수정 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013.12.30                     예기해             
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

<!-- //head start -->
<%@ include file="/inc/jspHead_popup.jsp" %>
<!-- //head end -->

<% 
    String frmNm    = SessionUtil.getRequestValue(request, "pfrmNm");
    String Amt      = SessionUtil.getRequestValue(request, "pAmt");
    String Splamt   = SessionUtil.getRequestValue(request, "pSplamt");
    String Vat      = SessionUtil.getRequestValue(request, "pVat");
    String SrvFee   = StringUtil.null2void(SessionUtil.getRequestValue(request, "pSrvFee"),"0");
    String ObjNm    = SessionUtil.getRequestValue(request, "pObjNm");
    String RIdx     = SessionUtil.getRequestValue(request, "pRIdx");
    String dv       = StringUtil.null2void(SessionUtil.getRequestValue(request, "pDv"), "R");
    
    
    
%>


<title>카드사용 부가세 수정 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>

<!---_BEGIN_ENC_--->

    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">카드사용 부가세 수정</p>
        </div>
        <!-- //head title// --> 
    </div>


        <div id="body">
            <form name="frm" method="post">
            <!-- content start -->
            <div id="content">
                <div class="t20"></div>
                <!-- 사용금액 리스트 start -->
                <div class="t10 b20 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="사용금액 리스트" class="tbl_type02">
                    <caption>사용금액 리스트</caption>
                    <colgroup>
                        <col width="40%" />
                        <col width="60%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row"><% if ("R".equals(dv)) { %>사용금액<%} else {%>취소금액<%} %></th>
                        <td class="ll"><%=FormatUtil.getMoneyForm(Amt)%></td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //사용금액 리스트 end// -->
                <%
                    if ("R".equals(dv)) {
                %>
                <!-- 원공금금액 리스트 start -->
                <div class="b20 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="원공금금액 리스트" class="tbl_type02">
                    <caption>원공금금액 리스트</caption>
                    <colgroup>
                        <col width="40%" />
                        <col width="60%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">원공금금액</th>
                        <td class="ll"><%=FormatUtil.getMoneyForm(Splamt)%></td>
                    </tr>
                    <tr>
                        <th scope="row">원부가가치세액</th>
                        <td class="ll"><%=FormatUtil.getMoneyForm(Vat)%></td>
                    </tr>
                    <tr>
                        <th scope="row">원봉사료</th>
                        <td class="ll"><%=FormatUtil.getMoneyForm(SrvFee)%></td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //원공금금액 리스트 end// -->
                <%
                    }
                %>
                <!-- 수정공급금액 리스트 start -->
                <div class="b10 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="수정공급금액 리스트" class="tbl_type02">
                    <caption>수정공급금액 리스트</caption>
                    <colgroup>
                        <col width="40%" />
                        <col width="60%" />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row"><label for="Splamt"><% if ("R".equals(dv)) { %>수정공급금액<% } else { %>수정취소공급금액<% } %></label></th>
                        <td class="ll"><input type="text" name="Splamt" id="Splamt" class="inputr" style="width:120px;" datatype="currency" format="currency" maxlength="15" readonly /></td>
                    </tr>
                    <tr>
                        <th scope="row"><label for="Vat"><% if ("R".equals(dv)) { %>수정부가가치세액<% } else { %>수정취소부가가치세액<% } %></label></th>
                        <td class="ll"><input type="text" name="Vat" id="Vat" class="inputr" style="width:120px;" datatype="currency" format="currency" maxlength="15" notnull value="" onKeyUp="proCal();"/></td>
                    </tr>
                <%
                    if ("R".equals(dv)) {
                %>
                    
                    <tr>
                        <th scope="row"><label for="SrvFee">봉사료</label></th>
                        <td class="ll"><input type="text" name="SrvFee" id="SrvFee" class="inputr" style="width:120px;" datatype="currency" format="currency" maxlength="15"  readonly value="<%=FormatUtil.getMoneyForm(SrvFee)%>"/></td>
                    </tr>
                <% 
                    } else {
                %>
                    <input type="hidden" name="SrvFee" id="SrvFee" value="0" />
                <%                      
                    }
                %>
                    </tbody>
                    </table>
                </div>
                <!-- //수정공급금액 리스트 end// -->
                <div class="b20">
                    <input type="radio" name="VatYn" id="radio01" value="Y" class="radio1" checked onclick="uf_CalAmt(this.value);"/> <label for="radio01">부가세 "10%" </label>  
                    <span class="l20"></span>
                    <input type="radio" name="VatYn" id="radio02" value="N" class="radio1" onclick="uf_CalAmt(this.value);"/> <label for="radio02">부가세 "0" </label>
                </div>
                <!-- 가이드 start -->
                <div class="pop_line_gbox">
                    <div class="pop_line_gboxc">
                        <ul>
                            <li>부가세금액을 입력하시면 공급금액이 변경됩니다.</li>
                <%
                    if ("R".equals(dv)) {
                %>
                            
                            <li>저장 버튼을 누르시면 봉사료 금액이 공급금액에 포함됩니다.</li>
                <%
                    }
                %>                            
                        </ul>
                    </div>
                </div>
                <!-- //가이드 end// -->
                <!-- action bt start -->
                <div class="pop_action_bt ar">
                    <a href="#" class="bt_action2-1" title="저장" onclick="uf_insert(); return false;"><span class="bt_sp">저장</span></a>
                </div>
                <!-- //action bt end// --> 
            </div>
            <!-- //content end// -->
            </form>
        </div>

<!-- //content end// -->

<%@ include file="/inc/jspFooter_popup.jsp" %> 





<script type="text/javascript">

    /*
     * 부가가치세액 입력시 공급금액 계산
     */
    function uf_CalAmt(rdobj){
        var obj = document.xgrid;
        var frm = document.frm;
    
        if("Y" == rdobj){
            splvat  =   Math.round( (Number('<%=Amt%>')-Number('<%=SrvFee%>') )/ 1.1);
            frm.Splamt.value    =   putComma(splvat);       
            frm.Vat.value       =   putComma( (Number('<%=Amt%>')-Number('<%=SrvFee%>')) - splvat);
        }else{
            frm.Splamt.value    =   putComma(Number('<%=Amt%>')-Number('<%=SrvFee%>'));
            frm.Vat.value       =   "0";
        }
    }
    
    function proCal(){
        var frm = document.frm;
    
        splamt = (Math.round(Number('<%=Amt%>')-Number('<%=SrvFee%>'))  -   Number(frm.Vat.value));
        if(splamt < 0 || splamt <= Number(frm.Vat.value)){
            alert("공급가액이 잘못되었습니다.\n부가가치세액을 다시 입력하여 주세요.");
            uf_CalAmt("Y");
            return;
        }else
            frm.Splamt.value = putComma(splamt);
        
    }
    
    function uf_insert(){
        var frm = document.frm;
        //변경할 필드에 값 세팅
        <%if ("R".equals(dv)) {%>
	        opener.changeItem(<%=RIdx%>, "ORGNL_SPLY_AMT", (Number(removeComma(frm.Splamt))+Number(removeComma(frm.SrvFee))));
	        opener.changeItem(<%=RIdx%>, "ORGNL_ADTN_TAX", removeComma(frm.Vat));
        <%}else{%>  
        	opener.changeItem(<%=RIdx%>, "UPD_CAN_SPLY_AMT", (Number(removeComma(frm.Splamt))+Number(removeComma(frm.SrvFee))));
        	opener.changeItem(<%=RIdx%>, "UPD_CAN_VAT_AMT", removeComma(frm.Vat));        	
        <%}%>
        
    <%-- 
        opener.document.<%=ObjNm%>.SetValue(<%=RIdx%>,  opener.document.<%=ObjNm%>.GetItemIndexFromCaption("수정<%if (!"R".equals(dv)) {%>취소<%}%>공급가액")    ,(Number(removeComma(frm.Splamt))+Number(removeComma(frm.SrvFee)))+"");
        opener.document.<%=ObjNm%>.SetValue(<%=RIdx%>,  opener.document.<%=ObjNm%>.GetItemIndexFromCaption("수정<%if (!"R".equals(dv)) {%>취소<%}%>부가가치세액")  ,frm.Vat.value);
     --%>    
        window.close();
    }
    
    $(document).ready( function () {
        uf_CalAmt("Y"); 
    });

</script>

</body>
</html> 

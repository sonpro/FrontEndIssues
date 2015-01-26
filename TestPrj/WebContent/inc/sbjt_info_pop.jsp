<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="kr.go.rcms.pt.impl.RCMSPTCommonUtil" %>
<%@ page import="kr.go.rcms.web.util.*" %>
<%@ page import="jex.json.JSONObject"%>


<%
String seqNo = SessionUtil.getRequestValue(request, "AgrmtSeqNo");
String instId = SessionUtil.getRequestValue(request, "AgrmtInstId");

JSONObject result_C05030 = new JSONObject();                //Json 생성 ( 조회결과값 담기 )

//1. 신규과제
if("G00000000000001".equals(seqNo) && "TEST0001".equals(instId)){
    result_C05030.put("PMS_ID","G01");
    result_C05030.put("BZ_CLAS_CD","S1056");
    result_C05030.put("SBJT_ID","TEST0001");
    result_C05030.put("SBJT_NM","RCMS 실습용 신규과제");
    result_C05030.put("SBJT_PRGR_DV","07");
    result_C05030.put("TOTL_DEV_TRM_STR_DT","20140101");
    result_C05030.put("TOTL_DEV_TRM_END_DT","20990131");
    result_C05030.put("AGRMT_SEQ_NO","G00000000000001");
    result_C05030.put("CPCG_INST_ID","11000001");
    result_C05030.put("CPCG_INST_NM","한국산업기술평가관리원");
    result_C05030.put("BZ_CLAS_NM","RCMS 실습");
    result_C05030.put("PRS_SBJT_STG","0");
    result_C05030.put("ANNL","3");
    result_C05030.put("AGRMT_CNCL_ID","1");
    result_C05030.put("TOTL_INST_AMT","130000");
    result_C05030.put("DEV_STR_DT","20140101");
    result_C05030.put("DEV_END_DT","20990131");
    result_C05030.put("AGRMT_INST_ID","10000001");
    result_C05030.put("AGRMT_INST_NM","㈜RCMS");
    result_C05030.put("AGRMT_INST_BZ_REG_NO","1111111111");
    result_C05030.put("AGRMT_INST_CRPN_REG_NO","1111111111111");
    result_C05030.put("NPRF_INST_YN","Y");
    result_C05030.put("EXCTN_STG_DV","1");
    result_C05030.put("BZ_EXP_ACCT_BNK_CD","020");
    result_C05030.put("BZ_EXP_ACCT_NO","10000000000");
    result_C05030.put("RCH_EXP_ACCT_BNK_CD","020");
    result_C05030.put("RCH_EXP_ACCT_NO","10000000000");
    result_C05030.put("RCH_EXP_SAL_ACCT_BNK_CD",null);
    result_C05030.put("RCH_EXP_SAL_ACCT_NO",null);
    result_C05030.put("PRIVT_ALOT_AMT_TFRN_YN","N");
    result_C05030.put("SPOT_CROV_AMT","0");
    result_C05030.put("BF_YR_CASH_CROV_AMT","0");
    result_C05030.put("BF_YR_SPOT_CROV_AMT","0");
    result_C05030.put("SYNC_DTM","1293548400000");
    result_C05030.put("FNC_INST_REG_YN","N");
    result_C05030.put("SBJT_ALNM","연구개발비");
    result_C05030.put("UPD_BF_AGRMT_INST_ID",null);
    result_C05030.put("AGRMT_INST_ROLE_DV","E");
    result_C05030.put("INST_SBJT_PRGR_ST","10");
    result_C05030.put("EXCTN_LIMT_ST","0");
    result_C05030.put("EXCTN_LIMT_RSN",null);
    result_C05030.put("EXCTN_LIMT_RSN_CD",null);
    result_C05030.put("CRDT_CRD_ISSU_YN","N");
    result_C05030.put("PRIVT_ALOT_AMT_RCV_DT",null);
    result_C05030.put("MNSR_CTBT_AMT_RCV_DT",null);
    result_C05030.put("LAF_ALOT_AMT_RCV_DT",null);
    result_C05030.put("INST_TOTL_INST_AMT","110000000");
    result_C05030.put("AGRMT_CASH_LIM_AMT","110000000");
    result_C05030.put("MNSR_CTBT_AMT","110000000");
    result_C05030.put("UPAY_MNSR_CTBT_AMT","110000000");
    result_C05030.put("ALOT_CASH_AMT","0");
    result_C05030.put("ALOT_SPOT_AMT","0");
    result_C05030.put("PRIVT_CASH_AMT","0");
    result_C05030.put("PRIVT_SPOT_AMT","0");
    result_C05030.put("RVCN_AMT","0");
    result_C05030.put("INST_ROLE_SB_DV","E1");
    result_C05030.put("SUMUP_RSPR_EXCTN_POSS_YN","Y");
    result_C05030.put("FNC_INST_CONT_ID","00012525");
    result_C05030.put("BZ_REG_NO","1111111111");
    result_C05030.put("CRPN_REG_NO","1314110168031");
    result_C05030.put("SPVS_INST_ID","10023093");
    result_C05030.put("SPVS_INST_NM","㈜RCMS");
    result_C05030.put("USR_NM","산기평");

//2. 진행과제
}else if("G00000000000002".equals(seqNo) && "10112249".equals(instId)){
    result_C05030.put("PMS_ID","G01");
    result_C05030.put("BZ_CLAS_CD","S1598");
    result_C05030.put("SBJT_ID","TEST0002");
    result_C05030.put("SBJT_NM","RCMS 실습용 진행과제");
    result_C05030.put("SBJT_PRGR_DV","09");
    result_C05030.put("TOTL_DEV_TRM_STR_DT","20140101");
    result_C05030.put("TOTL_DEV_TRM_END_DT","20990131");
    result_C05030.put("AGRMT_SEQ_NO","G00000000000002");
    result_C05030.put("CPCG_INST_ID","11000001");
    result_C05030.put("CPCG_INST_NM","한국산업기술평가관리원");
    result_C05030.put("BZ_CLAS_NM","RCMS 실습");
    result_C05030.put("PRS_SBJT_STG","0");
    result_C05030.put("ANNL","3");
    result_C05030.put("AGRMT_CNCL_ID","2");
    result_C05030.put("TOTL_INST_AMT","0");
    result_C05030.put("DEV_STR_DT","20120401");
    result_C05030.put("DEV_END_DT","20990131");
    result_C05030.put("AGRMT_INST_ID","10112249");
    result_C05030.put("AGRMT_INST_NM","㈜RCMS");
    result_C05030.put("AGRMT_INST_BZ_REG_NO","1111111111");
    result_C05030.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
    result_C05030.put("NPRF_INST_YN","N");
    result_C05030.put("EXCTN_STG_DV","2");
    result_C05030.put("BZ_EXP_ACCT_BNK_CD","003");
    result_C05030.put("BZ_EXP_ACCT_NO","20000000000");
    result_C05030.put("RCH_EXP_ACCT_BNK_CD","003");
    result_C05030.put("RCH_EXP_ACCT_NO","08203000000220");
    result_C05030.put("RCH_EXP_SAL_ACCT_BNK_CD",null);
    result_C05030.put("RCH_EXP_SAL_ACCT_NO",null);
    result_C05030.put("PRIVT_ALOT_AMT_TFRN_YN","N");
    result_C05030.put("SPOT_CROV_AMT","0");
    result_C05030.put("BF_YR_CASH_CROV_AMT","0");
    result_C05030.put("BF_YR_SPOT_CROV_AMT","0");
    result_C05030.put("SYNC_DTM","1387638000000");
    result_C05030.put("FNC_INST_REG_YN","N");
    result_C05030.put("SBJT_ALNM","연구개발비");
    result_C05030.put("UPD_BF_AGRMT_INST_ID",null);
    result_C05030.put("AGRMT_INST_ROLE_DV","C");
    result_C05030.put("INST_SBJT_PRGR_ST","07");
    result_C05030.put("EXCTN_LIMT_ST","1");
    result_C05030.put("EXCTN_LIMT_RSN","연구기관 자체 정산 처리");
    result_C05030.put("EXCTN_LIMT_RSN_CD","SY21");
    result_C05030.put("CRDT_CRD_ISSU_YN","N");
    result_C05030.put("PRIVT_ALOT_AMT_RCV_DT",null);
    result_C05030.put("MNSR_CTBT_AMT_RCV_DT",null);
    result_C05030.put("LAF_ALOT_AMT_RCV_DT","20131219");
    result_C05030.put("INST_TOTL_INST_AMT","110000000");
    result_C05030.put("AGRMT_CASH_LIM_AMT","100000000");
    result_C05030.put("MNSR_CTBT_AMT","60000000");
    result_C05030.put("UPAY_MNSR_CTBT_AMT","0");
    result_C05030.put("ALOT_CASH_AMT","1000000");
    result_C05030.put("ALOT_SPOT_AMT","0");
    result_C05030.put("PRIVT_CASH_AMT","40000000");
    result_C05030.put("PRIVT_SPOT_AMT","10000000");
    result_C05030.put("RVCN_AMT","0");
    result_C05030.put("INST_ROLE_SB_DV","C1");
    result_C05030.put("SUMUP_RSPR_EXCTN_POSS_YN","Y");
    result_C05030.put("FNC_INST_CONT_ID","00000341");
    result_C05030.put("BZ_REG_NO","1111111111");
    result_C05030.put("CRPN_REG_NO","1101111731135");
    result_C05030.put("SPVS_INST_ID","10112249");
    result_C05030.put("SPVS_INST_NM","㈜RCMS");
    result_C05030.put("USR_NM","산기평");


//3. 정산과제(보고서 미제출)
}else if("G00000000000003".equals(seqNo) && "10112249".equals(instId)){
    result_C05030.put("PMS_ID","G01");
    result_C05030.put("BZ_CLAS_CD","S1598");
    result_C05030.put("SBJT_ID","TEST0003");
    result_C05030.put("SBJT_NM","RCMS 실습용 정산과제");
    result_C05030.put("SBJT_PRGR_DV","09");
    result_C05030.put("TOTL_DEV_TRM_STR_DT","20140101");
    result_C05030.put("TOTL_DEV_TRM_END_DT","20990131");
    result_C05030.put("AGRMT_SEQ_NO","G00000000000003");
    result_C05030.put("CPCG_INST_ID","11000001");
    result_C05030.put("CPCG_INST_NM","한국산업기술평가관리원");
    result_C05030.put("BZ_CLAS_NM","RCMS 실습");
    result_C05030.put("PRS_SBJT_STG","0");
    result_C05030.put("ANNL","1");
    result_C05030.put("AGRMT_CNCL_ID","2");
    result_C05030.put("TOTL_INST_AMT","0");
    result_C05030.put("DEV_STR_DT","20140101");
    result_C05030.put("DEV_END_DT","20140331");
    result_C05030.put("AGRMT_INST_ID","10112249");
    result_C05030.put("AGRMT_INST_NM","㈜RCMS");
    result_C05030.put("AGRMT_INST_BZ_REG_NO","1111111111");
    result_C05030.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
    result_C05030.put("NPRF_INST_YN","N");
    result_C05030.put("EXCTN_STG_DV","2");
    result_C05030.put("BZ_EXP_ACCT_BNK_CD","003");
    result_C05030.put("BZ_EXP_ACCT_NO","20000000000");
    result_C05030.put("RCH_EXP_ACCT_BNK_CD","003");
    result_C05030.put("RCH_EXP_ACCT_NO","08203000000220");
    result_C05030.put("RCH_EXP_SAL_ACCT_BNK_CD",null);
    result_C05030.put("RCH_EXP_SAL_ACCT_NO",null);
    result_C05030.put("PRIVT_ALOT_AMT_TFRN_YN","N");
    result_C05030.put("SPOT_CROV_AMT","0");
    result_C05030.put("BF_YR_CASH_CROV_AMT","0");
    result_C05030.put("BF_YR_SPOT_CROV_AMT","0");
    result_C05030.put("SYNC_DTM","1387638000000");
    result_C05030.put("FNC_INST_REG_YN","N");
    result_C05030.put("SBJT_ALNM","연구개발비");
    result_C05030.put("UPD_BF_AGRMT_INST_ID",null);
    result_C05030.put("AGRMT_INST_ROLE_DV","C");
    result_C05030.put("INST_SBJT_PRGR_ST","10");
    result_C05030.put("EXCTN_LIMT_ST","0");
    result_C05030.put("EXCTN_LIMT_RSN","사업비이전(양도기관)으로 인한 집행정지");
    result_C05030.put("EXCTN_LIMT_RSN_CD","SY20");
    result_C05030.put("CRDT_CRD_ISSU_YN","N");
    result_C05030.put("PRIVT_ALOT_AMT_RCV_DT","20100524");
    result_C05030.put("MNSR_CTBT_AMT_RCV_DT","20100524");
    result_C05030.put("LAF_ALOT_AMT_RCV_DT",null);
    result_C05030.put("INST_TOTL_INST_AMT","110000");
    result_C05030.put("AGRMT_CASH_LIM_AMT","100000");
    result_C05030.put("MNSR_CTBT_AMT","90000");
    result_C05030.put("UPAY_MNSR_CTBT_AMT","0");
    result_C05030.put("ALOT_CASH_AMT","2000");
    result_C05030.put("ALOT_SPOT_AMT","0");
    result_C05030.put("PRIVT_CASH_AMT","10000");
    result_C05030.put("PRIVT_SPOT_AMT","10000");
    result_C05030.put("RVCN_AMT","10000");
    result_C05030.put("INST_ROLE_SB_DV","C1");
    result_C05030.put("SUMUP_RSPR_EXCTN_POSS_YN","Y");
    result_C05030.put("FNC_INST_CONT_ID","00000341");
    result_C05030.put("BZ_REG_NO","1111111111");
    result_C05030.put("CRPN_REG_NO","1101111731135");
    result_C05030.put("SPVS_INST_ID","10112249");
    result_C05030.put("SPVS_INST_NM","㈜RCMS");
    result_C05030.put("USR_NM","산기평");
    
//4. 정산과제(보고서 제출 완료)
}else if("G00000000000004".equals(seqNo) && "10112249".equals(instId)){
    result_C05030.put("PMS_ID","G01");
    result_C05030.put("BZ_CLAS_CD","S1854");
    result_C05030.put("SBJT_ID","TEST0004");
    result_C05030.put("SBJT_NM","RCMS 실습용 정산과제");
    result_C05030.put("SBJT_PRGR_DV","09");
    result_C05030.put("TOTL_DEV_TRM_STR_DT","20100524");
    result_C05030.put("TOTL_DEV_TRM_END_DT","20110524");
    result_C05030.put("AGRMT_SEQ_NO","G00000000000004");
    result_C05030.put("CPCG_INST_ID","11000001");
    result_C05030.put("CPCG_INST_NM","한국산업기술평가관리원");
    result_C05030.put("BZ_CLAS_NM","RCMS 실습");
    result_C05030.put("PRS_SBJT_STG","0");
    result_C05030.put("ANNL","1");
    result_C05030.put("AGRMT_CNCL_ID","1");
    result_C05030.put("TOTL_INST_AMT","20000");
    result_C05030.put("DEV_STR_DT","20100524");
    result_C05030.put("DEV_END_DT","20110524");
    result_C05030.put("AGRMT_INST_ID","10112249");
    result_C05030.put("AGRMT_INST_NM","㈜RCMS");
    result_C05030.put("AGRMT_INST_BZ_REG_NO","1111111111");
    result_C05030.put("AGRMT_INST_CRPN_REG_NO","1101111731135");
    result_C05030.put("NPRF_INST_YN","N");
    result_C05030.put("EXCTN_STG_DV","1");
    result_C05030.put("BZ_EXP_ACCT_BNK_CD","020");
    result_C05030.put("BZ_EXP_ACCT_NO","40000000000");
    result_C05030.put("RCH_EXP_ACCT_BNK_CD","020");
    result_C05030.put("RCH_EXP_ACCT_NO","1005000000415");
    result_C05030.put("RCH_EXP_SAL_ACCT_BNK_CD",null);
    result_C05030.put("RCH_EXP_SAL_ACCT_NO",null);
    result_C05030.put("PRIVT_ALOT_AMT_TFRN_YN","N");
    result_C05030.put("SPOT_CROV_AMT","0");
    result_C05030.put("BF_YR_CASH_CROV_AMT","0");
    result_C05030.put("BF_YR_SPOT_CROV_AMT","0");
    result_C05030.put("SYNC_DTM","1387638000000");
    result_C05030.put("FNC_INST_REG_YN","N");
    result_C05030.put("SBJT_ALNM","연구개발비");
    result_C05030.put("UPD_BF_AGRMT_INST_ID",null);
    result_C05030.put("AGRMT_INST_ROLE_DV","C");
    result_C05030.put("INST_SBJT_PRGR_ST","07");
    result_C05030.put("EXCTN_LIMT_ST","0");
    result_C05030.put("EXCTN_LIMT_RSN","연구기관 자체 정산 처리");
    result_C05030.put("EXCTN_LIMT_RSN_CD","SY21");
    result_C05030.put("CRDT_CRD_ISSU_YN","N");
    result_C05030.put("PRIVT_ALOT_AMT_RCV_DT","20100531");
    result_C05030.put("MNSR_CTBT_AMT_RCV_DT","20100525");
    result_C05030.put("LAF_ALOT_AMT_RCV_DT",null);
    result_C05030.put("INST_TOTL_INST_AMT","20000");
    result_C05030.put("AGRMT_CASH_LIM_AMT","20000");
    result_C05030.put("MNSR_CTBT_AMT","10000");
    result_C05030.put("UPAY_MNSR_CTBT_AMT","0");
    result_C05030.put("ALOT_CASH_AMT","0");
    result_C05030.put("ALOT_SPOT_AMT","0");
    result_C05030.put("PRIVT_CASH_AMT","10000");
    result_C05030.put("PRIVT_SPOT_AMT","0");
    result_C05030.put("RVCN_AMT","0");
    result_C05030.put("INST_ROLE_SB_DV","C1");
    result_C05030.put("SUMUP_RSPR_EXCTN_POSS_YN","Y");
    result_C05030.put("FNC_INST_CONT_ID","00012525");
    result_C05030.put("BZ_REG_NO","1111111111");
    result_C05030.put("CRPN_REG_NO","1101111731135");
    result_C05030.put("SPVS_INST_ID","10112249");
    result_C05030.put("SPVS_INST_NM","㈜RCMS");
    result_C05030.put("USR_NM","산기평");
        
}

%>
        <h3>과제현황</h3>
        <!-- 과제현황 리스트 start -->
        <div class="t10 pop_wh">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="과제현황 리스트" class="tbl_type02">
            <caption>과제현황 리스트</caption>
            <colgroup>
                <col width="20%" />
                <col width="80%" />
            </colgroup>
            <tbody>
            <tr>
                <th scope="col">사업명</th>
                <td class="ll"><%=result_C05030.getString("BZ_CLAS_NM")%></td>
            </tr>
            <tr>
                <th scope="row">과제명</th>
                <td class="ll"><%=result_C05030.getString("SBJT_NM")%></td>
            </tr>
            </tbody>
            </table>
        </div>
        <!-- //과제현황 리스트 end// -->
        <!-- 과제현황 상세내용 start -->
        <div class="t20 b15 pop_wh">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="과제현황 상세내용" class="tbl_type03">
            <caption>과제현황</caption>
            <colgroup>
                <col width="10%"/>
                <col width="11%" span="2"/>
                <col width="20%"/>
                <col width="10%"/>
                <col width="10%"/>
            </colgroup>
            <thead>
            <tr>
                <th scope="col">과제번호</th>
                <th scope="col" colspan="2">전담기관</th>
                <th scope="col">주관기관</th>
                <th scope="col">단계</th>
                <th scope="col">년차</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td class="ac"><a href="#dummy" style="text-decoration:underline; color:blue;" onclick="uf_SbjtDtlReq('BzClasCd=<%=result_C05030.getString("BZ_CLAS_CD")%>&SbjtId=<%=result_C05030.getString("SBJT_ID")%>&AgrmtSeqNo=<%=result_C05030.getString("AGRMT_SEQ_NO")%>&AgrmtInstId=<%=result_C05030.getString("AGRMT_INST_ID")%>')"><%=result_C05030.getString("SBJT_ID")%></a></td>
                <td colspan="2"><%=result_C05030.getString("CPCG_INST_NM")%></td>
                <td class="ac"><%=result_C05030.getString("SPVS_INST_NM")%></td>
                <td class="ar"><%=result_C05030.getString("PRS_SBJT_STG")%></td>
                <td class="ar"><%=result_C05030.getString("ANNL")%></td>
            </tr>
            <tr>
                <th scope="col">기관명</th>
                <th scope="col">사업자등록번호</th>
                <th scope="col">참여역할</th>
                <th scope="col">당해개발기간</th>
                <th scope="col">당해총사업비</th>
                <th scope="col">집행가능상태</th>
            </tr>
            <tr>
                <td class="ac"><%=result_C05030.getString("AGRMT_INST_NM")%></td>
                <td class="ac"><%=result_C05030.getString("AGRMT_INST_BZ_REG_NO")%></td>
                <td class="ac"><%=CodeUtil.getCode("RND035", result_C05030.getString("AGRMT_INST_ROLE_DV"))%></td>
                <td class="ac"><%=FormatUtil.setDelim(result_C05030.getString("DEV_STR_DT"), "9999.99.99")+"~"+FormatUtil.setDelim(result_C05030.getString("DEV_END_DT"), "9999.99.99")%>(<%=DateUtil.monthsBetween(result_C05030.getString("DEV_STR_DT"),result_C05030.getString("DEV_END_DT"))%>개월)</td>
                <td class="ar"><%=FormatUtil.getMoneyForm(result_C05030.getString("INST_TOTL_INST_AMT")) %></td>
                <td class="ac"><%=CodeUtil.getCode("RND139", result_C05030.getString("EXCTN_LIMT_ST"))%></td>
            </tr>
            </tbody>
            </table>
        </div>
        <!-- //과제현황 상세내용 end// -->

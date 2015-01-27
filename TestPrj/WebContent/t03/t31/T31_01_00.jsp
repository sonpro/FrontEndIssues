<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T31_01_00.jsp
 *   Description        : �������������ȸ
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013. 10. 29     				������        		
 *
 *  @author ������
 *  @Since  2013. 10. 29
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
<%@ include file="/inc/jspHead.jsp" %>
<!-- //head end -->

<%
    String Input_pInqStrDt = StringUtil.null2void(SessionUtil.getRequestValue(request, "pInqStrDt").replaceAll("-",""),DateUtil.getDateSimple());               // ��ȸ������
    String Input_pInqEndDt = StringUtil.null2void(SessionUtil.getRequestValue(request, "pInqEndDt").replaceAll("-",""),DateUtil.getDateSimple());               // ��ȸ������    
    
    // 2011.08.30
    String pSbjt_map_keys  = SessionUtil.getRequestValue(request, "pSbjt_map_keys");
    String pkeykey         = SessionUtil.getRequestValue(request, "pkeykey");
    String pSTrscEvdcDv    = SessionUtil.getRequestValue(request, "pSTrscEvdcDv");
    
%>


<title>�������������ȸ &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body class="line">
<ul id="accessibility">
    <li><a href="#header">�ָ޴��ٷΰ���</a></li>
    <li><a href="#contaniner">�������ٷΰ���</a></li>
    <li><a href="#footer">�ϴܹٷΰ���</a></li>
</ul>
<hr/>
<noscript><p id="warning_script">�ڹٽ�ũ��Ʈ�� �������� ���� �� �������� ���������� ������ ���� �� �ֽ��ϴ�.</p></noscript>
<div id="wrapper">

    <!-- //header topMenu start// -->
	<%@ include file="/inc/topMenu.jsp" %>
    <!-- //header topMenu end// -->
    
    <!-- contaniner start -->
    <div id="contaniner">
        <!-- left start -->
        <div class="snb">
            <!-- left menu start -->
            




                    <div><img src="/images/pefo/sub_navt3.gif" alt="�¶�������" /></div>
                    <div class="bg">
                        <div class="sub">


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t03/t31/T31_01_00.jsp'); return false;" class="menu_txt_on">����������������</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t03/t31/T31_01_00.jsp'); return false;" class="menu_3dep_on">�������������ȸ</a></li>

                                    <li><a href="#" onclick="fn_url('/t03/t31/T31_02_00.jsp'); return false;" class="menu_3dep">������������������</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="alert('�ǽ�ȯ�濡���� �������� �ʴ� �޴��Դϴ�.'); return false;" class="menu_txt">ī�峻�� ��ȸ</a></div>

                                <ul>

                                    <li><a href="#" onclick="alert('�ǽ�ȯ�濡���� �������� �ʴ� �޴��Դϴ�.'); return false;" class="menu_3dep">ī���� ����</a></li>

                                    <li><a href="#" onclick="alert('�ǽ�ȯ�濡���� �������� �ʴ� �޴��Դϴ�.'); return false;" class="menu_3dep">ī����� ���� ����</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t03/t33/T33_01_00.jsp'); return false;" class="menu_txt">���꼭���ۼ�</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t03/t33/T33_01_00.jsp'); return false;" class="menu_3dep">���꼭�� �ۼ�</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t03/t34/T34_01_00.jsp'); return false;" class="menu_txt">����������Ȳ</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t03/t34/T34_01_00.jsp'); return false;" class="menu_3dep">�������� ��Ȳ</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t03/t35/T35_01_00.jsp'); return false;" class="menu_txt">������ �������</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t03/t35/T35_01_00.jsp'); return false;" class="menu_3dep">������������</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>

                        </div>
                    </div>
                    <div><img src="/images/pefo/subm_bg2.gif" alt="" /></div>

            <!-- //left menu end// -->
            
        </div>
        <!-- //left end// -->


        <!-- content start -->
        <div id="content">
            <!-- pagenav start -->
            



    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u31_01_00_t.gif" alt="�������������ȸ"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>�¶�������</li>
                       <li><img src="/images/common/arr.gif" alt=" " />����������������</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">�������������ȸ</span></li>
						
                    </ul>
                </div>
            </div>                
            <!-- //pagenav end// -->
            <div class="t30"></div>
            <!-------------------------------------------------------------------------------->
            <!--  ����� ���� -->
            <!-------------------------------------------------------------------------------->
            <!-- 
                 ����߽� ������ȸ �ڵ��ϼ� ����� ����
                 ������ȸ ��Ƽüũ ��� isSbjtAutoSchMulti : true
                 ������ȸ �̱۸��      isSbjtAutoSchMulti : false
                 ��ĳ�� �̼��� �ۼ� 20110426 
            -->
            <!-------------------------------------------------------------------------------->
            
            





<!-- //auto search start -->
<% 
	boolean isSbjtAutoSchMulti = false;  //������ȸ �ڵ��ϼ� ��Ƽüũ��� true:��Ƽ false:�̱�  
	boolean beSearchBtn        = false;  //��ȸ��ư ��������(����޼ҵ�:uf_beSearchBtn();)
%>
<%@ include file="/inc/sbjt_list_sch_auto.jsp" %>
<!-- //auto search end --> 


            <!-------------------------------------------------------------------------------->
            <!--  ����� �� -->
            <!-------------------------------------------------------------------------------->                        
            <div class="cb b10"></div>
            <form name="frm" method="post">
            <input type="hidden" name="SBJT_LIST_SCH_AUTO" id="SBJT_LIST_SCH_AUTO" value="N" /> 
            <input type="hidden" name="SBJT_DET_SCH_AUTO"  id="SBJT_DET_SCH_AUTO"  value="Y" /> 
            <input type="hidden" name="PrsPgno" value="0" />
            <input type="hidden" name="TrSupYn" value="N" />            <!--�ŷ���ӿ���-->
            <input type="hidden" name="OnLoadSearch" value="<%=StringUtil.null2void(SessionUtil.getRequestValue(request, "OnLoadSearch"),"N")%>">
            <h3>�����ϳ�����ȸ</h3>
            <!-- �˻��� start -->
            <div class="search">
                <div class="search_boxt"></div>
                <div class="search_boxc">
                    <fieldset>
                        <legend>�����ϳ�����ȸ �˻�</legend>
                        <table width="680" summary="�����ϳ�����ȸ" class="tbl_search">
                        <caption>�����ϳ�����ȸ �˻�</caption>
                        <colgroup>
                            <col width="12%" />
                            <col width="88%" />
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="col">��������</th>
                            <td>
                                <%=ComboUtil.getComboBox("RND134", "TrscEvdcDv", "", "", "", ComboUtil.OPT_ALL,"key") %>
                            </td>
                        </tr>
                        <tr>
                            <th scope="col">�������</th>
                            <td>
                                <!-------------------------------------------------------------------------------->
                                <!--  ��¥���� ���� -->
                                <!-------------------------------------------------------------------------------->
                                <%@ include file="/inc/set_date_btn.jsp" %>          
                                <%@ include file="/inc/set_date_today.jsp" %>          
                                <!-------------------------------------------------------------------------------->
                                <!--  ��¥���� �� -->
                                <!--------------------------------------------------------------------------------> 
                                <script type="text/javascript">
                                    document.frm.InqStrDt.value = "<%=Input_pInqStrDt%>";
                                    document.frm.InqEndDt.value = "<%=Input_pInqEndDt%>";
                                </script>                           
                            </td>
                        </tr>
                        </tbody>
                        </table>
                    </fieldset>
                </div>
                <div class="search_boxb1"></div>
            </div>
            <div class="cb"></div>
            <!-- //�˻��� end// -->
            </form>
            <!-- ��ȸ ����ȸ ��ư start -->
            <div class="search_bt1 ar">
                <a href="#" class="bt_search" title="��ȸ" onclick="uf_search('S'); return false;"></a>
            </div>
            <!-- //��ȸ ����ȸ ��ư end// -->
<!-- *************************  rMateGrid ************************* -->   
            <!-- �ѰǼ�/�μ� ���� ��ư start -->
            <div class="total_box">
                <p class="fl t05">[��ȸ�Ǽ� <span class="bu_01bb" id="InqPrsTotlNcnt2">0</span> ��/<span id="InqPrsTotlCnt2">0</span> ��]</p>
                <p class="ar b05">
                    <a href="#" onclick="print_rMate(); return false;"><img src="/bt/bt_print.gif" alt="�μ�" /></a>
                    <a href="#" onclick="excelExport_rMate(); return false;"><img src="/bt/bt_save.gif" alt="����" /></a>
                </p>
                <p class="cb"></p>
            </div>
            <!-- //�ѰǼ�/�μ� ���� ��ư end// -->    
            <!-- �׸��� Start -->
            <div id="gridDiv">
                <script>
                 rMateGridCreate("grid1", "/rMateGrid/Component/rMateGridWeb", flashVars, "100%", "378", "#FFFFFF", "transparent");
                </script>
            </div>
            <!-- �׸��� End -->
            <!-- �󼼺��� ���̾� �˾� -->
            <div id="layerPopup" style="display:none;z-index:999999;">
                <div id="layerPopupTitle" style="width:355px;height:30px;">
                    <img src="/rMateGrid/Web/Images/grid_layer_title_img.gif" width="325" height="30" border="0" style="float:left;">
                    <a href="javascript:layerClose();"><img src="/rMateGrid/Web/Images/grid_layer_close_img.gif" width="30" height="30" alt="�ݱ�"></a>
                </div>
                <div id="layerPopupTable" style="padding: 5px 5px 5px 5px;"></div>
            </div>
<!-- *************************  rMateGrid ************************* -->            
            <!-- �ȳ� ���̵� start -->
            <div class="guide_box1" id="guide">
                <div class="guide_boxt1">
                    <p class="txt_title fl">����������� ���� �ȳ�</p> 
                    <p class="ar txt_s">* �ȳ��� �� Ȯ���ϼ���. <a href="#" id="btn-guide" ><img src="/bt/bt_close.gif" alt="����" class="vc"/></a></p>
                </div>
                <div class="guide_boxc1">
                    <ul>
                        <li>�� ����������� ���������� RCMS�� ���� ����� ��� ����ǿ� ���ؼ� ��ȸ�� �����մϴ�.</li>
                    </ul>
                </div>
                <p class="guide_boxb1"></p>
            </div>
            <!-- //�ȳ� ���̵� end// -->
        </div>
        <!-- //content end// -->



    </div>
    <!-- //contaniner end//-->
    <div class="cb"></div>

    <!-- footer start -->
	<%@ include file="/inc/jspFooter.jsp" %>
    <!-- //footer end// -->
    
    <!-- ���޴� start -->
	<%@ include file="/inc/quickMenu.jsp" %>
    <!-- //���޴� end// -->

</div><!-- wrapper end -->



<script type="text/javascript">

    //////////////////////////////////
    //��ȸ ó��
    //////////////////////////////////
    function uf_search(SchGb) {
    	
        var frm = document.frm;
        
        if( isSubmit() ) return;    // ����ó��
    	// ������ȸ ���� Ȯ��
	    if(!bAutoSbjtSch()) return;

        var seqNo = document.rtr_str_form.S_AGRMT_SEQ_NO.value;

        if(seqNo == "" || typeof seqNo == "undefined") return;
        
        
        rMateGridLayoutInit_rMate();
        setData(seqNo);
                                    
        
    }

    function uf_autoSbjtSchCallBack(param) {
        
        if(!param){
            alert("������ �߻��Ͽ����ϴ�. ����� �ٽ� �õ����ּ���.");
            return;
        }

        var responseXML = "";
        
        if("1" == param){
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0001' >        <input type='hidden' name='S_PMS_ID'           id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1056' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0001' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' ><input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000001' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000001' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �ű԰���' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='Y' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV' id='S_INST_ROLE_DV' value='E' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='0' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'          value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'    value='N' >    <input type='hidden' name='S_AGRMT_ST_DT'            id='S_AGRMT_ST_DT'              value='20140101' >      </result></results>";
        }else if("2" == param){
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0002' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0002' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000002' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000002' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='N' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='07' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20140101' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20990131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='null' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='null' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'        id='S_AGRMT_ST_DT'          value='20140101' >  </result></results>  ";
        }else if("3" == param){
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0003' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1598' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0003' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000003' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000003' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='2' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='003' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='003' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='2' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130301' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140228' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='3' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='1' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'      id='S_AGRMT_ST_DT'          value='20130301' >  </result></results>  ";
        }else if("4" == param){
            responseXML = "<?xml version='1.0' encoding='euc-kr'?><results><result><input type='hidden' name='S_MNG_ID'              id='S_MNG_ID'               value='TEST0004' >        <input type='hidden' name='S_PMS_ID'              id='S_PMS_ID'               value='G01' >     <input type='hidden' name='S_BZ_CLAS_CD'          id='S_BZ_CLAS_CD'           value='S1854' >      <input type='hidden' name='S_SBJT_ID'             id='S_SBJT_ID'              value='TEST0004' >    <input type='hidden' name='S_PRS_SBJT_STG'        id='S_PRS_SBJT_STG'         value='0' >    <input type='hidden' name='S_ANNL'                id='S_ANNL'                 value='1' >  <input type='hidden' name='S_AGRMT_SEQ_NO'        id='S_AGRMT_SEQ_NO'         value='G00000000000004' >    <input type='hidden' name='S_AGRMT_INST_ID'       id='S_AGRMT_INST_ID'        value='10000004' >   <input type='hidden' name='S_CPCG_INST_BZPR_NO'   id='S_CPCG_INST_BZPR_NO'    value='1111111111' >   <input type='hidden' name='S_AGRMT_INST_BZPR_NO'  id='S_AGRMT_INST_BZPR_NO'   value='1111111111' >  <input type='hidden' name='S_EXCTN_STG_DV'        id='S_EXCTN_STG_DV'         value='1' >    <input type='hidden' name='S_BZ_MOM_ACCT_BNK_CD'  id='S_BZ_MOM_ACCT_BNK_CD'   value='020' >    <input type='hidden' name='S_BZ_MOM_ACCT_NO'      id='S_BZ_MOM_ACCT_NO'       value='10000000000' >   <input type='hidden' name='S_RCH_ACC_BNK_CD'      id='S_RCH_ACC_BNK_CD'       value='020' >   <input type='hidden' name='S_RCH_ACC_BNK_NM'      id='S_RCH_ACC_BNK_NM'       value='A ����' > <input type='hidden' name='S_RCH_ACC_NO'          id='S_RCH_ACC_NO'           value='10000000000' >  <input type='hidden' name='S_SBJT_NM'             id='S_SBJT_NM'              value='RCMS �ǽ��� �������' >    <input type='hidden' name='S_BZ_CLAS_NM'          id='S_BZ_CLAS_NM'           value='RCMS �ǽ�' >  <input type='hidden' name='S_NPRF_INST_YN'        id='S_NPRF_INST_YN'         value='N' >    <input type='hidden' name='S_HMPW_ROLE_DV'        id='S_HMPW_ROLE_DV'         value='02' >    <input type='hidden' name='S_MY_ACCT_TRNS_ALWN_YN'id='S_MY_ACCT_TRNS_ALWN_YN' value='Y' >  <input type='hidden' name='S_MY_SBJT_YN'          id='S_MY_SBJT_YN'           value='Y' >  <input type='hidden' name='S_RCMS_GRP_CD'         id='S_RCMS_GRP_CD'          value='MR010' > <input type='hidden' name='S_INST_LNK_TYPE'       id='S_INST_LNK_TYPE'        value='A' >   <input type='hidden' name='S_INST_SBJT_PRGR_ST'   id='S_INST_SBJT_PRGR_ST'    value='10' >    <input type='hidden' name='S_INST_ROLE_DV'        id='S_INST_ROLE_DV'         value='C' >    <input type='hidden' name='S_PSNL_ACCT_USEYN'     id='S_PSNL_ACCT_USEYN'      value='N' > <input type='hidden' name='S_UNFY_MGNT_INST_YN'   id='S_UNFY_MGNT_INST_YN'    value='Y' > <input type='hidden' name='S_SAC_SHP'             id='S_SAC_SHP'              value='1' >    <input type='hidden' name='S_DEV_STR_DT'          id='S_DEV_STR_DT'           value='20130201' >  <input type='hidden' name='S_DEV_END_DT'          id='S_DEV_END_DT'           value='20140131' >  <input type='hidden' name='S_AIFW'                id='S_AIFW'                 value='1' >   <input type='hidden' name='S_AIBS_SEQ'            id='S_AIBS_SEQ'             value='0' >   <input type='hidden' name='S_SAC_SN'              id='S_SAC_SN'               value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_STG'   id='S_AGRMT_TGT_STR_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_STR_ANNL'  id='S_AGRMT_TGT_STR_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_TGT_END_STG'   id='S_AGRMT_TGT_END_STG'    value='0' >    <input type='hidden' name='S_AGRMT_TGT_END_ANNL'  id='S_AGRMT_TGT_END_ANNL'   value='1' >   <input type='hidden' name='S_AGRMT_DV'            id='S_AGRMT_DV'             value='1' >    <input type='hidden' name='S_AGCF_YN'             id='S_AGCF_YN'              value='Y' >    <input type='hidden' name='S_AGRMT_ST_DT'       id='S_AGRMT_ST_DT'          value='20130201' >  </result></results>  ";
        }
        
        
        document.getElementById("sbjt_auto_gen_div").innerHTML  = responseXML;
        
        //=============================
        //  �����ų �޼ҵ� �� ��ġ
        //=============================
            rMateGridLayoutInit_rMate();
        //=============================
        
    }

    
    if("Y"==frm.OnLoadSearch.value){
        document.getElementById("SBJT_MAP_KEYS").value = '';
        document.getElementById("keykey").value        = '';
        document.getElementById("TrscEvdcDv").value    = '';  
        
        window.attachEvent('onload', autoSbjtFormGen);
    }





$(document).ready(function() {
    // rMateGrid �ʱ�ȭ
    rMateGridInit();
    
    $("a#example1").fancybox();
    $("a#example2").fancybox();	
	  
    $('#btn-guide').click(function(){
	    if( $('#guide').css('height') == '17px' ){
	      $('#guide').css({overflow:'hidden'}).animate({height:70},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_close.gif');});  
	    }else{
	      $('#guide').css({overflow:'hidden'}).animate({height:17},'fast','swing',function(){$('#btn-guide').children().attr('src','//bt/bt_open.gif');});
	    }
	    return false;
    });
});  

</script>








<!-- **********************  rMateGrid setting START ***********************  -->
<script type="text/javaScript">

var layoutStr = "\
<?xml version=\"1.0\" encoding=\"utf-8\"?>\
<rMateGrid>\
    <NumberFormatter id=\"numfmt\"/>\
    <SpanRowAttribute id=\"sumRowAttr\" styleName=\"allTotalFooterStyle\" backgroundColor=\"0xD3D9DB\" />\
    <CurrencyFormatter id=\"currencyfmt\" useThousandsSeparator=\"true\" alignSymbol=\"right\" /> \
    <DataGrid id=\"dg1\" styleName=\"gridStyle\" horizontalScrollPolicy=\"auto\" sortableColumns=\"true\" lockedColumnCount=\"1\" draggableColumns=\"true\" selectionMode=\"singleRow\" headerHeight=\"24\" doubleClickEnabled=\"true\" >\
        <columns>\
            <DataGridColumn id=\"\"                        dataField=\"\"                      itemRenderer=\"IndexNoItem\"  width=\"40\" sortable=\"false\" textAlign=\"center\" />\
            <DataGridColumn id=\"TRSC_EVDC_DV_NM\"    dataField=\"TRSC_EVDC_DV_NM\"     headerText=\"��������\"       width=\"110\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_DT\"            dataField=\"TRSC_DT\"             headerText=\"�������\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"EXCTN_EXEC_DT\"      dataField=\"EXCTN_EXEC_DT\"       headerText=\"�����Ͻ�\"       width=\"120\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" itemRenderer=\"HandCursorItem\" styleJsFunction=\"columnUnderline\" />\
            <DataGridColumn id=\"SPLR_CO_NM\"         dataField=\"SPLR_CO_NM\"          headerText=\"�ŷ�ó\"         width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TOTL_AMT\"           dataField=\"TOTL_AMT\"            headerText=\"���ݾ�\"       width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"USE_VAT_AMT\"        dataField=\"USE_VAT_AMT\"         headerText=\"�ΰ���\"         width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"RTRT_FIX_AMT\"       dataField=\"RTRT_FIX_AMT\"        headerText=\"�����ݾ�\"       width=\"100\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"VAT_PROC_RTRT_AMT\"  dataField=\"VAT_PROC_RTRT_AMT\"   headerText=\"�����ΰ����ݾ�\" width=\"110\" visible=\"true\" textAlign=\"right\" headerStyleName=\"gridHeaderStyle\" formatter=\"{numfmt}\" sortCompareFunction=\"numericSort\" />\
            <DataGridColumn id=\"RCV_BNK_NM\"         dataField=\"RCV_BNK_NM\"          headerText=\"�Ա�����\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCV_ACCT_NO\"        dataField=\"RCV_ACCT_NO\"         headerText=\"�Աݰ��¹�ȣ\"   width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCV_ACCT_OWAC_NM\"   dataField=\"RCV_ACCT_OWAC_NM\"    headerText=\"�����ָ�\"       width=\"100\" visible=\"true\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PAYM_USAG\"          dataField=\"PAYM_USAG\"           headerText=\"���޿뵵\"       width=\"100\" visible=\"true\" textAlign=\"left\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"BUTR_ID\"            dataField=\"BUTR_ID\"             headerText=\"�������ŷ�����ID\"    width=\"140\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"TRSC_EVDC_DV\"       dataField=\"TRSC_EVDC_DV\"        headerText=\"���������ڵ�\"   width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"RCV_ACCT_BNK_CD\"    dataField=\"RCV_ACCT_BNK_CD\"     headerText=\"�Ա������ڵ�\"   width=\"100\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"PMS_ID\"             dataField=\"PMS_ID\"              headerText=\"PMS_ID\"         width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"SBJT_ID\"            dataField=\"SBJT_ID\"             headerText=\"������ȣ\"       width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_SEQ_NO\"       dataField=\"AGRMT_SEQ_NO\"        headerText=\"�����Ϸù�ȣ\"   width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
            <DataGridColumn id=\"AGRMT_INST_ID\"      dataField=\"AGRMT_INST_ID\"       headerText=\"���������̵�\" width=\"0\" visible=\"false\" textAlign=\"center\" headerStyleName=\"gridHeaderStyle\" />\
        </columns>\
    </DataGrid>\
    <Style>\
        .gridStyle { alternatingItemColors: 0xFFFFFF,0xFFFFFF; headerColors: 0xE3E9F1,0xE3E9F1; \
                    fontFamily: ����; fontSize: 12; color: 0x000000; \
                    horizontalGridLines: true; horizontalGridLineColor: 0xD5D5CD; \
                    verticalAlign: middle; verticalGridLineColor: 0xD5D5CD; \
                    selectionColor: 0xE9E2BC; borderColor: 0xA8A8A8; rollOverColor: 0xDEF0FE; selectionColor: 0xF6EBCF;}\
        .gridHeaderStyle { color: 0x29569E; fontWeight: bold;}\
        .allTotalFooterStyle { fontWeight: normal;textAlign: right; }\
    </Style>\
</rMateGrid>\
";


    //�׸��� ���̾ƿ� ȣ�� 
    var rMateGridInitLayout = function() {
        gridApp = FABridge.gridBridge.root();
        gridRoot = gridApp.getGridRoot();
        gridApp.setLayout(layoutStr);   //�׸��� ���̾ƿ� ����

        //����Ŭ�� �󼼺��� �̺�Ʈ �߰�
        var itemDoubleClickHandler = function(event) {
            
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot.getItemAt(rowIndex);
            
        };
        
        //Ŭ�� �̺�Ʈ �߰�
        var itemClickHandler = function(event) {
            var rowIndex = event.getRowIndex();
            var columnIndex = event.getColumnIndex();
            var dataRow = gridRoot.getItemAt(rowIndex);
            var columns = dataGrid.getColumns();
            var ii = 0;
            var jj = 0;
            for ( var i = 0; i < columns.length; i++){
                if (columns[i].getVisible()) {
                    jj++;
                    if (jj == columnIndex){
                        break;
                    }
                } else{
                    ii++;
                }
            }
            columnIndex = columnIndex + ii;
            var column = columns[columnIndex];
            var dataField = column.getDataField();
            
            if("EXCTN_EXEC_DT" == dataField){
                uf_DtlView(dataRow, rowIndex);
            }
        };

        var layoutCompleteHandler = function(event) {
            dataGrid = gridApp.getDataGrid();
            
            //�̺�Ʈ ���
            //dataGrid.addEventListener("itemDoubleClick", itemDoubleClickHandler); //����Ŭ�� �̺�Ʈ
            dataGrid.addEventListener("itemClick", itemClickHandler); //����Ŭ�� �̺�Ʈ
        };
        

        //layout ȣ�� �Ϸ� �� ������ �̺�Ʈ ���
        gridRoot.addEventListener("layoutComplete", layoutCompleteHandler);
        gridRoot.addEventListener("layoutComplete", setInitTotCnt);
        //gridRoot.addEventListener("layoutComplete", uf_search);   //rMateGrid ���̾ƿ� ��� �� ��ȸ����
        
        gridRoot.addEventListener("dataComplete", setTotCnt);   

    };

    //rMateGrid�� �ε��� �� �ҷ��� �Լ��� �����մϴ�.
    FABridge.addInitializationCallback("gridBridge", rMateGridInitLayout);

    
    //�ε� �� rMadeGrid ���
    function rMateGridSetData() {
        gridApp = FABridge.gridBridge.root();
        gridApp.setData(JSON.stringify(gridData)); //������ ���
    };
    
    
    
    //ī��Ʈ �ʱ�ȭ
    function setInitTotCnt(){
        $("#InqPrsTotlNcnt2").html("0");
        $("#InqPrsTotlCnt2").html("0");
        
    }
    function setTotCnt(){
        var rowCnt = getGridRowCount_rMate();
        var totCnt = rowCnt;
        $("#InqPrsTotlNcnt2").html(rowCnt);
        $("#InqPrsTotlCnt2").html(totCnt);
        
    }
    
    
    //////////////////////////////////
    // ��ȭ��
    //////////////////////////////////
    function uf_DtlView(rData, rIdx) {
        
        
        var frm_key = document.rtr_str_form;
        var frm     = document.frm;
        var vcnt    = 0;

        if(getGridRowCount_rMate()<=0){
            alert("��ȸ�� ����Ÿ�� �����ϴ�.");
            return;
        }
            
        get2post(frm, "pInqStrDt="     +frm.InqStrDt.value);                                 // ��ȸ������
        get2post(frm, "pInqEndDt="     +frm.InqEndDt.value);                                 // ��ȸ������

        // 2011.08.30 
        get2post(frm, "pSbjt_map_keys="+document.getElementById("SBJT_MAP_KEYS").value);
        get2post(frm, "pkeykey="       +document.getElementById("keykey").value);
        get2post(frm, "pSTrscEvdcDv="  +document.getElementById("TrscEvdcDv").value);
        // 2011.12.02 EDMS����
        get2post(frm, "hmpwRoleDv="    +frm_key.S_HMPW_ROLE_DV.value);
        get2post(frm, "rcmsGrpCd="     +frm_key.S_RCMS_GRP_CD.value);
        
        get2post(frm, "pTrscEvdcDv="   +rData.TRSC_EVDC_DV);                  // �ŷ���������
        get2post(frm, "pButrId="       +rData.BUTR_ID);          // �������ŷ�����ID

        get2post(frm, "PmsId="         +rData.PMS_ID);                        // PMS_ID
        get2post(frm, "SbjtId="        +rData.SBJT_ID);                      // ������ȣ
        get2post(frm, "AgrmtSeqNo="    +rData.AGRMT_SEQ_NO);                  // �����Ϸù�ȣ
        get2post(frm, "AgrmtInstId="   +rData.AGRMT_INST_ID);                // ���������̵�
        get2post(frm, "TrscDt="        +rData.TRSC_DT);                      // �ŷ�����

        uf_newWinNs('/t03/t31/T31_01_10.jsp', '', '800', '750');
        removeTempAttribute(frm);
        
    }
    
</script>
<!-- **********************  rMateGrid setting END ***********************  -->



<script type="text/javascript">
var cnt = 0;
function setGridData(seqNo){    
    try{
        cnt = 0;
        var gridValue = [];
        
        
        

        //1. �ű԰���
        if("G00000000000001" == seqNo){
        
        	
        //2. �������
        }else if("G00000000000002" == seqNo){

        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2014-01-13","EXCTN_EXEC_DT":"2014-01-13 15:44:36","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"1�б� ��������������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0002","AGRMT_SEQ_NO":"G00000000000002","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","TRSC_DT":"2014-01-07","EXCTN_EXEC_DT":"2014-01-13 15:46:58","SPLR_CO_NM":"�� �� ��ü","TOTL_AMT":"100","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"B ����","RCV_ACCT_NO":"888-88-888888-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","PAYM_USAG":"������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0002","AGRMT_SEQ_NO":"G00000000000002","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2014-02-10","EXCTN_EXEC_DT":"2014-02-10 13:07:20","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"1�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0002","AGRMT_SEQ_NO":"G00000000000002","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"ī��","TRSC_DT":"2014-02-04","EXCTN_EXEC_DT":"2014-02-24 14:51:38","SPLR_CO_NM":"�� A ������","TOTL_AMT":"220","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"���̳����ֺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0002","AGRMT_SEQ_NO":"G00000000000002","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","TRSC_DT":"2014-02-27","EXCTN_EXEC_DT":"2014-03-07 12:27:13","SPLR_CO_NM":"�� �� ��ü","TOTL_AMT":"1100","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"E ����","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","PAYM_USAG":"����Ժ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0002","AGRMT_SEQ_NO":"G00000000000002","AGRMT_INST_ID":"10112249"};

        
        //3. �������(���� ������)
        }else if("G00000000000003" == seqNo){

        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-03-21","EXCTN_EXEC_DT":"2013-02-21 13:44:48","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"1/4 ��������������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","TRSC_DT":"2013-03-04","EXCTN_EXEC_DT":"2013-03-06 10:31:01","SPLR_CO_NM":"�� �� ��ü","TOTL_AMT":"1100","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"E ����","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","PAYM_USAG":"����Ժ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-04-10","EXCTN_EXEC_DT":"2013-03-08 13:07:20","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"2�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"ī��","TRSC_DT":"2013-02-26","EXCTN_EXEC_DT":"2013-03-25 14:52:47","SPLR_CO_NM":"�� A ������","TOTL_AMT":"220","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"���̳� ���ֺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-05-10","EXCTN_EXEC_DT":"2013-04-10 13:07:20","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"3�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","TRSC_DT":"2013-03-28","EXCTN_EXEC_DT":"2013-04-10 13:41:58","SPLR_CO_NM":"�� �� ��ü","TOTL_AMT":"100","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"B ����","RCV_ACCT_NO":"888-88-888888-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","PAYM_USAG":"������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"ī��","TRSC_DT":"2013-03-19","EXCTN_EXEC_DT":"2013-04-23 15:54:12","SPLR_CO_NM":"�� B ������","TOTL_AMT":"1100","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"����Ժ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-06-04","EXCTN_EXEC_DT":"2013-05-06 10:59:20","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"2/4 ��������������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-06-10","EXCTN_EXEC_DT":"2013-05-10 11:01:45","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"4�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"ī��","TRSC_DT":"2013-04-16","EXCTN_EXEC_DT":"2013-05-23 16:32:11","SPLR_CO_NM":"�� C ������","TOTL_AMT":"220","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"���̳� ���ֺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-07-10","EXCTN_EXEC_DT":"2013-06-10 12:12:56","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"5�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-07-08","EXCTN_EXEC_DT":"2013-07-08 16:02:09","SPLR_CO_NM":"�� �� ��ü","TOTL_AMT":"100","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"G ����","RCV_ACCT_NO":"777-77-777777-","RCV_ACCT_OWAC_NM":"�� �� ��ü","PAYM_USAG":"������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-08-09","EXCTN_EXEC_DT":"2013-07-10 10:54:37","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"6�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","TRSC_DT":"2013-07-10","EXCTN_EXEC_DT":"2013-07-22 17:26:25","SPLR_CO_NM":"�� �� ��ü","TOTL_AMT":"20000","USE_VAT_AMT":"1818","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"C ����","RCV_ACCT_NO":"300-30-300000  ","RCV_ACCT_OWAC_NM":"�� �� ��ü","PAYM_USAG":"��ᱸ�Ժ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-09-03","EXCTN_EXEC_DT":"2013-08-02 09:37:25","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"3/4 ��������������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-09-10","EXCTN_EXEC_DT":"2013-08-09 09:58:01","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"7�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-10-10","EXCTN_EXEC_DT":"2013-09-10 10:15:21","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"8�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-09-30","EXCTN_EXEC_DT":"2013-09-30 17:52:50","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"10000","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"������Ȱ���","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-11-08","EXCTN_EXEC_DT":"2013-10-10 14:51:08","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"9�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","TRSC_DT":"2013-10-14","EXCTN_EXEC_DT":"2013-10-29 13:12:08","SPLR_CO_NM":"�� �� ��ü","TOTL_AMT":"15000","USE_VAT_AMT":"1363","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"F ����","RCV_ACCT_NO":"999-99-999999-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","PAYM_USAG":"���ۺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-12-02","EXCTN_EXEC_DT":"2013-11-04 11:41:15","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2150","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"4/4 ��������������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-12-10","EXCTN_EXEC_DT":"2013-11-08 12:01:28","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"10�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"ī��","TRSC_DT":"2013-10-18","EXCTN_EXEC_DT":"2013-11-25 09:21:09","SPLR_CO_NM":"�� E ������","TOTL_AMT":"500","USE_VAT_AMT":"45","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2014-01-10","EXCTN_EXEC_DT":"2013-12-10 11:10:12","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"11�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"ī��","TRSC_DT":"2013-12-02","EXCTN_EXEC_DT":"2013-12-23 15:47:26","SPLR_CO_NM":"�� D ������","TOTL_AMT":"9060","USE_VAT_AMT":"823","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"�Ʒú�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2014-02-10","EXCTN_EXEC_DT":"2014-01-10 10:46:32","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"12�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","TRSC_DT":"2014-01-04","EXCTN_EXEC_DT":"2014-01-13 15:46:58","SPLR_CO_NM":"�� �� ��ü","TOTL_AMT":"300","USE_VAT_AMT":"27","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"H ����","RCV_ACCT_NO":"222-22-222222-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","PAYM_USAG":"������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2014-02-28","EXCTN_EXEC_DT":"2014-02-10 15:36:41","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"1�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0003","AGRMT_SEQ_NO":"G00000000000003","AGRMT_INST_ID":"10112249"};

        	
        //4. �������(���� ���� �Ϸ�)
        }else if("G00000000000004" == seqNo){
            
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","TRSC_DT":"2013-03-06","EXCTN_EXEC_DT":"2013-03-06 10:31:01","SPLR_CO_NM":"�� �� ��ü","TOTL_AMT":"1100","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"100","RCV_BNK_NM":"E ����","RCV_ACCT_NO":"555-55-555555-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","PAYM_USAG":"����Ժ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-03-10","EXCTN_EXEC_DT":"2013-03-10 13:07:20","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"2�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-03-21","EXCTN_EXEC_DT":"2013-03-21 10:44:38","SPLR_CO_NM":"�� A ������","TOTL_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"1/4 ��������������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"ī��","TRSC_DT":"2013-03-25","EXCTN_EXEC_DT":"2013-03-25 14:52:47","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"220","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"20","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"���̳� ���ֺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","TRSC_DT":"2013-04-10","EXCTN_EXEC_DT":"2013-04-10 13:07:20","SPLR_CO_NM":"�� B ������","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"3�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-04-10","EXCTN_EXEC_DT":"2013-04-10 13:41:58","SPLR_CO_NM":"�� �� ��ü","TOTL_AMT":"100","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"9","RCV_BNK_NM":"B ����","RCV_ACCT_NO":"888-88-888888-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","PAYM_USAG":"������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"ī��","TRSC_DT":"2013-04-23","EXCTN_EXEC_DT":"2013-04-23 15:54:12","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"1100","USE_VAT_AMT":"100","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"100","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"����Ժ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-05-10","EXCTN_EXEC_DT":"2013-05-06 10:59:20","SPLR_CO_NM":"�� C ������","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"4�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"ī��","TRSC_DT":"2013-05-23","EXCTN_EXEC_DT":"2013-05-10 11:01:45","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"220","USE_VAT_AMT":"20","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"20","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"���̳� ���ֺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-06-04","EXCTN_EXEC_DT":"2013-05-23 16:32:11","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"2/4 ��������������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-06-10","EXCTN_EXEC_DT":"2013-06-10 12:12:56","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"5�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-07-08","EXCTN_EXEC_DT":"2013-07-08 16:02:09","SPLR_CO_NM":"�� �� ��ü","TOTL_AMT":"100","USE_VAT_AMT":"9","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"9","RCV_BNK_NM":"G ����","RCV_ACCT_NO":"777-77-777777-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","PAYM_USAG":"������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-07-10","EXCTN_EXEC_DT":"2013-07-10 10:54:37","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"6�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","TRSC_DT":"2013-07-22","EXCTN_EXEC_DT":"2013-07-22 17:26:25","SPLR_CO_NM":"�� �� ��ü","TOTL_AMT":"20000","USE_VAT_AMT":"1818","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"1818","RCV_BNK_NM":"C ����","RCV_ACCT_NO":"300-30-300000","RCV_ACCT_OWAC_NM":"�� �� ��ü","PAYM_USAG":"��ᱸ�Ժ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-08-09","EXCTN_EXEC_DT":"2013-08-02 09:37:25","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"7�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-09-03","EXCTN_EXEC_DT":"2013-08-09 09:58:01","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2250","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"3/4 ��������������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-09-10","EXCTN_EXEC_DT":"2013-09-10 10:15:21","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"8�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-09-30","EXCTN_EXEC_DT":"2013-09-30 17:52:50","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"10000","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"������Ȱ���","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-10-10","EXCTN_EXEC_DT":"2013-10-10 14:51:08","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"9�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","TRSC_DT":"2013-10-29","EXCTN_EXEC_DT":"2013-10-29 13:12:08","SPLR_CO_NM":"�� �� ��ü","TOTL_AMT":"15000","USE_VAT_AMT":"1363","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"1363","RCV_BNK_NM":"F ����","RCV_ACCT_NO":"999-99-999999-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","PAYM_USAG":"���ۺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-11-08","EXCTN_EXEC_DT":"2013-11-08 12:01:28","SPLR_CO_NM":"�� E ������","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"10�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"ī��","TRSC_DT":"2013-11-25","EXCTN_EXEC_DT":"2013-11-25 09:21:09","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"500","USE_VAT_AMT":"45","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"45","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-12-02","EXCTN_EXEC_DT":"2013-12-02 11:50;19","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2150","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"4/4 ��������������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2013-12-10","EXCTN_EXEC_DT":"2013-12-10 11:10:12","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"11 �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"ī��","TRSC_DT":"2013-12-23","EXCTN_EXEC_DT":"2013-12-23 15:47:26","SPLR_CO_NM":"�� D ������","TOTL_AMT":"9060","USE_VAT_AMT":"823","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"823","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"�Ʒú�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"C","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2014-01-10","EXCTN_EXEC_DT":"2014-01-10 10:46:32","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"12�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"���ڼ��ݰ�꼭","TRSC_DT":"2014-01-13","EXCTN_EXEC_DT":"2014-01-13 15:46:58","SPLR_CO_NM":"�� �� ��ü","TOTL_AMT":"300","USE_VAT_AMT":"27","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"27","RCV_BNK_NM":"H ����","RCV_ACCT_NO":"222-22-222222-0","RCV_ACCT_OWAC_NM":"�� �� ��ü","PAYM_USAG":"������","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"T","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
        	gridValue[cnt++] = {"TRSC_EVDC_DV_NM":"��Ÿ","TRSC_DT":"2014-02-10","EXCTN_EXEC_DT":"2014-02-10 15:36:41","SPLR_CO_NM":"�� RCMS","TOTL_AMT":"2500","USE_VAT_AMT":"0","RTRT_FIX_AMT":"0","VAT_PROC_RTRT_AMT":"0","RCV_BNK_NM":"A ����","RCV_ACCT_NO":"100-00-000000","RCV_ACCT_OWAC_NM":"�� RCMS","PAYM_USAG":"1�� �ΰǺ�","BUTR_ID":"D201312192251783","TRSC_EVDC_DV":"E","RCV_ACCT_BNK_CD":"003","PMS_ID":"G01","SBJT_ID":"TEST0004","AGRMT_SEQ_NO":"G00000000000004","AGRMT_INST_ID":"10112249"};
 
        }

                


    }finally{
        gridData = gridValue;    //��ȸ��� JSON �� ��������
        rMateGridSetData();  //rMateGrid ����
        
    }
}

function setData(seqNo){
    uf_proce_display_on();  //�ε���
    
    setTimeout(
            function(){
                try{
                    document.body.setCapture(); // 'wait'
                    document.body.style.cursor =    "wait";
                    //SetData(); //Insert   Grid
                    setGridData(seqNo); //Insert    Grid
                    document.body.style.cursor =    "auto";
                    document.body.releaseCapture(); //setCapture()_Next
                }finally{
                    reset_submit();
                    searchAlert();
                }
            }
            , 1000);   // 1���� ���� 1000 = 1��

}
function searchAlert(){
    if(!cnt>0){
        window.reset_submit(); window.jAlert('<!-- ���� start--><div id="popup_panel" style="z-index:999999;padding:0;margin:0;"><div class="error"><p class="error_text">�ڷᰡ �������� �ʽ��ϴ�. ����Ȯ�� �� �ٽ� �̿��� �ֽñ� �ٶ��ϴ�.[MBT99999]<br /><p class="error_bt"><input id="popup_ok" type="image" src="/images/bt/bt_ok.gif" alt="Ȯ��"></p></div></div><!-- ���� end -->', '�˸�');
    }
}
</script>

</body>
</html> 
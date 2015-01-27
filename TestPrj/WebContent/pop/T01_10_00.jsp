<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_10_00.jsp
 *   Description        : ���־��»���� �˾�
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ================================================================================
 *   2013.12.24                     ������             �����ۼ�
 * 
 *  @author 
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
    String RowIdx               = kr.go.rcms.web.util.SessionUtil.getRequestValue(request, "pRowIdx");  //���켱 > row index
%>

<title>���־��� ����� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">���־��� �����</p>
        </div>
        <!-- //head title// --> 
    </div>



<script type="text/javascript">
function uf_sbmtSplr(){
    var frm = document.frm;
    uf_proce_display_on();  //�ε���
    
    setTimeout(
            function(){
                    try{   
                        uf_proce_display_on(true);
                        //fn_url("/pop/T01_10_00_r.jsp","sendIfrmTree");
                        frm.action = "/pop/T01_10_00_r.jsp";
                        frm.target = "sendIfrmTree";
                        frm.submit();
                        
                    }finally{
                        reset_submit();
                    }
                
                }, 1000);   // 1���� ���� 1000 = 1��s
    return false;
}

function uf_cnclSplr(){
    var frm = document.frm;
    $('#SrchWd').val('');
    uf_proce_display_on();  //�ε���
    
    setTimeout(
            function(){
                    try{   
                        uf_proce_display_on(true);
                        //fn_url("/pop/T01_10_00_r.jsp","sendIfrmTree");
                        frm.action = "/pop/T01_10_00_r.jsp";
                        frm.target = "sendIfrmTree";
                        frm.submit();
                        
                    }finally{
                        reset_submit();
                    }
                
                }, 1000);   // 1���� ���� 1000 = 1��s
    return false;
}
</script>

<script type="text/javascript">

    //////////////////////////////////
    //�����ڵ� ���¹�ȣ return
    //////////////////////////////////
    function uf_Set(BzaqBzRegNo,BzaqCoNm,BzaqTpopNm,BzaqTpbzNm,BzaqReprNm,BzaqEnplcAdr,RcvAcctNo1,FncInstCd1,RcvAcctNo2,FncInstCd2){
        try{
            var frm = opener.document.frm;
            var ridx = "<%=RowIdx%>";
            if( ridx == "" || typeof frm.etc_SplrCoNm.length == 'undefined'){
                frm.etc_SplrCoNm.value = BzaqCoNm;          // ��ȣ(���θ�)
                frm.etc_SplrBzRegNo.value = BzaqBzRegNo.replace(/-/g,"");   // ����ڹ�ȣ
                frm.etc_SplrAdr.value = BzaqEnplcAdr;       // ������ּ�   
                frm.etc_SplrTpopNm.value = BzaqTpopNm;      // ����
                frm.etc_SplrTpbzNm.value = BzaqTpbzNm;      // ����
                frm.etc_SplrReprNm.value = BzaqReprNm ;     // ����(��ǥ��)
            }else{
                frm.etc_SplrCoNm[ridx].value = BzaqCoNm;            // ��ȣ(���θ�)
                frm.etc_SplrBzRegNo[ridx].value = BzaqBzRegNo.replace(/-/g,"");     // ����ڹ�ȣ
                frm.etc_SplrAdr[ridx].value = BzaqEnplcAdr;         // ������ּ�   
                frm.etc_SplrTpopNm[ridx].value = BzaqTpopNm;        // ����
                frm.etc_SplrTpbzNm[ridx].value = BzaqTpbzNm;        // ����
                frm.etc_SplrReprNm[ridx].value = BzaqReprNm ;       // ����(��ǥ��)              
                
            }

            window.close();
        }catch(e){
        }
    }

    //////////////////////////////////
    //��ȸ
    //////////////////////////////////
    function uf_search(){
        var frm = document.frm;
        
        uf_proce_display_on();  //�ε���
        
        setTimeout(
                function(){
                        try{   
                        	uf_proce_display_on(true);
                            //fn_url("/pop/T01_10_00_r.jsp","sendIfrmTree");
                            frm.action = "/pop/T01_10_00_r.jsp";
                            frm.target = "sendIfrmTree";
                            frm.submit();
                            
                        }finally{
                            reset_submit();
                        }
                    
                    }, 1000);   // 1���� ���� 1000 = 1��s
                    
                    
    }

    //////////////////////////////////
    //�Աݰ��°��� �ٷΰ���
    //////////////////////////////////
    function uf_create(){
    	alert("�ǽ�ȯ�濡���� ���������ʴ� ����Դϴ�.");
        return;
        
    }

</script>
<div id="body">
<!-- content start -->
  <div id="content">
    <div class="t20"></div>
    <div class="pop_line_gbox01">
      <div class="pop_line_gboxc01">
        <ul>
          <li>����ڸ� Ŭ���Ͻø� �ش� ������� ������ �׸� �ڵ��Էµ˴ϴ�.</li>
          <li>���־��� ����ڴ� �������� �������� �ʰ�, �����(������)�� ���� �����մϴ�.</li>
        </ul>
      </div>
    </div>
    <div class="pop_action_bt ar"><a href="#" onclick="uf_create();" class="bt_action11-02" title="���־��� �Աݰ��°���"><span class="bt_sp">���־��� ����� ����</span></a> </div>
    <!-- �Աݰ��°��� start -->
    <div class="t20"></div>
    <!-- Ʈ���޴� �����Դϴ� -->
    <form name="frm" method="post">
    <div class="tree_box">
      <div class="tree_boxc">
        <div style="width:320px;height:260px; overflow:hidden;">
          <!-- �޴�Ʈ�� -->
          <div class="nav_tree">
            <!-- 1�� -->
            <div class="folder_box">
                <iframe name="sendIfrmTree" style="display:block;" frameborder="0" width="320" height="260" marginwidth="0" marginheight="0"></iframe>
            </div>
            <!-- //1�� -->
          </div>
          <!-- //�޴�Ʈ�� -->
        </div>
      </div>

    </div>
        <div style="padding:5px 0;text-align:right;width:365px;">
<input type="SrchWd" name="SrchWd" id="SrchWd" value="" class="inputl" size="25"/>
<a href="#dummy" onclick="uf_sbmtSplr(); return false;"><img src="/bt/bt_search_s.gif" alt="�˻�"/></a>
<a href="#dummy" onclick="uf_cnclSplr(); return false;"><img src="/bt/bt_cancel_s.gif" alt="���"/></a>
</div>
    </form>
    <!-- //�Աݰ��°��� end// -->
  </div>
  <!-- //content end// -->
</div>

<script type="text/javascript">
window.onload = function(){
    uf_search();
}   
</script>



<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 


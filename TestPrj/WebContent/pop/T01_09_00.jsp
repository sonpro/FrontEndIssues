<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_09_00.jsp
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

<title>���־��� �Աݰ��� &gt; RCMS �ǽð����տ���������ý��� s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">���־��� �Աݰ���</p>
        </div>
        <!-- //head title// --> 
    </div>



<script type="text/javascript">
function uf_sbmtAcct(){
    var frm = document.frm;
    uf_proce_display_on();  //�ε���
    
    setTimeout(
            function(){
                    try{   
                        frm.action = "/pop/T01_09_00_r.jsp"; 
                        frm.target = "sendIfrmTree";
                        frm.submit();
                        
                    }finally{
                        reset_submit();
                    }
                
                }, 1000);   // 1���� ���� 1000 = 1��s
    return false;
}

function uf_cnclAcct(){
    var frm = document.frm;
    $('#SrchWd').val('');
    uf_proce_display_on();  //�ε���
    
    setTimeout(
            function(){
                    try{   
                        frm.action = "/pop/T01_09_00_r.jsp"; 
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
    function uf_Set(bnk,acc,telno){
        var ridx = "<%=RowIdx%>";
        
        try{
            if( ridx == "" ){
                for(var i=0;i<opener.frm.RcvBnkCd.length;i++){
                    if(bnk == opener.frm.RcvBnkCd.options[i].value){
                        opener.frm.RcvBnkCd.options[i].selected  = true;
                    }
                }
                opener.frm.RcvAcctNo.enc = "off";
                opener.frm.RcvAcctNo.value=acc;
                opener.frm.OwacNm.value= "";
                opener.frm.TelNo.value= telno;
            }else{

                eval('opener.frm.RcvBnkCd_'+ridx+'.value = "' + bnk + '"');
                eval('opener.frm.RcvAcctNo_'+ridx+'.value = "' + acc + '"');
                
                if( typeof opener.frm.OwacNm.length != 'undefined' ){
                    opener.frm.OwacNm[ridx].value="";
                    opener.frm.TelNo[ridx].value= telno;
                }else{
                    opener.frm.OwacNm.value="";
                    opener.frm.TelNo.value= telno;
                }
            }
            window.close();
        }catch(e){
            alert('���� : ' + e.message);
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
                            frm.action = "/pop/T01_09_00_r.jsp"; 
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
    }

</script>
<div id="body">
<form name="frm" method="post" onsubmit="return uf_sbmtAcct()">
  <!-- content start -->
  <div id="content">
    <div class="t20"></div>
    <div class="pop_line_gbox01">
      <div class="pop_line_gboxc01">
        <ul>
          <li>�׷���� Ŭ���Ͻø� �ش� �׷쳻�� ��ϵ� ���¸� Ȯ�� �Ͻ� �� �ֽ��ϴ�.</li>
          <li>�Է��ϰ����ϴ� ���¸� Ŭ���Ͻø� �Աݰ��¹�ȣ �׸� �ڵ��Է� �˴ϴ�.</li>
          <li>���־��� ���´� �������� �������� �ʰ�, �����(������)�� ���� �����մϴ�.</li>
        </ul>
      </div>
    </div>
    <div class="pop_action_bt ar"><a href="#" onclick="uf_create();" class="bt_action11-01" title="���־��� �Աݰ��°���"><span class="bt_sp">���־��� �Աݰ��°���</span></a> </div>
    <!-- �Աݰ��°��� start -->
    <div class="t20"></div>
    <!-- Ʈ���޴� �����Դϴ� -->
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
    <!-- //�Աݰ��°��� end// -->
        <div style="padding:5px 0;text-align:right;width:365px;">
<input type="SrchWd" name="SrchWd" id="SrchWd" value="" class="inputl" size="25"/>
<a href="#dummy" onclick="uf_sbmtAcct(); return false;"><img src="/bt/bt_search_s.gif" alt="�˻�"/></a>
<a href="#dummy" onclick="uf_cnclAcct(); return false;"><img src="/bt/bt_cancel_s.gif" alt="���"/></a>
</div>
  </div>
  <!-- //content end// -->
</form> 
</div>
<script type="text/javascript">
jQuery(document).ready(function(){
    uf_search();
}); 
</script>


<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 


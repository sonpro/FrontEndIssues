<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
*   Filename           : T41_05_00.jsp
 *   Description        : 이체비밀번호 등록
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ====================================================
 *   2013. 10. 29     				예기해        		
 *
 *  @author 예기해
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

<title>이체비밀번호 등록 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body class="line">
<ul id="accessibility">
    <li><a href="#header">주메뉴바로가기</a></li>
    <li><a href="#contaniner">컨텐츠바로가기</a></li>
    <li><a href="#footer">하단바로가기</a></li>
</ul>
<hr/>
<noscript><p id="warning_script">자바스크립트가 동작하지 않을 시 디자인이 정상적으로 보이지 않을 수 있습니다.</p></noscript>
<div id="wrapper">

    <!-- //header topMenu start// -->
    <%@ include file="/inc/topMenu.jsp" %>
    <!-- //header topMenu end// -->
    
    <!-- contaniner start -->
    <div id="contaniner">
        <!-- left start -->
        <div class="snb">
            <!-- left menu start -->
            




                    <div><img src="/images/pefo/sub_navt4.gif" alt="이용환경관리" /></div>
                    <div class="bg">
                        <div class="sub">


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="fn_url('/t04/t41/T41_08_00.jsp'); return false;" class="menu_txt_on">기본설정</a></div>

                                <ul>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_08_00.jsp'); return false;" class="menu_3dep">협약정보 확인</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_04_00.jsp'); return false;" class="menu_3dep">펌뱅킹 이용신청</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_03_00.jsp'); return false;" class="menu_3dep">과제별 권한 관리</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_05_00.jsp'); return false;" class="menu_3dep_on">이체비밀번호 등록</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_06_00.jsp'); return false;" class="menu_3dep">연구비카드사 등록</a></li>

                                    <li><a href="#" onclick="fn_url('/t04/t41/T41_07_00.jsp'); return false;" class="menu_3dep">연구비카드 과제 등록</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_txt">부가설정</a></div>

                                <ul>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">자주쓰는 사업자</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">자주쓰는 입금계좌</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">기관별 권한관리</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">지방비분리회계관리</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>


                            <div class="sub_bg">
                            
                                <div class="navbox"><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_txt">기관계좌관리</a></div>

                                <ul>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">인건비성 지급계좌 설정</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">자계좌이체용 계좌 설정</a></li>

                                    <li><a href="#" onclick="alert('실습환경에서는 지원하지 않는 메뉴입니다.'); return false;" class="menu_3dep">카드결제 지정계좌 설정</a></li>
                        
                                </ul>
                                <p class="t05 b05" style="height: 1px;"><a href="#"><img src="/images/pefo/sub_line.gif" alt=" " width="160" /></a></p>
                            </div>

                        </div>
                    </div>
                    <div><img src="/images/pefo/subm_bg2.gif" alt="" /></div>

            <!-- //left menu end// -->
            
        </div>
        <!-- //left end// -->
        
        
        

<script type="text/javascript">


	//////////////////////////////////
	//등록처리
	//////////////////////////////////
	function uf_create(){
		var frm = document.frm;

		//이전비밀번호 check
/* 		
		if(typeof frm.OldExctnPw1!="undefined"){
			
			if(frm.OldExctnPw1.value == ""){
				alert("이전비밀번호를 입력하세요");
				return false;
			}
		}
 */
		if(frm.ExctnPw1.value == ""){
			alert("사용비밀번호를 입력하세요.");
			return false;
		}
		if(frm.ExctnPw2.value == ""){
			alert("사용비밀번호확인란을 입력하세요.");
			return false;
		}
		

		if(frm.ExctnPw1.value != frm.ExctnPw2.value ){
			alert("입력하신 사용비밀번호가 일치하지 않습니다.");
			return;
		}
		
        if(!confirm("등록 하시겠습니까?")){return;}

        
        var url = "/pop/sign_popup.jsp?pageId=T41_05_00";
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
                        alert("등록되었습니다.");
                        fn_url("/t04/t41/T41_05_00.jsp");
                        }, 1000);   // 1초후 실행 1000 = 1초s
        }
        
        
        
        
	}

</script>

        <!-- content start -->
        <div id="content">
            <form name="frm" method="post">
            <!-- pagenav start -->

    
            <div class="pagenav">
            
                <p class="title"><img src="/images/pefo/u41_05_00_t.gif" alt="이체비밀번호 등록"/></p>
                
                <div class="nav">
                    <ul>
                        <li><img src="/images/common/home.gif" alt=" " /></li>
                       <li>이용환경관리</li>
                       <li><img src="/images/common/arr.gif" alt=" " />기본설정</li>
                       <li><img src="/images/common/arr.gif" alt=" " /><span class="location">이체비밀번호 등록</span></li>
						
                    </ul>
                </div>
            </div>                
            <!-- //pagenav end// -->
            <div class="t20"></div>
            <h3>기본정보</h3>      

            <!-- 이전비밀번호 start -->
<!--             
            <div class="t10 b15">
                <table width="704" border="0" cellspacing="0" cellpadding="0" summary="이전비밀번호" class="tbl_type02">
                <caption>이전비밀번호</caption>
                <colgroup>
                    <col width="20%" />
                    <col width="80%" />
                </colgroup>
                <tbody>
				<tr>
					<th scope="row"><label for="Password01">이전비밀번호</label></th>
					<td colspan="3" class="ll"><input type="password" class="inputl" name="OldExctnPw1" id="Password01" title="이전비밀번호" style="width:150px;" notnull enc="on" minlength="6" maxlength="15" datatype="NA" /></td>
				</tr>
				</tbody>
				</table>
            </div>
 -->            
            <!-- //이전비밀번호 end// --> 
        
            <!-- 사용자비밀번호 start -->
            <div class="t10">
                <table width="704" border="0" cellspacing="0" cellpadding="0" summary="이체비밀번호" class="tbl_type02">
                <caption>이체비밀번호</caption>
                <colgroup>
                    <col width="20%" />
                    <col width="80%" />
                </colgroup>
				<tbody>
				<tr>
					<th scope="row"><label for="Password02">이체비밀번호</label></th>
					<td colspan="3" class="ll"><input type="password" name="ExctnPw1" id="Password02" title="사용비밀번호" class="inputl" style="width:150px;"  notnull enc="on" minlength="6" maxlength="15" datatype="NA" /></td>
				</tr>
				<tr>
					<th scope="row"><label for="Password03">이체비밀번호 확인</label></th>
					<td colspan="3" class="ll"><input type="password" name="ExctnPw2" id="Password03" title="사용비밀번호 확인" class="inputl" style="width:150px;"  notnull enc="on" minlength="6" maxlength="15" datatype="NA" /></td>
				</tr>
				</tbody>
				</table>
            </div>
            <!-- //사용자비밀번호 end// --> 
            <!-- action bt start -->
            <div class="action_bt ar">
                <a href="#dummy" onclick="uf_create();" class="bt_action2-1" title="등록"><span class="bt_sp">등록</span></a>
            </div>
            <!-- //action bt end// --> 
            <!-- 주의사항 start -->
            <div class="guide_box">
				<p class="guide_boxt"></p>
				<div class="guide_boxc">
					<ul>
                        <li><span class="txt_or">이체비밀번호는 대소문자를 구분</span>합니다.</li>					
						<li>이체비밀번호는 6~15자리로 입력하시기 바랍니다.</li>
						<li>이체비밀번호 등록/수정 시 개인인증서 서명이 필요합니다.</li>
			           	<li>이체비밀번호는 연구비이체를 하기위해 이체권한을 가진 사용자가 설정하는 비밀번호입니다. </li>
        			   	<li>연구비 이체를 위해서는 반드시 등록해야 합니다. </li>
					</ul>    
				</div>
				<p class="guide_boxb"></p>
            </div>
            <!-- //주의사항 end// -->
            </form>
        </div>
        <!-- //content end// -->
  


    </div>
    <!-- //contaniner end//-->
    <div class="cb"></div>

    <!-- footer start -->
	<%@ include file="/inc/jspFooter.jsp" %>
    <!-- //footer end// -->
    
    <!-- 퀵메뉴 start -->
	<%@ include file="/inc/quickMenu.jsp" %>
    <!-- //퀵메뉴 end// -->

</div><!-- wrapper end -->


</body>
</html>
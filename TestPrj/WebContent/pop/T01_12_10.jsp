<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : T01_12_00.jsp
 *   Description        : 증빙가이드라인 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ==================================================================================
 *   2013.12.23                     예기해                 
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

<title>증빙가이드라인 &gt; RCMS 실시간통합연구비관리시스템 s-1 </title>
</head>
<body>
    <div id="head"> 
        <!-- head title -->
        <div class="title">
            <p class="pop_title">증빙가이드라인</p>
        </div>
        <!-- //head title// --> 
    </div>

        <div id="body">
            <!-- content start -->
            <div id="content">
                <!-- 탭버튼 -->
                <div class="t20 b10">
                <div class="tab_line"> 
     				<a href="T01_12_30.jsp" class="bt_tab_proof" title="2014년 5월 이후">2014년 5월 이후</a>
      				<a href="T01_12_10.jsp" class="bt_tab_fix" title="2014년 4월까지">2014년 4월까지</a> 
      				<a href="T01_12_00.jsp" class="bt_tab_proof" title="2013년 3월까지">2013년 3월까지</a>
      			</div> 
                </div>
                <!-- //탭버튼//-->
                <!-- (신)증빙가이드라인 가이드 start -->
                <div class="t20 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="(신)증빙가이드라인 증빙가이드" class="tbl_type04">
                    <caption>(신)증빙가이드라인 증빙가이드</caption>
                    <colgroup>
                        <col width="8%" />
                        <col width="14%" />
                        <col width="22%" />
                        <col width="28%" />
                        <col width="28%" />
                    </colgroup>
                    <thead>
                    <tr>
                        <th scope="col">비목</th>
                        <th scope="col">세목</th>
                        <th scope="col">세세목</th>
                        <th scope="col">사업비 지급 신청시 필요 증빙</th>
                        <th scope="col">사업비 사용 후 제출 증빙</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td rowspan="46" class="ac">직접비</td>
                        <td class="ac">인건비</td>
                        <td class="ac">인건비</td>
                        <td class="ac">지출결의서(품의서)</td>
                        <td>
                            <ul class="pop_tdlist">
                                <li>⊙ 참여연구원 현황표(연구원명, 참여기간, 참여율) 및 급여대장</li>
                                <li>⊙ 내부직원이 아닌 경우 계좌이체증빙</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td class="ac">학생인건비</td>
                        <td class="ac">학생인건비</td>
                        <td class="ac">지출결의서(품의서)</td>
                        <td class="ac">-</td>
                    </tr>
                    <tr>
                        <td rowspan="17" class="ac">연구시설·장비 및 재료비</td>
                        <td class="ac">연구시설·장비 구입비</td>
                        <td rowspan="17">
                            <ul class="pop_tdlist">
                                <li>⊙ 지출결의서(품의서)</li>
                                <li class="b">⊙ 집행영수증(전자세금계산서, 신용카드매출전표 등)</li>
                                <li>⊙ 거래명세서</li>
                                <li>⊙ Invoice(해외거래처 구입의 경우)</li>
                                <li>⊙ 계약서(계약서 작성에 의해 거래된 경우에 한하며, 계약당사자와 목적이 명시된 부분만 제출해도 무방함)</li>
                                <li class="txt_or">* 기반 과제인 경우만 해당시 사용 </li>
                            </ul>
                        </td>
                        <td rowspan="17">
                            <ul class="pop_tdlist">
                                <li>⊙ 수입신고필증 및 외국환거래계산서 또는 외국환송금내역서(해외거래처 구입의 경우)</li>
                                <li>⊙ 검수(설치)완료확인서</li>
                                <li>⊙ 취득가격(부가세 포함)이 3,000만원 이상인 연구장비 또는 취득가격이 3,000만원 미만이라도 공동활용이 가능한 연구장비는 국가과학기술종합정보시스템 장비등록서비스(nfec-input.ntis.go.kr)에서 발급받은 ‘국가연구시설장비정보등록증’ </li>
                                <li>⊙ 1억원 이상 고가 장비의 경우 장비도입심의위원회 승인 문서</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td class="ac">연구시설·장비 설치비</td>
                    </tr>
                    <tr>
                        <td class="ac">연구시설·장비 임차비</td>
                    </tr>
                    <tr>
                        <td class="ac">연구시설·장비 사용비</td>
                    </tr>
                    <tr>
                        <td class="ac">연구시설·장비 운영비</td>
                    </tr>
                    <tr>
                        <td class="ac">건축비<span class="txt_or">*</span></td>
                    </tr>
                    <tr>
                        <td class="ac">부지매입비<span class="txt_or">*</span></td>
                    </tr>
                    <tr>
                        <td class="ac">부지조성비<span class="txt_or">*</span></td>
                    </tr>
                    <tr>
                        <td class="ac">부지임차비<span class="txt_or">*</span></td>
                    </tr>
                    <tr>
                        <td class="ac">건물구입비<span class="txt_or">*</span></td>
                    </tr>
                    <tr>
                        <td class="ac">건물임차비<span class="txt_or">*</span></td>
                    </tr>
                    <tr>
                        <td class="ac">시약·재료 구입비 </td>
                    </tr>
                    <tr>
                        <td class="ac">시험분석료 </td>
                    </tr>
                    <tr>
                        <td class="ac">전산처리·관리비 </td>
                    </tr>
                    <tr>
                        <td class="ac">시작품제작비 </td>
                    </tr>
                    <tr>
                        <td class="ac">시제품제작비 </td>
                    </tr>
                    <tr>
                        <td class="ac">시험설비제작비 </td>
                    </tr>
                    <tr>
                        <td rowspan="21" class="ac">연구활동비</td>
                        <td class="ac">국외여비</td>
                        <td><b>[소속기관 자체기준에 따라 여비를 지급하는 경우] </b>
                            <ul class="pop_tdlist t05 b10">
                                <li> ⊙ 품의서(출장자, 기간, 장소, 목적, 여비산출내역, 세부일정(국외의 경우) 포함 필수) </li>
                                <li> ⊙ 집행영수증(자체 규정에서 실비 정산하는 경우) </li>
                            </ul>
                            <b> [소속기관 자체기준이 없는 경우] </b>
                            <ul class="pop_tdlist t05">
                                <li> ⊙ 품의서(출장자, 기간, 장소, 목적, 여비산출내역, 세부일정(국외의 경우) 포함 필수) </li>
                                <li> ⊙ 집행영수증(신용카드매출전표 등)</li>
                            </ul>
                        </td>
                        <td>
                            <ul class="pop_tdlist t05">
                                <li>⊙ 출장보고서 및 결재문서</li>
                                <li>⊙ 출입국사실을 확인할 수 있는 여권사증 또는 출입국에 관한 사실증명</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td class="ac">인쇄비</td>
                        <td rowspan="20"><p class="b10">⊙ 집행영수증(전자세금계산서, 신용카드매출전표 등)</p>
                            <p> ⊙ 품의서(사전품의에 의한 경우)</p>
                            - 복사비, 수수료, 공공요금, 도서문헌구입비는 품의서 제출 생략 가능
                            <p class="t10"> ⊙ 추가 증빙</p>
                            <ul class="pop_tdlist">
                                <li> - 공공요금 :  참여연구원의 참여율을 포함한 산출 내역서</li>
                                <li> - 학회참석 : 학회 내역증빙자료(학회 공고문 또는 학회 책자 표지 사본 등)</li>
                                <li> - 도서문헌구입, 사무용품, 비품구입 : 구입목록이 증빙될 수 있는 자료</li>
                                <li> - 인쇄비 : 인쇄책자의 표지 사본</li>
                                <li> - 세미나참가비 : 세미나 개요를 확인할 수 있는 자료</li>
                                <li> - 전문가활용비, 원고료, 번역료, 통역료, 속기료 등 : 특정 전문기관과 계약한 경우 계약서 또는 해당자의 소속 및 인적사항이 포함된 증빙자료</li>
                            </ul>
                        </td>
                        <td rowspan="20">⊙ 외국환거래계산서 또는 외국환송금내역서(외환거래시)</td>
                    </tr>
                    <tr>
                        <td class="ac">복사비</td>
                    </tr>
                    <tr>
                        <td class="ac">수수료</td>
                    </tr>
                    <tr>
                        <td class="ac">공공요금·세금</td>
                    </tr>
                    <tr>
                        <td class="ac">비품구입비</td>
                    </tr>
                    <tr>
                        <td class="ac">기술정보수집비</td>
                    </tr>
                    <tr>
                        <td class="ac">도서문헌구입비</td>
                    </tr>
                    <tr>
                        <td class="ac">교육훈련비</td>
                    </tr>
                    <tr>
                        <td class="ac">세미나개최비</td>
                    </tr>
                    <tr>
                        <td class="ac">기술도입비</td>
                    </tr>
                    <tr>
                        <td class="ac">특허정보조사비</td>
                    </tr>
                    <tr>
                        <td class="ac">정보DB 및 네트워크사용료</td>
                    </tr>
                    <tr>
                        <td class="ac">학회·세미나참가비</td>
                    </tr>
                    <tr>
                        <td class="ac">컨설팅비</td>
                    </tr>
                    <tr>
                        <td class="ac">전문가활용비</td>
                    </tr>
                    <tr>
                        <td class="ac">원고료</td>
                    </tr>
                    <tr>
                        <td class="ac">통역료</td>
                    </tr>
                    <tr>
                        <td class="ac">속기료</td>
                    </tr>
                    <tr>
                        <td class="ac">연구인력활용비</td>
                    </tr>
                    <tr>
                        <td class="ac">세부과제관리비</td>
                    </tr>
                    <tr>
                        <td rowspan="5" class="ac">연구과제추진비<span class="txt_or">*</span><br />(수행기관자체보관필요증빙)</td>
                        <td class="ac">국내여비(시내교통비)</td>
                        <td><b>[소속기관 자체기준에 따라 여비를 지급하는 경우]</b>
                            <ul class="pop_tdlist">
                                <li>⊙ 품의서(출장자, 기간, 장소, 목적, 여비산출내역, 세부일정(국외의 경우) 포함 필수)</li>
                                <li>⊙ 집행영수증(자체 규정에서 실비 정산하는 경우)</li>
                            </ul>
                            <b>[소속기관 자체기준이 없는 경우]</b>
                            <ul class="pop_tdlist">
                                <li>⊙ 품의서(출장자, 기간, 장소, 목적, 여비산출내역, 세부일정(국외의 경우) 포함 필수)</li>
                                <li>⊙ 집행영수증(신용카드매출전표 등)</li>
                            </ul>
                        </td>
                        <td class="ac">⊙ 근무지외 출장(국내여비) 중 숙박이 있는 출장의 경우 출장지 방문 증빙자료(숙박, 교통, 식대 중 하나 이상) </td>
                    </tr>
                    <tr>
                        <td class="ac">사무용품비</td>
                        <td rowspan="2">
                            <ul class="pop_tdlist">
                                <li>⊙ 집행영수증(전자세금계산서, 신용카드매출전표 등)</li>
                                <li>⊙ 지출결의서(품의서)</li>
                            </ul>
                        </td>
                        <td class="ac">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="ac">연구환경유지비</td>
                        <td class="ac">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="ac">회의비</td>
                        <td>
                            <ul class="pop_tdlist">
                                <li class="b">⊙ 집행영수증(전자세금계산서, 신용카드매출전표 등)</li>
                                <li>⊙ 품의서(사전품의에 의한 경우)</li>
                            </ul>
                        </td>
                        <td>
                            <ul class="pop_tdlist">
                                <li>⊙ 회의록(회의목적, 장소, 일시, 소속 및 직급 확인이 가능한 참석자명단, 회의내용 포함 필수)</li>
                                <li>⊙ 참석자 전원의 서명록</li>
                                <li>⊙ 해외에서 회의비 사용시 외국기관 직원 참석 서명록 (서명이 어려울 경우 명함 첨부)</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td class="ac">야근식대</td>
                        <td>
                            <ul class="pop_tdlist">
                                <li class="b">⊙ 집행영수증(전자세금계산서, 신용카드매출전표 등)</li>
                                <li>⊙ 초과근무 증빙자료 (부서장 또는 총괄책임자의 초과근무내역 결재서류 등)</li>
                            </ul>
                        </td>
                        <td class="ac">-</td>
                    </tr>
                    <tr>
                        <td class="ac">연구수당</td>
                        <td class="ac">연구수당</td>
                        <td>
                            <ul class="pop_tdlist">
                                <li class="b">⊙ 품의서</li>
                                <li>⊙ 참여연구원별 참여율 및 기여도를 반영해서 합리적으로 산정한 수행기관의 자체 평가서</li>
                            </ul>
                        </td>
                        <td>⊙ 연구원별 계좌이체증빙</td>
                    </tr>
                    <tr>
                        <td rowspan="2" class="ac">간접비</td>
                        <td rowspan="2" class="ac">간접비</td>
                        <td rowspan="2" class="ac">간접비</td>
                        <td rowspan="2"><b>[연구관리 전담부서가 있는 비영리기관]</b>
                            <ul class="pop_tdlist">
                                <li>⊙ 품의서 </li>
                            </ul>
                            <b>[그 외(영리기관 등)]</b>
                            <ul class="pop_tdlist">
                                <li class="b">⊙집행영수증(전자세금계산서, 신용카드매출전표 등)</li>
                                <li>⊙ 거래명세서)</li>
                                <li>⊙ 품의서(사전품의에 의한 경우)</li>
                            </ul>
                        </td>
                        <td><b>[연구관리 전담부서가 있는 비영리기관] </b>
                            <ul class="pop_tdlist">
                                <li> ⊙ 품의서 </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>[그 외(영리기관 등)]</b>
                            <ul class="pop_tdlist">
                                <li> ⊙ 외국환거래계산서 또는 외국환송금내역서(외환거래시)</li>
                            </ul>         
                        </td>
                    </tr>
                    </tbody>
                    </table>
                </div>
                <!-- //(신)증빙가이드라인 가이드 end// -->
            </div>
            <!-- //content end// -->
        </div>



<!-- //content end// -->


<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 

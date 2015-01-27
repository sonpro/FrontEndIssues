<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : P01_12_00.jsp
 *   Description        : 증빙가이드라인 팝업
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ==================================================================================
 *   2014. 7. 3                               유선진	                        최초등록
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
     				<a href="T01_12_30.jsp" class="bt_tab_fix" title="2014년 5월 이후">2014년 5월 이후</a>
      				<a href="T01_12_10.jsp" class="bt_tab_proof" title="2014년 4월까지">2014년 4월까지</a> 
      				<a href="T01_12_00.jsp" class="bt_tab_proof" title="2013년 3월까지">2013년 3월까지</a>
      			</div> 
                </div>
                <!-- //탭버튼//-->
                <!-- 2014년 5월 이후 증빙가이드라인 start -->
                <div class="t20 pop_wh">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="2014년 5월 이후 증빙가이드라인" class="tbl_type04">
                    <caption>2014년 5월 이후 증빙가이드라인</caption>
					<colgroup>
						<col/>
						<col/>
						<col/>
						<col/>
						<col/>
					</colgroup>
                    <thead>
					<tr>
						<th width="60"  scope="col">비목</th>
						<th width="100"  scope="col">세목</th>
						<th width="113"  colspan="2"  scope="col">세세목</th>
                        <th width="226"  scope="col">사업비 지급 신청시<br />필요 증빙</th>
						<th width="318"  
 scope="col">사업비 사용 후 제출 증빙</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td rowspan="61"class="ac">직접비</td>
						<td rowspan="2" class="ac">인건비</td>
						<td colspan="2" class="ac">내부인건비</td>
						<td rowspan="2" class="ac">지출결의서(품의서)</td>
						<td width="318" rowspan="2" 
>
                        		[공통]
                              <ul class="pop_tdlist">

								<li>⊙ 참여연구원 현황표 (연구원명, 참여기간, 참여율, 변경사항 등)</li> 
								<li>⊙ 급여명세서(월별)</li>
								<li>⊙ 계좌이체증명</li>
								<li>⊙ 외부참여연구원 기관장확인서(소속기관이 있는 외부참여연구원의 경우)
                                </li>
                       	  	  </ul>   
								[프리랜서의 경우 추가 제출 증빙]
							    <ul class="pop_tdlist">

								<li>⊙ 근로계약서</li>
								<li>⊙ 개인사업자 등록증</li>
   						  	  </ul>
    					</td>
					</tr>
					<tr>
					 	 <td colspan="2" class="ac">외부인건비</td>
					</tr>
					<tr>
						<td rowspan="2" class="ac">학생인건비</td>
						<td width="113" rowspan="2" class="ac">학생<br />인건비</td>
						<td width="113" class="ac">학생<br />인건비<br /> 통합<br />관리기관</td>
						<td rowspan="2" class="ac">지출결의서(품의서)</td>
						<td  
>
                            <ul class="pop_tdlist">

								<li>⊙ 없음 (단, 지출증명서류 5년간 보관)</li>
   						  	</ul>
                        </td>
					</tr>
					<tr>
                          <td class="ac">그 외<br /> 기관</td>
                          <td 
>
                        		<ul class="pop_tdlist">

								<li>⊙ 참여연구원 현황표(연구원명, 참여기간, 참여율, 변경사항 등) </li>
								<li>⊙ 계좌이체증명</li>
					    		</ul>
                      </td>
					</tr>
					<tr>
						<td rowspan="16" class="ac">연구시설·장비 및 재료비</td>
						<td colspan="2" class="ac">연구시설·장비 구입비</td>
						<td rowspan="16">
                          	  <ul class="pop_tdlist">

								<li>⊙ 지출결의서(품의서)</li>
								<li>⊙ 집행영수증(전자세금계산서, 신용카드매출전표 등)</li>
								<li>⊙ 거래명세서</li>
								<li>⊙ Invoice(해외거래처 구입의 경우)</li>
								<li>⊙ 외부제작을 의뢰한 경우 견적서 및 세금계산서</li>
								<li><span class="txt_or">* 기반과제만 해당시 사용</span></li>
    						</ul>
    					</td>
						<td rowspan="16" 
>
                        		<ul class="pop_tdlist">

								<li>⊙ 수입신고필증, 외국환거래계산서 또는 외국환송금내역서(해외구입의 경우)
								<li>⊙ 시제품·시작품·시험설비의 내부제작인 경우, 전체경비의 소요내역서를 구체적으로 기술
                                	(소요인건비 및 재료비 등)하여 첨부</li>
								<li>⊙ 계약서 작성에 의해 거래된 경우 계약서(계약서 작성에 의해 거래된 경우에 한하며, 
                                	계약당사자와 목적이 명시된 부분만 제출해도 무방함) 및 검수(설치) 완료 확인서</li>
								<li>⊙ 취득가격이 3,000만원 이상인 장비 또는 취득가격이 3,000만원 미만이라도 공동활용이 가능한 장비의 경우, 
                                	e-Tube 등록 확인서 또는 국가과학기술종합정보시스템 장비등록서비스(nfec-input.ntis.go.kr)에서
                                    발급받은 ‘국가연구시설장비등록증’</li>
								<li>⊙ 취득가격(부가세 포함)이 3,000만원 이상인 장비의 경우, 장비전문기관으로부터 통보받은 
                                	중앙장비심의위원회 “가결” 공문</li>
    							</ul>
    					</td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">연구시설·장비 설치비</td></tr>
					<tr>
    					<td colspan="2" class="ac">연구시설·장비 임차비</td></tr>
					<tr>
    					<td colspan="2" class="ac">연구시설·장비 사용비</td></tr>
					<tr>
    					<td colspan="2" class="ac">연구시설·장비 운영비</td></tr>
					<tr>
    					<td colspan="2" class="ac">건축비<span class="txt_or">*</span></td></tr>
					<tr>
    					<td colspan="2" class="ac">부지매입비<span class="txt_or">*</span></td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">부지조성비<span class="txt_or">*</span></td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">부지임차비<span class="txt_or">*</span></td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">건물구입비<span class="txt_or">*</span></td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">건물임차비<span class="txt_or">*</span></td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">시약·재료 구입비 </td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">전산처리·관리비 </td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">시작품제작비 </td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">시제품제작비 </td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">시험설비제작비 </td>
					</tr>
					<tr>
						<td rowspan="34" class="ac">연구활동비</td>
						<td colspan="2" rowspan="2" class="ac">국외여비</td>
						<td>
                      [여비지급 내부 기준이 있는 경우]
								 <ul class="pop_tdlist">

								<li> ⊙ 품의서(출장자, 기간, 장소, 목적, 여비산출내역, 세부일정 포함)</li>
								</ul>
					 </td>
						<td 
>
                          		<ul class="pop_tdlist">

								<li>⊙ 내부 여비 규정</li>
								<li>⊙ 내부결재를 받은 출장결과보고서</li>
								<li>⊙ 계좌이체증명(자계좌이체 후 해당 연구원에게 해외출장비 지급의 경우) 또는 카드매출전표</li>
    							</ul>
    					</td>
					</tr>
					<tr>
					  	  <td> [여비지급 내부 기준이 없는 경우]
								<ul class="pop_tdlist">

								<li> ⊙ 품의서(출장자, 기간, 장소, 목적, 여비산출내역, 세부일정 포함)</li>
								</ul>
                          </td>
					 	 <td 
>   
                         		<ul class="pop_tdlist">

								<li>⊙ 내부결재를 받은 출장결과보고서</li>
								<li>⊙ 계좌이체증명(자계좌이체 후 해당 연구원에게 해외출장비 지급의 경우) 또는 카드매출전표</li>
								<li>⊙ 출입국사실을 확인할 수 있는 여권사본 또는 출입국에 관한 사실증명</li>
    							</ul>
                      </td>
					  </tr>
					<tr>
						<td colspan="2" class="ac">인쇄비</td>
						<td rowspan="7">
								<ul class="pop_tdlist">

								<li>⊙ 품의서(사전품의에 의한 경우)
										 - 복사비, 수수료, 공공요금은 품의서 제출 생략 가능</li>
								<li>⊙ 집행영수증(전자세금계산서, 신용카드매출전표등 해당되는 경우)</li>
								</ul>
						</td>
						<td rowspan="7" 
> 		
								<ul class="pop_tdlist">

								<li>⊙ 인쇄비는 인쇄책자의 표지 사본</li>
								<li>⊙ 공공요금은 참여연구원의 참여율을 포함하여산정한 내역</li>
								<li>⊙ 자계좌 이체 후 사업비를 실집행하는 경우, 해당 거래처로의 계좌이체증명 
                                (해당 세세목은 별표2. RCMS 자계좌이체 허용 기준 참조)</li>
						 		</ul>
                   	  </td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">복사비</td>
   					  </tr>
					<tr>
    					<td colspan="2" class="ac">인화비</td>
   					  </tr>
					<tr>
    					<td colspan="2" class="ac">슬라이드 제작비</td>
   					  </tr>
					<tr>
    					<td colspan="2" class="ac">공공요금</td>
   					  </tr>
					<tr>
    					<td colspan="2" class="ac">제세공과금</td>
   					  </tr>
					<tr>
    					<td colspan="2" class="ac">수수료</td>
   					  </tr>
					<tr>
    					<td colspan="2" class="ac">전문가활용비<br/>
                        (특허전문가활용비 포함)</td>
    					<td>
                          		<ul class="pop_tdlist">

								<li>⊙ 품의서(전문가 인적사항과 계약관계가 명시된 문서 첨부)</li>
								</ul>
                   	  </td>
    					<td 
>  
                         			<ul class="pop_tdlist">

                                    <li>⊙ 자문내역이 포함된 전문가 자문확인서</li>
                                	<li>⊙ 계좌이체증명(자계좌이체 후 해당연구원에게 전문가활용비 지급의 경우)</li>
									</ul></td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">국내외 교육훈련비</td>
    					<td>  
                    			 <ul class="pop_tdlist">

								<li>⊙ 품의서(교육목적, 내용, 장소, 일시, 비용, 교육참가자 포함 필수)</li>
								<li>⊙ 집행영수증(전자세금계산서, 신용카드매출전표등 해당되는 경우)</li>
						</ul>
                      </td>
    				  <td 
>  
                            	<ul class="pop_tdlist">

								<li>⊙ 교육기관 발급 교육비수납영수증</li>
								<li>⊙ 교육수료증(필요시)</li>
								<li>⊙ 외국환거래계산서 또는 외국환송금내역서(외환거래시)
                                </li>
								</ul>
                      </td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">기술정보수집비</td>
    					<td rowspan="5">  
                            	<ul class="pop_tdlist">

								<li>⊙ 품의서(계약단가가 포함된 외부기관 또는 해당자와 체결한 계약서 첨부)</li>
								<li>⊙ 집행영수증(전자세금계산서, 신용카드매출전표 등 해당되는 경우)</li>
                                </ul></td>
    					<td rowspan="5" 
>    
                             	<ul class="pop_tdlist">

								<li>⊙ 전문가의 서비스 결과를 확인할 수 있는 결과보고서</li>
								</ul></td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">특허/표준정보조사비</td>
   					  </tr>
					<tr>
    					<td colspan="2" class="ac">원고료</td>
   					  </tr>
					<tr>
    					<td colspan="2" class="ac">통역료</td>
   					  </tr>
					<tr>
    					<td colspan="2" class="ac">속기료</td>
   					  </tr>
					<tr>
    					<td colspan="2" class="ac">기술도입비</td>
    					<td>     
                            	<ul class="pop_tdlist">

                       			 <li>⊙ 품의서(기술도입계약서 첨부)</li>
                       			 <li>⊙ 집행영수증(전자세금계산서)</li>
               			  </ul>
                        </td>
    					<td 
>  
                          		<ul class="pop_tdlist">

                            	<li>⊙ 기술검수조서</li>
                            	</ul>
                        </td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">시험·분석·검사비<br />/임상시험비</td>
    					<td>      
                       		<ul class="pop_tdlist">

                            <li>⊙ 품의서(해당시 계약단가가 포함된 외부기관 또는 해당자와 체결한 계약서 첨부)</li>
                            <li>⊙ 집행영수증(전자세금계산서, 신용카드매출전표 등 해당되는 경우)</li>
                         	</ul>
                   	  </td>
    					<td 
>    
                         	<ul class="pop_tdlist">

                            <li>⊙ 시험·분석·검사결과서</li>
                            <li>⊙ 임상시험결과서</li>
                            </ul>
                      </td>
					</tr>
					<tr>
    					<td colspan="2" class="ac" width="113">회의 및 교육 세미나 개최비<br/>
                        (외부 강사료 포함)*식대, 다과비는 연구과제추진비에서 사용</td>
    					<td>    
                        	<ul class="pop_tdlist">

                            <li>⊙ 품의서(회의 및 교육일시, 장소, 참석사 소속 및 성명, 목적, 회의 및 교육 내용 등 포함)</li>
                            <li>⊙ 집행영수증(전자세금계산서, 신용카드매출전표 등 해당되는 경우)</li>
                          </ul>
                      </td>
    				<td 
>  
                    	  	 <ul class="pop_tdlist">

                            <li>⊙ 강사료는 기관 내부의 별도 비용 산정기준이 있을 경우, 해당 내부 기준문서와 계좌이체증명</li>
                            </ul></td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">학회·세미나 참가비<br />(논문 게재 포함)</td>
    					<td>   
                        	<ul class="pop_tdlist">

                            <li>⊙ 품의서(학회 및 세미나일시, 장소, 참석사 소속 및 성명, 목적, 학회 및 세미나 내용 등 포함)</li>
                            <li>⊙ 집행영수증(전자세금계산서, 신용카드매출전표 등 해당되는 경우)</li>
                            </ul></td>
    				<td 
>     
                            <ul class="pop_tdlist">

                            <li>⊙ 학회·세미나 등록 영수증</li>
                            <li>⊙ 논문게재의 경우, 논문명, 학술지명칭, 발행국가, SCI여부, 게재 연월일, 권호, 저자명, 
                            시작 및 끝페이지가 표시되어 있는 관련 서류</li>
                            </ul></td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">도서·문헌구입비</td>
    					<td rowspan="14">
                           <ul class="pop_tdlist">

                            <li>⊙ 품의서(외부기관과 계약에 의해 집행하는 경우에는 계약서 첨부)</li> 
                            <li>⊙ 집행영수증(전자세금계산서, 신용카드매출전표 등 해당되는 경우)</li>
                          </ul>
                          <span class="txt_or"> * 사업별 특성에 따라 해당 세세목의 사용이 관련규정, 사업공고 등으로 해당 전담기관이 별도로 인정하는 경우에 한하여 사용 가능</span>
                            
                      </td>
    					<td rowspan="14" 
>  
                          <ul class="pop_tdlist">

                            <li>도서<span class="ac">&middot;</span>문헌구입비는 구입 내역이 증빙될 수 있는 자료(거래명세서 등)</li>
                        
                          </ul>
                              <span class="txt_or"> * 사업별 특성과 사용 목적에 따라 적합하게 사용되었음을 증빙할 수 있는 자료 (해당 전담기관이 별도로 요구하는 증빙이 있을 경우에는, 해당 전담기관의 안내를 받아 증빙 필수 등록)</span>
                        </td>
					</tr>
					<tr>
    					<td colspan="2" class="ac">정보 DB 및 네트워크사용료</td>
   					  </tr>
					<tr>
					  <td colspan="2" class="ac">창의활동비<span class="txt_or">*</span></td>
					  </tr>
					<tr>
					  <td colspan="2" class="ac">사업화전략 및 컨설팅비<span class="txt_or">*</span></td>
					  </tr>
					<tr>
					  <td colspan="2" class="ac">디자인 정보조사&middot;개발<br /> 및 컨설팅비<span class="txt_or">*</span></td>
					  </tr>
					<tr>
					  <td colspan="2" class="ac">연구인력활용비<span class="txt_or">*</span></td>
					  </tr>
					<tr>
					  <td colspan="2" class="ac">사업관리비<span class="txt_or">*</span></td>
					  </tr>
					<tr>
					  <td colspan="2" class="ac">인력양성비<span class="txt_or">*</span></td>
					  </tr>
					<tr>
					  <td colspan="2" class="ac">기업지원비<span class="txt_or">*</span></td>
					  </tr>
					<tr>
					  <td colspan="2" class="ac">연계활동비<span class="txt_or">*</span></td>
					  </tr>
					<tr>
					  <td colspan="2" class="ac">마케팅홍보비<span class="txt_or">*</span></td>
					  </tr>
					<tr>
					  <td colspan="2" class="ac">네트워크운영비<span class="txt_or">*</span></td>
					  </tr>
					<tr>
					  <td colspan="2" class="ac">협의회운영비<span class="txt_or">*</span></td>
					  </tr>
					<tr>
					  <td colspan="2" class="ac">소프트웨어<br />품질검증비<br />품질컨설팅비</td>
					  </tr>
					<tr>
						<td rowspan="6" class="ac">연구과제<br />추진비<span class="txt_or">*</span></td>
						<td colspan="2" class="ac">국내여비(시내교통비)</td>
						<td rowspan="6">[분기별 일괄이체 시]
						 <ul class="pop_tdlist">

								<li>⊙ 없음</li>
						  </ul>
							[사용건별 이체 시]
						<ul class="pop_tdlist">

								<li>⊙ 집행영수증(전자세금계산서, 신용카드매출전표, 기타)</li>
						  </ul>
        				</td>
						<td rowspan="6" 
> [분기별 일괄이체 시]
								<ul class="pop_tdlist">

								<li>⊙ 연구과제추진비 사용목록 서식</li>
								</ul>
									[사용건별 이체 시]
								<ul class="pop_tdlist">

								<li>⊙ 없음</li>
								</ul></td>
					</tr>
					<tr>
						<td colspan="2" class="ac">사무용품비</td>
					  </tr>
					<tr>
						<td colspan="2" class="ac">비품구입비</td>
					  </tr>
					<tr>
						<td colspan="2" class="ac">연구환경유지비</td>
					  </tr>
					<tr>
    					<td colspan="2" class="ac">회의비</td>
   					  </tr>
					<tr>
					  <td colspan="2" class="ac">야근식대</td>
					  </tr>
					<tr>
						<td class="ac">연구수당</td>
						<td colspan="2" class="ac">연구수당</td>
						<td>
								<ul class="pop_tdlist">

								<li>⊙ 품의서</li>
								<li>⊙ 참여연구원에 대한 기여도 평가서류(평가기준, 방법이 포함된 평가계획 및 결과 등)</li>
								</ul>
						</td>
						<td 
>  ⊙ 연구원별 계좌이체증빙</td>
					</tr>
					<tr>
						<td class="ac">간접비</td>
						<td class="ac">간접비</td>
						<td colspan="2" class="ac">간접비</td>
						<td>[연구관리 전담부서가 있는 비영리기관]
							<ul class="pop_tdlist">

    							<li>⊙ 품의서 </li>
							</ul>
							[그 밖의 기관]
							<ul class="pop_tdlist">

								<li>⊙ 품의서<br />(사전품의에 의한 경우)</li>
								<li>⊙ 집행영수증(전자세금계산서, 신용카드매출전표 등)</li>
							</ul>
                        </td>
						<td 
>  
                       			[연구관리 전담부서가 있는 비영리기관] 
								<ul class="pop_tdlist">

    								<li> ⊙ 없음 </li>
								</ul>
						  
    						[그 밖의 기관]
    	   							<ul class="pop_tdlist">

        						<li> ⊙ 없음<br/>(단, 외환거래시 외국환거래계산서 또는 외국환송금내역서)
        						</li>
    						</ul>         
						</td>
					</tr>
					</tbody>
                    </table>
                     <!-- 증빙구분 start -->
    <div class="t20"></div>
    <div class="pop_line_gbox">
	  <div class="pop_line_gboxc">
      <ul>
        <li>*상기 나열한 필요 증빙 외에 전담기관(또는 위탁정산기관)에서 사업비정산(상시점검)시 추가로 필요하다고 요청하는 증빙이 있을 수 있으며 이때 수행기관은 성실히 제출하여야 함</li>
        <li>*연구과제추진비는 아래의 두가지 방법중 하나를 선택하여 사용가능함</li>
    
      </ul>
      <p class="t10">
  1. 연구과제추진비를 분기별로 사업비 계좌로 일괄 이체 받아 관련규정(공통운영요령, 사업비요령, 평가관리지침) 및 동 가이드라인에 의거하여 해당 사업비 용도로 적정하게 사용하는 경우, RCMS 시스템에 안내되어 있는 [연구과제추진비 사용목록 서식]을 사용 증빙으로 등록</p>
      <p class="txt_or"> ☞ 수행기관은 분기별로 신청한 연구과제추진비를 사업비 계좌로 일괄 이체 받은 후 관련 R&D규정 및 수행기관 내부 규정에 따라, 타 용도로 사용하지 말고 반드시 주어진 사업 용도로만 연구과제추진비를 사용하여야 함</p>    
          <p class="t10">
  2. 연구과제추진비를 사용건별로 RCMS에 등록하여 사용하는 경우, 증빙구분 영수증(세금계산서, 카드, 기타)만 등록</p>
      <p class="txt_or"> * 연구과제추진비 세부증빙은 수행기관 자체적으로 보관한다. 단 전담기관 또는 위탁정산기관의 요청이 있을시 아래의 세부 증빙을 성실히 제출하여야 함	</p>  
	  </div>
    </div>
    <!-- //증빙구분 end// -->   



   
         <div class="t20"></div>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="2014년 5월 이후 증빙가이드라인" class="tbl_type04">
        
        
        			<colgroup>
						<col/>
						<col/>
						<col/>
						<col/>
					</colgroup>
        
        
        
     				 <tr>
						<th width="60px"  scope="col">비목</th>
						<th width="100px"  scope="col">세목</th>
						<th width="113px"  scope="col">세세목</th>                     
						<th width="477"  
 scope="col">세부증빙 요구시 제출 서류</th>
					</tr>
       <tr>
         <td rowspan="6" class="ac">직접비</td>
         <td rowspan="6" class="ac">연구과제추진비
									(수행기관자체보관필요증빙)</td>
         <td class="ac">국내여비(시내교통비)</td>
        <td 
>  
    				<ul class="pop_tdlist">

        						<li> ⊙ 품의서(출장자, 기간, 장소, 목적, 여비산출내역 등)
        						</li>
                                <li> ⊙ 집행영수증(신용카드매출전표 등)
        						</li>
                                <li> ⊙ 자계좌 이체 후 사업비를 실집행하는 경우, 해당 여비의 
                                     계좌이체증명
        						</li>
                                <li> ⊙ 근무지외 출장(국내여비) 중 숙박이 있는 출장의 경우 출장지 
                                     방문 증빙자료(숙박, 교통, 식대 중 하나 이상)
        						</li>
                                <li> ⊙ 관련 내부규정(소속기관 자체기준이 있는 경우)
        						</li>
    				</ul>   
        </td>
       </tr>
       <tr>
         <td class="ac">사무용품비</td>
         <td rowspan="3" 
>  
    				<ul class="pop_tdlist">

        						<li> ⊙ 품의서(사용목적 등)
        						</li>
                                <li> ⊙ 자계좌 이체 후 사업비를 실집행하는 경우, 해당 계좌이체증명
 (해당 세세목은 별표2. RCMS 자계좌이체 허용 기준 참조)
        						</li>
                                <li> ⊙ 집행영수증(전자세금계산서, 신용카드매출전표 등)
        						</li>
                                <li> ⊙ 거래명세서
        						</li>
                                <li> ⊙ 관련 내부규정(소속기관 자체기준을 적용하여 사업비를 사용한 경우)
        						</li>
    				</ul>   
        </td>
       </tr>
       <tr>
         <td class="ac">비품구입비</td>
         </tr>
       <tr>
         <td class="ac">연구환경유지비</td>
         </tr>
       <tr>
         <td class="ac">회의비</td>
          <td 
>  
    				<ul class="pop_tdlist">

        						<li> ⊙ 품의서(사전품의에 의한 경우)
        						</li>
                                <li> ⊙ 집행영수증(전자세금계산서, 신용카드매출전표 등)
        						</li>
                                <li> ⊙ 회의록(회의목적, 장소, 일시, 소속 및 직급 확인이 가능한 참석자명단, 회의내용, 참석자 전원의 서명록 포함 필수)
        						</li>
                                <li> ⊙ 해외에서 회의비 사용시 외국기관 직원 참석 서명록 (서명이 어려울 경우 명함 첨부. 단 연구활동비의 국외여비와 중복지급 불가)
        						</li>
                                <li> ⊙ 관련 내부규정(소속기관 자체기준을 적용하여 사업비를 사용한 경우)
        						</li>
    				</ul>   
        </td>       </tr>
       <tr>
         <td class="ac">야근식대</td>
         <td 
>  
    				<ul class="pop_tdlist">

        						<li> ⊙ 집행영수증(전자세금계산서, 신용카드매출전표 등)
        						</li>
                                <li> ⊙ 초과근무 증빙자료 (부서장 또는 총괄책임자의 초과근무내역 결재서류, 초과근무내역 확인 서류 등) 등)
        						</li>
                                <li> ⊙ 관련 내부규정(소속기관 자체기준을 적용하여 사업비를 사용한 경우)
        						</li>
                          
    				</ul>   
        </td>
       </tr>

					</tbody>
					</table>
                </div>
                <!-- //2014년 5월 이후 증빙가이드라인end// -->
            <!-- //content end// -->

	</div>
</div>

<!-- //content end// -->

<%@ include file="/inc/jspFooter_popup.jsp" %>

</body>
</html> 

<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : set_date_btn.jsp
 *   Description        : 일자 선택 버튼 INCLUDE FILE 
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ==================================================================
 *   2012. 11. 13.                  ljw                 최초작성 
 *
 *  @author 
 *  @Since  
 *  @Version 1.0
 * 
 */
 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="kr.go.rcms.web.util.DateUtil" %>
<a href="#dummy" onclick="caldatediff(document.frm, '20100101', '<%=DateUtil.getDate("YYYYMMDD")%>'); return false;"><img src="/images/bt/bt_allday.gif" alt="전체" class="vc" /></a>
<a href="#dummy" onclick="caldatediff(document.frm, '<%=DateUtil.getDate("YYYYMMDD")%>', '<%=DateUtil.getDate("YYYYMMDD")%>'); return false;"><img src="/images/bt/bt_day.gif" alt="당일" class="vc" /></a>
<a href="#dummy" onclick="caldatediff(document.frm, '<%=DateUtil.getDate(DateUtil.getDate("YYYYMMDD", 'W', -1),"YYYYMMDD",'D',1)%>', '<%=DateUtil.getDate("YYYYMMDD")%>'); return false;"><img src="/images/bt/bt_week.gif"   alt="1주일" class="vc" /></a>
<a href="#dummy" onclick="caldatediff(document.frm, '<%=DateUtil.getDate(DateUtil.getDate("YYYYMMDD", 'M', -1),"YYYYMMDD",'D',1)%>', '<%=DateUtil.getDate("YYYYMMDD")%>'); return false;"><img src="/images/bt/bt_1month.gif" alt="1개월" class="vc" /></a>
<a href="#dummy" onclick="caldatediff(document.frm, '<%=DateUtil.getDate(DateUtil.getDate("YYYYMMDD", 'M', -3),"YYYYMMDD",'D',1)%>', '<%=DateUtil.getDate("YYYYMMDD")%>'); return false;"><img src="/images/bt/bt_month.gif"  alt="3개월" class="vc" /></a>
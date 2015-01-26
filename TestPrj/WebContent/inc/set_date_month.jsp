<%--
/**
 *
 *   지경부 RCMS개발구축 프로젝트
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : set_date_month.jsp
 *   Description        : 일자 시작 ~ 끝 조회조건 INCLUDE FILE 
 *                        (초기일자 1개월 전)
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
<input type="text" name="InqStrDt" id="InqStrDt" style="width:70px;" class="inputdate vc" value="<%=DateUtil.getDate(DateUtil.getDate("YYYYMMDD", 'M', -1),"YYYYMMDD",'D',1)%>" format="date" maxlength="8" datatype="date" />
<a href="#dummy" onclick="openCalendar('frm.InqStrDt'); return false;"><img src="/bt/bt_calendar.gif" alt="달력보기" class="vc" /></a>
<span class="vb">~</span>
<input type="text" name="InqEndDt" id="InqEndDt" style="width:70px;" class="inputdate vc" value="<%=DateUtil.getDateSimple()%>" format="date" maxlength="8"  datatype="date" />
<a href="#dummy" onclick="openCalendar('frm.InqEndDt'); return false;"><img src="/bt/bt_calendar.gif" alt="달력보기" class="vc" /></a>
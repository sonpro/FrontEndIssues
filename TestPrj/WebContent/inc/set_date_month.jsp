<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : set_date_month.jsp
 *   Description        : ���� ���� ~ �� ��ȸ���� INCLUDE FILE 
 *                        (�ʱ����� 1���� ��)
 *
 *   Modification  Information
 *
 *   Mode date                      Modifier            Description
 *   ==================================================================
 *   2012. 11. 13.                  ljw                 �����ۼ� 
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
<a href="#dummy" onclick="openCalendar('frm.InqStrDt'); return false;"><img src="/bt/bt_calendar.gif" alt="�޷º���" class="vc" /></a>
<span class="vb">~</span>
<input type="text" name="InqEndDt" id="InqEndDt" style="width:70px;" class="inputdate vc" value="<%=DateUtil.getDateSimple()%>" format="date" maxlength="8"  datatype="date" />
<a href="#dummy" onclick="openCalendar('frm.InqEndDt'); return false;"><img src="/bt/bt_calendar.gif" alt="�޷º���" class="vc" /></a>
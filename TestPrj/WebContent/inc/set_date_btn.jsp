<%--
/**
 *
 *   ����� RCMS���߱��� ������Ʈ
 *   COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 *   Filename           : set_date_btn.jsp
 *   Description        : ���� ���� ��ư INCLUDE FILE 
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
<a href="#dummy" onclick="caldatediff(document.frm, '20100101', '<%=DateUtil.getDate("YYYYMMDD")%>'); return false;"><img src="/images/bt/bt_allday.gif" alt="��ü" class="vc" /></a>
<a href="#dummy" onclick="caldatediff(document.frm, '<%=DateUtil.getDate("YYYYMMDD")%>', '<%=DateUtil.getDate("YYYYMMDD")%>'); return false;"><img src="/images/bt/bt_day.gif" alt="����" class="vc" /></a>
<a href="#dummy" onclick="caldatediff(document.frm, '<%=DateUtil.getDate(DateUtil.getDate("YYYYMMDD", 'W', -1),"YYYYMMDD",'D',1)%>', '<%=DateUtil.getDate("YYYYMMDD")%>'); return false;"><img src="/images/bt/bt_week.gif"   alt="1����" class="vc" /></a>
<a href="#dummy" onclick="caldatediff(document.frm, '<%=DateUtil.getDate(DateUtil.getDate("YYYYMMDD", 'M', -1),"YYYYMMDD",'D',1)%>', '<%=DateUtil.getDate("YYYYMMDD")%>'); return false;"><img src="/images/bt/bt_1month.gif" alt="1����" class="vc" /></a>
<a href="#dummy" onclick="caldatediff(document.frm, '<%=DateUtil.getDate(DateUtil.getDate("YYYYMMDD", 'M', -3),"YYYYMMDD",'D',1)%>', '<%=DateUtil.getDate("YYYYMMDD")%>'); return false;"><img src="/images/bt/bt_month.gif"  alt="3����" class="vc" /></a>
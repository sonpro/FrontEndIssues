package kr.go.rcms.web.util;

import java.util.HashMap;

public class SessionUtil {
	
	/**
	 * request.getParameter() ����� ��. value�� null�� ��� ���ϵ� default value�� ������ �� ����.
	 * @param request request ��ü
	 * @param name request key
	 * @param def key�� �ش�� value�� null �� ��� def�� ����
	 * @param bHtml html ��뿩��
	 * @return String key�� �ش�� value
	 */
	public static String getRequestValue(javax.servlet.http.HttpServletRequest request, String name, String def, boolean bHtml) {
	
		String reReqValue = "";
		reReqValue = request.getParameter(name);
		if(reReqValue==null){
			reReqValue = def;
		}else{
			if(!bHtml){
				reReqValue = getChkWord(reReqValue);
			}
		}
		return reReqValue;
	}
	
	/**
	 * request.getParameter() ����� ��. value�� null�� ��� "" ����.
	 * @param request request ��ü
	 * @param name request key
	 * @return String key�� �ش�� value
	 */
	public static String getRequestValue(javax.servlet.http.HttpServletRequest request, String name) {
		
		return getRequestValue(request, name, "");
		
	}
	
	/**
	 * request.getParameter() ����� ��. value�� null�� ��� ���ϵ� default value�� ������ �� ����.
	 * @param request request ��ü
	 * @param name request key
	 * @param def key�� �ش�� value�� null �� ��� def�� ����
	 * @param bHtml html ��뿩��
	 * @return String key�� �ش�� value
	 */
	public static String getRequestValue(javax.servlet.http.HttpServletRequest request, String name, String def) {
		return getRequestValue(request, name, def, false);
	}
	
	/**
	 * request.getParameter() ����� ��. value�� null�� ��� "" ����.
	 * @param request request ��ü
	 * @param name request key
	 * @param bHtml html ��뿩��
	 * @return String key�� �ش�� value
	 */
	public static String getRequestValue(javax.servlet.http.HttpServletRequest request, String name, boolean bHtml) {
		return getRequestValue(request, name, "", bHtml);
	}
	
	public static String getChkWord(String strval) {
		
		if ( strval == null ) {
			return "";
		}
		
		strval = strval.replaceAll("(?i)script", "_script");
		strval = strval.replaceAll("(?i)document.cookie", "document._cookie");
		strval = strval.replaceAll("(?i)location", "_location");
		strval = strval.replaceAll("(?i)href", "_href");
		
		return strval;
	}
	
	/**
	 * request.getParameterValues() ����� ��.
	 * @param request request ��ü
	 * @param name request key
	 * @return String[] key�� �ش�� value
	 */
	public static String[] getRequestValues(javax.servlet.http.HttpServletRequest request, String name) {
		return request.getParameterValues(name);
	}

	public static Object getSessionValue(javax.servlet.http.HttpServletRequest request, String name) {
		return request.getSession().getAttribute(name);
	}

	public static String getSessionValue(javax.servlet.http.HttpServletRequest request, String name, String key) {

		Object object	 = getSessionValue(request, name);
		String reVal = "";

		if(object instanceof HashMap){
			HashMap hm = (HashMap)object;

			if(hm.containsKey(key)) {
				reVal = hm.get(key).toString();
			} else {
				reVal = "";
			}
		}else if(object instanceof String){
			reVal = object.toString();
		}else{
			reVal = "";
		}

		return reVal;
	}
	
	/**
	* ����Ʈ ���а��� �����ɴϴ�.
	* 0: ������, 1: ������
	*/
//		public String getSiteGb(javax.servlet.http.HttpServletRequest request){
//			if(getSessionValue(request, "SiteGb")==null) return "";
//			return getSessionValue(request, "SiteGb").toString();
//		}
	
	/**
	 * �α��ο���Ȯ��
	 * @param httpsession session ��ü
	 * @return �α��ο���
	 */
	public static boolean isLoggedIn(javax.servlet.http.HttpServletRequest request) {
		//if(getSiteGb(request)==null) return false;
		
		// �����������
		Object pt_header = getSessionValue(request, "pt_header");
		if( pt_header instanceof kr.go.rcms.web.comm.PT_HEADER){
			if( ((kr.go.rcms.web.comm.PT_HEADER)pt_header).getUsrId()==null ) return false;
			
			// �������������
			Object usr_data = getSessionValue(request, "usr_data");
			if( usr_data instanceof kr.go.rcms.web.data.UsrData ){
				if( ((kr.go.rcms.web.data.UsrData)usr_data).getUsrNm()==null ) return false;
				
				/*
				if( !( ((kr.go.rcms.web.data.UsrData)usr_data).getSiteGbNo(((kr.go.rcms.web.comm.PT_HEADER)pt_header).getTopMenuCd()) ).equals( ((kr.go.rcms.web.data.UsrData)usr_data).getSiteGb() ) ){
					return false;
				}
				*/
			}
		}
		
		return true;
	}
	
	/**
	 * �ý��� ���󿩺� Ȯ��
	 * @return ���󿩺�
	 */
	public static boolean isReal() {
		
		java.net.InetAddress addr = null;
		String hostname = null;
		boolean bReal   = true;
		String serverDv = System.getProperty("STCL_DV");
		
		try{
			addr     = java.net.InetAddress.getLocalHost();
			hostname = java.net.InetAddress.getLocalHost().getHostName();
			
			if( hostname.indexOf("test")>=0 || "DEVL".equals(serverDv)) {
			    bReal = false; 
			}
		}catch(Exception e){
			//LogUtil.error(e);
		}
		return bReal;
		
	}	
}

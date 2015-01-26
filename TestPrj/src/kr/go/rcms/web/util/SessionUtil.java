package kr.go.rcms.web.util;

import java.util.HashMap;

public class SessionUtil {
	
	/**
	 * request.getParameter() 기능을 함. value가 null일 경우 리턴될 default value를 지정할 수 있음.
	 * @param request request 객체
	 * @param name request key
	 * @param def key에 해당된 value가 null 일 경우 def를 리턴
	 * @param bHtml html 허용여부
	 * @return String key에 해당된 value
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
	 * request.getParameter() 기능을 함. value가 null일 경우 "" 리턴.
	 * @param request request 객체
	 * @param name request key
	 * @return String key에 해당된 value
	 */
	public static String getRequestValue(javax.servlet.http.HttpServletRequest request, String name) {
		
		return getRequestValue(request, name, "");
		
	}
	
	/**
	 * request.getParameter() 기능을 함. value가 null일 경우 리턴될 default value를 지정할 수 있음.
	 * @param request request 객체
	 * @param name request key
	 * @param def key에 해당된 value가 null 일 경우 def를 리턴
	 * @param bHtml html 허용여부
	 * @return String key에 해당된 value
	 */
	public static String getRequestValue(javax.servlet.http.HttpServletRequest request, String name, String def) {
		return getRequestValue(request, name, def, false);
	}
	
	/**
	 * request.getParameter() 기능을 함. value가 null일 경우 "" 리턴.
	 * @param request request 객체
	 * @param name request key
	 * @param bHtml html 허용여부
	 * @return String key에 해당된 value
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
	 * request.getParameterValues() 기능을 함.
	 * @param request request 객체
	 * @param name request key
	 * @return String[] key에 해당된 value
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
	* 사이트 구분값을 가져옵니다.
	* 0: 전담기관, 1: 수행기관
	*/
//		public String getSiteGb(javax.servlet.http.HttpServletRequest request){
//			if(getSessionValue(request, "SiteGb")==null) return "";
//			return getSessionValue(request, "SiteGb").toString();
//		}
	
	/**
	 * 로그인여부확인
	 * @param httpsession session 객체
	 * @return 로그인여부
	 */
	public static boolean isLoggedIn(javax.servlet.http.HttpServletRequest request) {
		//if(getSiteGb(request)==null) return false;
		
		// 헤더정보존재
		Object pt_header = getSessionValue(request, "pt_header");
		if( pt_header instanceof kr.go.rcms.web.comm.PT_HEADER){
			if( ((kr.go.rcms.web.comm.PT_HEADER)pt_header).getUsrId()==null ) return false;
			
			// 사용자정보존재
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
	 * 시스템 리얼여부 확인
	 * @return 리얼여부
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

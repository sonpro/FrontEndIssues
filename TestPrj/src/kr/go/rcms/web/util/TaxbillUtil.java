package kr.go.rcms.web.util;

import java.util.Calendar;
import java.util.Hashtable;

public class TaxbillUtil {


	public static boolean isValidRegsDate(String REGS_DATE) {
		    if(Integer.parseInt(REGS_DATE) > 20100831) {
		      return true;
		    } else {
		      return false;
		    }
	}
	 
	public static String getCurrentDateTime() {
        java.util.Date today = new java.util.Date();
        java.util.Locale currentLocale = new java.util.Locale("KOREAN", "KOREA");
        String pattern = "yyyyMMddHHmmss";
        java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat(pattern, currentLocale);
        return formatter.format(today);
    }
	
	public static boolean agentInsertRequired(String ISSU_ID) {
		boolean required = false;
		if(ISSU_ID.substring(8, 16).equals("41000026")) {
			required = true;
		}

		return required;
	}
	
	public String getOrgIdByCompanyCode(String companyCode) {
		Hashtable htData = getCompanyCodeTable();
		return (String)(htData.get(companyCode));
	}
	

	public static boolean isValidCompanyCode(String companyCode) {
		Hashtable htCompanyCode = getCompanyCodeTable();
		return htCompanyCode.containsKey(companyCode);
	}

	public static Hashtable<String, String> getCompanyCodeTable() {
		Hashtable<String, String> htData = new Hashtable<String, String>();
		htData.put("KTG", "82");
		htData.put("KGC", "84");
		htData.put("YJP", "85");
		htData.put("KGT", "86");
		htData.put("TAE", "86");
		htData.put("KGS", "87");
		return htData;
	}
	

	public static String getDate(String pattern, char flag, int value){
		Calendar calendar = Calendar.getInstance();
		switch (flag){
			case 'Y':
				calendar.add(1, value);
				break;
			case 'M':
				calendar.add(2, value);
				break;
			case 'W':
				calendar.add(4, value);
				break;
			case 'D':
				calendar.add(5, value);
		}

		return getDate(calendar.getTime(), pattern);
	}

	public static String getDate(String date, String pattern){
	    Calendar calendar = Calendar.getInstance();
	    date = date.trim();
	    if (date == null)
	      return "";
	    if (date.length() == 8) {
	      if (date.equals("00000000")) {
	        return "";
	      }
	      calendar.set(
	        Integer.parseInt(date.substring(0, 4)), 
	        Integer.parseInt(date.substring(4, 6)) - 1, 
	        Integer.parseInt(date.substring(6)));
	    } else if (date.length() == 14) {
	      calendar.set(
	        Integer.parseInt(date.substring(0, 4)), 
	        Integer.parseInt(date.substring(4, 6)) - 1, 
	        Integer.parseInt(date.substring(6, 8)), 
	        Integer.parseInt(date.substring(8, 10)), 
	        Integer.parseInt(date.substring(10, 12)), 
	        Integer.parseInt(date.substring(12)));
	    } else if (date.length() == 6) {
	      date = getDate("YYYYMMDD") + date;
	      calendar.set(
	        Integer.parseInt(date.substring(0, 4)), 
	        Integer.parseInt(date.substring(4, 6)) - 1, 
	        Integer.parseInt(date.substring(6, 8)), 
	        Integer.parseInt(date.substring(8, 10)), 
	        Integer.parseInt(date.substring(10, 12)), 
	        Integer.parseInt(date.substring(12)));
	    } else {
	      return date;
	    }
	    return getDate(calendar.getTime(), pattern);
	}


	public static String getDate(String pattern){
		return getDate(Calendar.getInstance().getTime(), pattern);
	}
	
	public static String getDate(String date, String pattern, char flag, int value){
		Calendar calendar = Calendar.getInstance();
		if (date == null)
		  return "";
		if (date.length() == 8) {
		  calendar.set(
		    Integer.parseInt(date.substring(0, 4)), 
		    Integer.parseInt(date.substring(4, 6)) - 1, 
		    Integer.parseInt(date.substring(6)));
		} else if (date.length() == 14) {
		  calendar.set(
		    Integer.parseInt(date.substring(0, 4)), 
		    Integer.parseInt(date.substring(4, 6)) - 1, 
		    Integer.parseInt(date.substring(6, 8)), 
		    Integer.parseInt(date.substring(8, 10)), 
		    Integer.parseInt(date.substring(10, 12)), 
		    Integer.parseInt(date.substring(12)));
		} else if (date.length() == 6) {
		  date = getDate("YYYYMMDD") + date;
		  calendar.set(
		    Integer.parseInt(date.substring(0, 4)), 
		    Integer.parseInt(date.substring(4, 6)) - 1, 
		    Integer.parseInt(date.substring(6, 8)), 
		    Integer.parseInt(date.substring(8, 10)), 
		    Integer.parseInt(date.substring(10, 12)), 
		    Integer.parseInt(date.substring(12)));
		} else {
		  return date;
		}
		switch (flag)
		{
		case 'Y':
		  calendar.add(1, value);
		  break;
		case 'M':
		  calendar.add(2, value);
		  break;
		case 'W':
		  calendar.add(4, value);
		  break;
		case 'D':
		  calendar.add(5, value);
		}
		
		return getDate(calendar.getTime(), pattern);
	}

	public static String getDate(java.util.Date date, String pattern){
	    pattern = pattern.toLowerCase();
	    int i = pattern.indexOf("hh24");
	    if (i != -1)
	      pattern = pattern.substring(0, i) + "HH" + pattern.substring(i + 4);
	    i = pattern.indexOf("mm");
	    if (i != -1)
	      pattern = pattern.substring(0, i) + "MM" + pattern.substring(i + 2);
	    i = pattern.indexOf("mi");
	    if (i != -1)
	      pattern = pattern.substring(0, i) + "mm" + pattern.substring(i + 2);
	    return new java.text.SimpleDateFormat(pattern).format(date);
	}

	public static String getDate(java.util.Date date, String pattern, char flag, int value){
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		switch (flag){
		case 'Y':
		  calendar.add(1, value);
		  break;
		case 'M':
		  calendar.add(2, value);
		  break;
		case 'W':
		  calendar.add(4, value);
		  break;
		case 'D':
		  calendar.add(5, value);
		}
		
		return getDate(calendar.getTime(), pattern);
	}

	public static String replaceStr(String src, String org, String tar){
		if (src == null) {
		  return "";
		}
		
		if (org == null) {
		  return src;
		}
		
		if (tar == null) {
		  tar = "";
		}
		
		String tmp1 = src;
		String tmp2 = "";
		while (tmp1.indexOf(org) > -1) {
		  tmp2 = tmp2 + tmp1.substring(0, tmp1.indexOf(org)) + tar;
		  tmp1 = tmp1.substring(tmp1.indexOf(org) + org.length());
		}
		tmp2 = tmp2 + tmp1;
		return tmp2;
	}
}

package kr.go.rcms.web.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import jex.util.DateTime;

/**
 * <pre>
 * 각종 형식의 날자를 출력한다.
 * 조합 가능한 Format..
 * yy,yyyy : 년도
 * mm      : 월
 * dd      : 일 
 * 
 * hh(hh24) : 시간(24시기준인지)
 * mi       : 분
 * ss       : 초
 * ms       :  millisecond 
 * 
 * MMM      : 월(Ex:Jan,1월)
 * EEE      : 일(Ex:Tue,화)
 * G        : AD/BC
 * </pre>
 */
public class DateUtil
{
	static DateTime date = DateTime.getInstance();
	
    /**
     * 거래일자와 관계 없는 System Date 를 반환한다.
     * @param format
     * @return
     */
    public static String getSysDate(String format)
    {
    	return date.getSysDate(format); 
    }

	/**
	* 오늘날자를 기준으로 flag에 해당하는 값을 
	*  vlaue만큼 더하거나 빼서 format형식으로 반환한다.
	* @param s String Format 형식
	* @param c  char   기준 Flag('Y':년,'M':월,'W':주,'D'일, 'H' 시, 'I' 분, 'S' 초 )
	* @param i  int    가감 계산값
	*/
	public static String getSysDate(String format, char c, int i)
	{
        return date.getSysDate(format, c, i);
	}    
    
	/**
	* 거래 일자를 기준으로 format 형식에 따라서 값을 반환해준다..
	* @param s String Format String 
	*/
	public static String getDate(String format)
	{ 
		return date.getDate(format);
	}
	/**
	* 거래 일자를 기준으로 flag에 해당하는 값을 
	*  vlaue만큼 더하거나 빼서 format형식으로 반환한다.
	* @param s String Format 형식
	* @param c  char   기준 Flag('Y':년,'M':월,'W':주,'D'일, 'H' 시, 'I' 분, 'S' 초 )
	* @param i  int    가감 계산값
	*/
	public static String getDate(String format, char c, int i)
	{
        return date.getDate(format, c, i);
	}	
	
    /**
     * 사용자가 입력한 String Date 를 
     * flag에 해당하는 값을 vlaue만큼 더하거나 빼서 format형식으로 반환한다.
     * 입력 가능 Date 형식 YYYYMMDDHHMISS,YYYYMMDD,HHMISS 3가지의 형식 
     * 잘못된 date를 입력하면 null 을반환한다.
     * 
     * @param inputDate String 사용자가 입력한 Date
     * @param format String 반환 받고자 하는 Date Format
     * @param c  char   기준 Flag('Y':년,'M':월,'W':주,'D'일)
     * @param i  int    가감 계산값
    */
    public static String getDate(String inputDate, String format, char c, int i)
    {
    	return date.getDate(inputDate, format, c, i);
    }	
	    
	/**
	* 두 날짜사이의 일수차이 구함
	* @param fromDate Date 시작일자
	* @param toDate   Date 끝일자
	*/
	public static int getDayBetween(String fromDate, String toDate)
	{
		return getDayBetween(fromDate, toDate);
	}
	
	/**
	* 해당월의 마지막 날짜를 구함
	* @param inputDate String 사용자가 입력한 Date(yyyymm)
	* @param toDate   Date 끝일자
	*/
	public int getLastDay(String inputDate) {
		int nLastDay = 0;
		int nYear = 0;
		int nMonth = 0;	

		nYear = Integer.parseInt(inputDate.substring(0,4));

		if (inputDate.length() != 6)
			nMonth = Integer.parseInt(inputDate.substring(4,5));
		else
			nMonth = Integer.parseInt(inputDate.substring(4,6));

		switch (nMonth) {
			case	2:	{
				if(((nYear%4 == 0) && (nYear%100 != 0)) || (nYear%400 == 0))
					nLastDay = 29;
				else
					nLastDay = 28;
				break;
			}
			case	4: nLastDay = 30;break;
			case	6: nLastDay = 30;break;
			case	9: nLastDay = 30;break;
			case	11: nLastDay = 30;break;
			default: nLastDay = 31;break;
		}
		return nLastDay;
	}

	public static int monthsBetween(String from, String to){
		return monthsBetween(from, to, "yyyyMMdd");
	}
	
	/**
	* 두 날짜사이의 월수차이 구함
	* @param fromDate Date 시작일자
	* @param toDate   Date 끝일자
	*/
    public static int monthsBetween(String from, String to, String format){

    	if( from==null || "".equals(from)){return 0;}
 		if( to==null || "".equals(to)){return 0;}
 		
 		java.util.Date fromDate = check(from, format);
        java.util.Date toDate = check(to, format);

        // if two date are same, return 0.
        if (fromDate.compareTo(toDate) == 0) return 0;

 		java.text.SimpleDateFormat yearFormat =
		    new java.text.SimpleDateFormat("yyyy", java.util.Locale.KOREA);
 		java.text.SimpleDateFormat monthFormat =
		    new java.text.SimpleDateFormat("MM", java.util.Locale.KOREA);
 		java.text.SimpleDateFormat dayFormat =
		    new java.text.SimpleDateFormat("dd", java.util.Locale.KOREA);

        int fromYear = Integer.parseInt(yearFormat.format(fromDate));
        int toYear = Integer.parseInt(yearFormat.format(toDate));
        int fromMonth = Integer.parseInt(monthFormat.format(fromDate));
        int toMonth = Integer.parseInt(monthFormat.format(toDate));
        int fromDay = Integer.parseInt(dayFormat.format(fromDate));
        int toDay = Integer.parseInt(dayFormat.format(toDate));

        int result = 0;
        result += ((toYear - fromYear) * 12);
        result += (toMonth - fromMonth);

        if (((toDay - fromDay) < 0) ) result += fromDate.compareTo(toDate);
        if (((toDay - fromDay) > 0) ) result += toDate.compareTo(fromDate);

        return result;
    }
    
	/**
	 * check date string validation with the default format "yyyyMMdd".
	 * @param s date string you want to check with default format "yyyyMMdd".
     * @return date java.util.Date
	 */
	public static java.util.Date check(String s){
		return check(s, "yyyyMMdd");
	}

	/**
	 * check date string validation with an user defined format.
	 * @param s date string you want to check.
	 * @param format string representation of the date format. For example, "yyyy-MM-dd".
     * @return date java.util.Date
	 */
	public static java.util.Date check(String s, String format){
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat (format, java.util.Locale.KOREA);
		java.util.Date date = null;
		try {
			date = formatter.parse(s);
		}
		catch(java.text.ParseException e) {}
        return date;
	}
	
	/**
	 * 현재날짜
	 * @return 현재날짜를 'YYYYMMDD'로 리턴
	 */
	public static String getDateSimple() {
		
		return getDateSimple(Calendar.getInstance().getTime(), "YYYYMMDD");
		
	}

	/**
	 * format형식에 맞는 날짜반환
	 * @param format 날짜형식
	 * @return 날짜
	 */
	public static String getDateSimple(String format) {
		
		return getDateSimple(Calendar.getInstance().getTime(), format);
		
	}

	/**
	 * format형식에 맞는 날짜반환
	 * @param date 날짜
	 * @param format 날짜형식
	 * @return java.lang.String
	 */
	public static String getDateSimple(Date date, String format) {
		
		format = format.toLowerCase();
		int i = format.indexOf("hh24");
		if(i != -1)
			format = format.substring(0, i) + "HH" + format.substring(i + 4);
		i = format.indexOf("mm");
		if(i != -1)
			format = format.substring(0, i) + "MM" + format.substring(i + 2);
		i = format.indexOf("mi");
		if(i != -1)
			format = format.substring(0, i) + "mm" + format.substring(i + 2);
		
		return new SimpleDateFormat(format).format(date);
		
	}	

	/**
	 * YYYYMM을 통해 년 분기를 반환
	 * @param date 날짜(YYYYMM)
	 * @return java.lang.String
	 */
	public static String getQuarter(String yyyymm) {
		String yyyy = yyyymm.substring(0, 4);
		String mm = yyyymm.substring(4);
		String result = "";
		
		if("03".equals(mm) || "04".equals(mm)) {
			result = yyyy + "년 1분기";
		} else if("06".equals(mm) || "07".equals(mm)) {
			result = yyyy + "년 2분기";
		} else if("09".equals(mm) || "10".equals(mm)) {
			result = yyyy + "년 3분기";
		} else if("12".equals(mm)) {
			result = yyyy + "년 4분기";
		} else if("01".equals(mm)) {
			result = Integer.toString(Integer.parseInt(yyyy)-1) + "년 4분기";
		} 
		
		return result;
		
	}	
	
	/**
	 * 특정 날짜에 대하여 요일을 구함(일 ~ 토)
	 * @param date
	 * @param dateType
	 * @return
	 * @throws Exception
	 */
	public static String getDateDay(String date, String dateType) throws Exception {
	    String day = "" ;
	    SimpleDateFormat dateFormat = new SimpleDateFormat(dateType) ;
	    Date nDate = dateFormat.parse(date) ;
	    Calendar cal = Calendar.getInstance() ;
	    cal.setTime(nDate);
	    int dayNum = cal.get(Calendar.DAY_OF_WEEK) ;
	    switch(dayNum){
	        case 1:
	            day = "일"; break ;
	        case 2:
	            day = "월"; break ;
	        case 3:
	            day = "화"; break ;
	        case 4:
	            day = "수"; break ;
	        case 5:
	            day = "목"; break ;
	        case 6:
	            day = "금"; break ;
	        case 7:
	            day = "토"; break ;
	    }
	    return day ;
	}
}

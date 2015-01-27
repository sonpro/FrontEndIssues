package kr.go.rcms.web.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import jex.util.DateTime;

/**
 * <pre>
 * ���� ������ ���ڸ� ����Ѵ�.
 * ���� ������ Format..
 * yy,yyyy : �⵵
 * mm      : ��
 * dd      : �� 
 * 
 * hh(hh24) : �ð�(24�ñ�������)
 * mi       : ��
 * ss       : ��
 * ms       :  millisecond 
 * 
 * MMM      : ��(Ex:Jan,1��)
 * EEE      : ��(Ex:Tue,ȭ)
 * G        : AD/BC
 * </pre>
 */
public class DateUtil
{
	static DateTime date = DateTime.getInstance();
	
    /**
     * �ŷ����ڿ� ���� ���� System Date �� ��ȯ�Ѵ�.
     * @param format
     * @return
     */
    public static String getSysDate(String format)
    {
    	return date.getSysDate(format); 
    }

	/**
	* ���ó��ڸ� �������� flag�� �ش��ϴ� ���� 
	*  vlaue��ŭ ���ϰų� ���� format�������� ��ȯ�Ѵ�.
	* @param s String Format ����
	* @param c  char   ���� Flag('Y':��,'M':��,'W':��,'D'��, 'H' ��, 'I' ��, 'S' �� )
	* @param i  int    ���� ��갪
	*/
	public static String getSysDate(String format, char c, int i)
	{
        return date.getSysDate(format, c, i);
	}    
    
	/**
	* �ŷ� ���ڸ� �������� format ���Ŀ� ���� ���� ��ȯ���ش�..
	* @param s String Format String 
	*/
	public static String getDate(String format)
	{ 
		return date.getDate(format);
	}
	/**
	* �ŷ� ���ڸ� �������� flag�� �ش��ϴ� ���� 
	*  vlaue��ŭ ���ϰų� ���� format�������� ��ȯ�Ѵ�.
	* @param s String Format ����
	* @param c  char   ���� Flag('Y':��,'M':��,'W':��,'D'��, 'H' ��, 'I' ��, 'S' �� )
	* @param i  int    ���� ��갪
	*/
	public static String getDate(String format, char c, int i)
	{
        return date.getDate(format, c, i);
	}	
	
    /**
     * ����ڰ� �Է��� String Date �� 
     * flag�� �ش��ϴ� ���� vlaue��ŭ ���ϰų� ���� format�������� ��ȯ�Ѵ�.
     * �Է� ���� Date ���� YYYYMMDDHHMISS,YYYYMMDD,HHMISS 3������ ���� 
     * �߸��� date�� �Է��ϸ� null ����ȯ�Ѵ�.
     * 
     * @param inputDate String ����ڰ� �Է��� Date
     * @param format String ��ȯ �ް��� �ϴ� Date Format
     * @param c  char   ���� Flag('Y':��,'M':��,'W':��,'D'��)
     * @param i  int    ���� ��갪
    */
    public static String getDate(String inputDate, String format, char c, int i)
    {
    	return date.getDate(inputDate, format, c, i);
    }	
	    
	/**
	* �� ��¥������ �ϼ����� ����
	* @param fromDate Date ��������
	* @param toDate   Date ������
	*/
	public static int getDayBetween(String fromDate, String toDate)
	{
		return getDayBetween(fromDate, toDate);
	}
	
	/**
	* �ش���� ������ ��¥�� ����
	* @param inputDate String ����ڰ� �Է��� Date(yyyymm)
	* @param toDate   Date ������
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
	* �� ��¥������ �������� ����
	* @param fromDate Date ��������
	* @param toDate   Date ������
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
	 * ���糯¥
	 * @return ���糯¥�� 'YYYYMMDD'�� ����
	 */
	public static String getDateSimple() {
		
		return getDateSimple(Calendar.getInstance().getTime(), "YYYYMMDD");
		
	}

	/**
	 * format���Ŀ� �´� ��¥��ȯ
	 * @param format ��¥����
	 * @return ��¥
	 */
	public static String getDateSimple(String format) {
		
		return getDateSimple(Calendar.getInstance().getTime(), format);
		
	}

	/**
	 * format���Ŀ� �´� ��¥��ȯ
	 * @param date ��¥
	 * @param format ��¥����
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
	 * YYYYMM�� ���� �� �б⸦ ��ȯ
	 * @param date ��¥(YYYYMM)
	 * @return java.lang.String
	 */
	public static String getQuarter(String yyyymm) {
		String yyyy = yyyymm.substring(0, 4);
		String mm = yyyymm.substring(4);
		String result = "";
		
		if("03".equals(mm) || "04".equals(mm)) {
			result = yyyy + "�� 1�б�";
		} else if("06".equals(mm) || "07".equals(mm)) {
			result = yyyy + "�� 2�б�";
		} else if("09".equals(mm) || "10".equals(mm)) {
			result = yyyy + "�� 3�б�";
		} else if("12".equals(mm)) {
			result = yyyy + "�� 4�б�";
		} else if("01".equals(mm)) {
			result = Integer.toString(Integer.parseInt(yyyy)-1) + "�� 4�б�";
		} 
		
		return result;
		
	}	
	
	/**
	 * Ư�� ��¥�� ���Ͽ� ������ ����(�� ~ ��)
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
	            day = "��"; break ;
	        case 2:
	            day = "��"; break ;
	        case 3:
	            day = "ȭ"; break ;
	        case 4:
	            day = "��"; break ;
	        case 5:
	            day = "��"; break ;
	        case 6:
	            day = "��"; break ;
	        case 7:
	            day = "��"; break ;
	    }
	    return day ;
	}
}

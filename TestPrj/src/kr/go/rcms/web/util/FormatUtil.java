package kr.go.rcms.web.util;

import java.text.DecimalFormat;

public class FormatUtil
{
    /**
     * �ݾ� ������ �����ϴ� ���
     * @param str 		�ݾ�
     * @return String
     */
	public static String getMoneyForm(String str) {
		if (str == null)
		    return "";
		int offset = str.indexOf(".");
		String work_str = "";
		String nonwork_str = "";
		if (offset > 0) {
		    // �Ҽ����� �ִ�
		    work_str = str.substring(0, offset);
		    nonwork_str = str.substring(offset, str.length());
		} else {
		    work_str = str;
		}
		DecimalFormat df = new DecimalFormat("###,##0");
		double d = 0;
		try {
		    d = Double.valueOf(work_str).doubleValue();
		} catch (Exception e) {
		    d = 0;
		}
		return df.format(d) + nonwork_str;
	}	
	
	/**
	 * ���ڷ� ������ ���ڿ��� Ư���������� �����Ѵ�
	 * ex) System.out.println(setDelim("20001215","9999-99-99"));
	 * @param str 		�ٲ� ���ڿ�
	 * @param delimPtrn �ٲ� ����
	 * @return String
	 */
	public static String setDelim(String str,String delimPtrn)
	{
		if((str==null) || (str.trim().length() == 0) || (str.equals("0"))) return "";
		
		StringBuffer sb = new StringBuffer();
		
		try{
			for(int i=0,j=0;i<delimPtrn.length();i++){
				if(delimPtrn.charAt(i) == '9'){
					sb.append(str.charAt(j));
					j++;
				}else{
					sb.append(delimPtrn.charAt(i));
				}
			}
		}catch(NullPointerException e){
//			sb.delete(0, sb.length());
//			sb.append(str);
		}catch(Exception e){
//			sb.delete(0, sb.length());
//			sb.append(str);
		}
		return sb.toString();
	}

	/**
	 * �Է��� String�� �Ǿտ��ִ� '0'�� ����
	 * ex) "00001234"   ---> "1234"
	 * ex) "000.00"     ---> "0.00" 
	 * @param str 		�ٲ� ���ڿ�
	 * @return String
	 */
	public static String rmZero(String str) {
		if(str==null) return "";	
		char indexChr = ' ';
		int index =0;
		while(index<str.length()){
			if(str.charAt(index)=='0' ){
				index++;
			}else{
				indexChr = str.charAt(index);
				break;	
			}
		}
		if(index<str.length()) return str.substring(indexChr=='.'?index-1:index);
		else return "0";		
	}	
	
	 /**
	  * ������ȭ��ȣ�� ������ ������(-)�� �ٿ��� ��ȯ�Ѵ�.
	  * ex) 021002000     --> 02-100-2000
	  * ex) 0210002000    --> 02-1000-2000
	  * ex) 0321002000    --> 032-100-2000
	  * ex) 03210002000   --> 032-1000-2000
	  */
	 public static String formatPhone(Object value) {
	  if(value==null)
	   return null;
	  
	  String d = "-";
	  String s = (String)value;
	  s = s.replaceAll("-", "");
	  int len  = s.length();
	  
	     if (s.indexOf("02") == 0) {
	         if (len > 9) {
	             return s.substring(0, 2) + d + s.substring(2, 6) + d + s.substring(6);
	         }else if (len > 5) {
	             return s.substring(0, 2) + d + s.substring(2, 5) + d + s.substring(5);
	         }else if (len > 2) {
	             return s.substring(0, 2) + d + s.substring(2);
	         }
	     }else {
	         if (len > 10) {
	             return s.substring(0, 3) + d + s.substring(3, 7) + d + s.substring(7);
	         }else if (len > 6) {
	             return s.substring(0, 3) + d + s.substring(3, 6) + d + s.substring(6);
	         }else if (len > 3) {
	             return s.substring(0, 3) + d + s.substring(3);
	         }
	     }
	  return s;
	 }

}
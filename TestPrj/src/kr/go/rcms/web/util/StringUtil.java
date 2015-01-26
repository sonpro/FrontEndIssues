package kr.go.rcms.web.util;

public class StringUtil 
{
    /**
     * 입력값이 null 일 경우 "" 를 반환한다.
     * @param s
     */
    public static String null2void(String s)
    {
    	return (isNull(s)) ?"":s;
    }
    
    /**
     * 입력값이 null 일 경우 def 를 반환한다.
     * @param s
     */
    public static String null2void(String s, String def)
    {
    	return (isNull(s)) ?def:s;
    }
    
    /**
     * 해당 String 이 "", null 인지 반환한다.
     * @param s
     * @return
     */
    public static boolean isNull(Object s)
    {
    	return (s == null) || ((s.toString()).length() < 1);
    }
	
	/**
	 * src 내용중 모든 org 를 해당 tar 로 변경한다.
	 * @param src 변경할 문자열
	 * @param org 변경대상 문자열
	 * @param tar 변경할 문자열
	 * @return
	 */
	public static String replace(String src, String org, String tar)
	{
		return replace(src, org, tar, true);
	}
	
	/**
	 * src 내용중 org 를 해당 tar 로 변경한다.
	 * @param src 변경할 문자열
	 * @param org 변경대상 문자열
	 * @param tar 변경할 문자열
	 * @param all 전체를 다 변경할것인지 (true 일경우 전체, false 일경우 첫번째)
	 * @return
	 */
	public static String replace(String src, String org, String tar, boolean all)
	{
		if (src == null)
		{
			return "";
		}

		if (org == null || tar == null || src.indexOf(org) == -1)
		{
			return src;
		}

		String tmp1 = src;
		StringBuilder sbResult = new StringBuilder();
		
		if (all)
		{
			int nIndex = 0;
			while ((nIndex = tmp1.indexOf(org)) > -1)
			{
				sbResult.append(tmp1.substring(0, nIndex)).append(tar);
				tmp1 = tmp1.substring(nIndex + org.length());
			}
			sbResult.append(tmp1);
		}
		else
		{
			int nIndex = tmp1.indexOf(org);
			sbResult.append(tmp1.substring(0, nIndex)).append(tar).append(tmp1.substring(nIndex + org.length()));
		}
		return sbResult.toString();
	}
	
    /**
     * 전각문자로 변경한다.
     * @param src 변경할값
     * @return String 변경된값
     */
    public static char toFullChar(char src)
    {

        if (src >= 0x21 && src <= 0x7e)
        {
            src += 0xfee0;
        }
        else if (src == 0x20)
        {
            src = 0x3000;
        }
        return src;
    }
    
	/**
	 * 반각문자를 전각 문자로 변환한다.
	 */
	public static String toFullChar(String src)
	{
		return toFullChar(src, 0);
	}
	
	/**
	 * 입력된 String 을 해당 길이만큼(글자수) 전각 문자로 변경하여 준다.
	 * @param s
	 * @param size
	 * @return
	 */
	public static String toFullChar(String src, int size)
	{
		// 입력된 스트링이 null 이면 null 을 리턴
		if (src == null)  return null;
		// 변환된 문자들을 쌓아놓을 StringBuffer 를 마련한다
		StringBuffer strBuf = new StringBuffer();
		char c = 0;
		int nSize = src.length();
		for (int i = 0; i < nSize; i++) 
		{
			c = src.charAt(i);

			//영문이거나 특수 문자 일경우.
			if (c >= 0x21 && c <= 0x7e) 
			{
				c += 0xfee0;
			} 
			else if (c == 0x20) 
			{
				c = 0x3000;
			}

			// 문자열 버퍼에 변환된 문자를 쌓는다
			strBuf.append(c);
		}
		//모자라는 길이를 체워 넣는다.
		if(size > 0)
		{
			for(int i=nSize * 2 ; i < size ; i+=2)
			{
				strBuf.append((char)0x3000);
			}
		}
		return strBuf.toString();
	}	
	
	/**
	 * 전각문자를 반각 문자로 변경한다.
	 */
	public static String toHalfChar(String src) 
	{
		// 입력된 스트링이 null 이면 null 을 리턴
		if (src == null)  return null;

		StringBuffer strBuf = new StringBuffer();
		char c = 0;

		for (int i = 0; i < src.length(); i++) 
		{
			c = src.charAt(i);

			//영문이거나 특수 문자 일경우.
			if (c >= 0xff01 && c <= 0xff5e) 
			{
				c -= 0xfee0;
			} 
			else if (c == 0x3000) 
			{
				c = 0x20;
			}

			// 문자열 버퍼에 변환된 문자를 쌓는다
			strBuf.append(c);
		}
		return strBuf.toString();
	}	
	
	/**
     * 입력한 String value 를 해당길이에 맞고 정렬 방법에 맞게 수정해 준다.
     * @param value     입력값
     * @param length    길이
     * @param padding   길이보다 짧을때 체움 문자
     * @param aligntype 정렬 방법 'R','L','C'
     * @return String   정렬된 문자열
     */
	public static String setMaskString(String v, int length, char padding, char aligntype) 
    {
    	return new String(setMaskString(v.getBytes(), length, (byte)padding, aligntype));
    }  
    
    /**
     * 입력한 byte[] value 를 해당길이에 맞고 정렬 방법에 맞게 수정해 준다.
     * @param input     입력값
     * @param length    길이
     * @param padding   길이보다 짧을때 체움 문자
     * @param aligntype 정렬 방법 'R','L','C'
     * @return String   정렬된 문자열
     */
    public static byte[] setMaskString(byte[] input, int length, byte padding, char aligntype) 
    {    
    	byte[] buffInput = (input != null)?input:new byte[0];
    	byte[] buffPadding = getPaddingValue(padding, length - buffInput.length);
    	byte[] buffResult = new byte[length];
    	if (buffPadding == null)
    	{
    		System.arraycopy(buffInput, 0, buffResult, 0, length);
    		return buffResult;
    	}
    	//중앙 정렬
    	if (aligntype == 'C')
    	{
    		int nCount = buffPadding.length / 2;
    		System.arraycopy(buffPadding, 0, buffResult, 0, nCount);
    		System.arraycopy(buffInput, 0, buffResult, nCount, buffInput.length);
    		System.arraycopy(buffPadding, 0,  buffResult, nCount + buffInput.length, buffPadding.length - nCount);
    	}
    	//좌측 정렬
    	else if (aligntype == 'L')
    	{
    		
    		System.arraycopy(buffInput,   0, buffResult,                0, buffInput.length);
    		System.arraycopy(buffPadding, 0, buffResult, buffInput.length, buffPadding.length);
    	}
    	//우측 정렬
    	else 
    	{
    		System.arraycopy(buffPadding, 0, buffResult,                  0, buffPadding.length);
    		System.arraycopy(buffInput,   0, buffResult, buffPadding.length, buffInput.length);
    	}
    	return buffResult;	
    }	
	
    public static byte[] getPaddingValue(byte padding, int length)
    {
    	if (length < 1) return null;
    	final byte[] MASK_ZERO  = "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".getBytes();
    	final byte[] MASK_SPACE = "                                                                                                    ".getBytes();
    	
    	byte[] buffResult = new byte[length];
    	byte[] buffMask   = null;
    	if (padding == (byte)'0')
    	{
    		buffMask = MASK_ZERO;
    	}
    	else if (padding == (byte)' ')
    	{
    		buffMask = MASK_SPACE;
    	}
    	if (buffMask != null)
    	{
    		int nPos = 0, nCount = 0;
    		while(nPos < length)
    		{
    			nCount = Math.min(length - nPos, buffMask.length);
    			System.arraycopy(buffMask, 0, buffResult, nPos, nCount);
    			nPos += nCount;
    		}
    	}
    	else
    	{
    		for(int i=0;i<length;i++)
    		{
    			buffResult[i]= padding;
    		}
    	}
    	return buffResult;
    }	
	
	/**
	 * 구분자 제거
	 * @param str 		전체문장
	 * @param delim 	제거할 구분자
	 * @return String 	구분자가 제거된 문장
	 */
	public static String delDelim(String str, String delim)
	{
		if(str==null || delim==null)
			return null;
		else
			return replace(str,delim,"");
	}
	
    /**
     * 특정한 문자를 기준으로 왼쪽 문자를 반환하는 기능을 수행
     * @param str 문자열
     * @param delim 특정문자
     * @return String
     */
	public static String lSplit(String str, char delim) {
		String returnValue = "";
		if (str == null)
		    returnValue = "";
		int i_pos = str.indexOf(delim);
		if (i_pos != -1) {
		    returnValue = str.substring(0, i_pos);
		} else {
		    returnValue = str;
		}
		return returnValue;
	}

	/**
     * 특정한 문자를 기준으로 오른쪽 문자를 반환하는 기능을 수행
     * @param str 문자열
     * @param delim 특정문자
     * @return String
     */
	public static String rSplit(String str, char delim) {
		String returnValue = "";
		if (str == null)
		    returnValue = "";
		int i_pos = str.indexOf(delim);
		if (i_pos != -1) {
		    returnValue = str.substring(i_pos + 1);
		} else {
		    returnValue = "";
		}
		return returnValue;
	}

    /**
     * 문자열이 특정 길이가 넘어가면 (...) 으로 치환
     * @param str 문자열
     * @param cnt 제한문자길이
     * @return String
     */
	public static String LimitStr(String str, int cnt) {
		String returnValue="";
		if("".equals(str)){return returnValue;}
		if("&nbsp;".equals(str)){return returnValue;}
		if("null".equals(str)){return returnValue;}
		if(str.length()<cnt){return str;}
		
		for(int i=0;i<cnt;i++){
			returnValue += str.charAt(i);
		}
		
		return returnValue;
	}
	
    /**
     * 문자열이 특정 길이가 넘어가면 (...) 으로 치환
     * @param str 문자열
     * @param cnt 제한문자길이
     * @return String
     */
	public static String LimitString(String str, int cnt) {
		String returnValue="";
		if("".equals(str)){return returnValue;}
		if("&nbsp;".equals(str)){return returnValue;}
		if("null".equals(str)){return returnValue;}
		if(str.length()<cnt){return str;}
		
		for(int i=0;i<cnt;i++){
			returnValue += str.charAt(i);
		}
		
		return returnValue+"...";
	}
	
    /**
     * 문자열이 특정 길이가 넘어가면 (...) 으로 치환
     * @param str 문자열
     * @param cnt 제한문자길이
     * @return String
     */
	public static String LineChenge(String str, int cnt) {
		String returnValue="";
		if("".equals(str)){return returnValue;}
		if("&nbsp;".equals(str)){return returnValue;}
		if("null".equals(str)){return returnValue;}
		if(str.length()<cnt){return str;}
		
		for(int i=0;i<str.length();i++){
			returnValue += str.charAt(i);
			if(cnt == i){
				returnValue += "<BR>";
			}
		}
		
		return returnValue;
	}
	
    /**
     * 문자열이 특정길이가 될때까지 앞쪽에 공백주기
     * @param str 문자열
     * @param cnt 변경하고싶은 문자길이
     * @return String
     */
	public static String SpaceAdd(String str, int cnt) {
		String returnValue="";
		if("".equals(str)){return returnValue;}
		if("&nbsp;".equals(str)){return returnValue;}
		if("null".equals(str)){return returnValue;}
		if(str.length()>=cnt){return str;}
		
		for(int i=0;i<cnt;i++){	
			if(str.length() < cnt){
				returnValue = " " +  str;
			}
		}
		
		return returnValue;
	}
	
	public static String null2UnsignedNum(String str){
		String returnValue=str;
		
		if(isNull(returnValue))  returnValue = "0";
		if("0".compareTo(returnValue)>0) returnValue = "0";
		return returnValue;
	}
	
	public static String null2zero(String str){
		String returnValue=str;
		
		if(isNull(returnValue))  returnValue = "0";
		if("".equals(returnValue)) returnValue = "0";
		return returnValue;
	}
	
	public static String reXmlToMap(String str){
		String returnValue=str;
		
		if(str.indexOf("&amp;")>0){
			returnValue = StringUtil.replace(returnValue,"&amp;","&");
		}
		if(str.indexOf("&lt;")>0){
			returnValue = StringUtil.replace(returnValue,"&lt;","<");
		}
		if(str.indexOf("&gt;")>0){
			returnValue = StringUtil.replace(returnValue,"&gt;",">");
		}
		if(str.indexOf("&apos;")>0){
			returnValue = StringUtil.replace(returnValue,"&apos;","''");
		}
		if(str.indexOf("&quot;")>0){
			returnValue = StringUtil.replace(returnValue,"&quot;","\"");
		}
		
		return returnValue;
	}
	
	public static String reMapToXml(String str){
		String returnValue=str;
		
		if(str.indexOf("&")>0){
			returnValue = StringUtil.replace(returnValue,"&","&amp;");
		}
		if(str.indexOf("<")>0){
			returnValue = StringUtil.replace(returnValue,"<","&lt;");
		}
		if(str.indexOf(">")>0){
			returnValue = StringUtil.replace(returnValue,">","&gt;");
		}
		if(str.indexOf("'")>0){
			returnValue = StringUtil.replace(returnValue,"'","&apos;");
		}
		if(str.indexOf("\"")>0){
			returnValue = StringUtil.replace(returnValue,"\"","&quot;");
		}
		
		return returnValue;
	}
	
	public static boolean isNumber(String str) {  
		boolean check = true;
		for(int i = 0; i < str.length(); i++) {
			if(!Character.isDigit(str.charAt(i))) {
				check = false;
				break; 
			}
		}
		return check;
	}

	public static void main(String[] args){
		
	}
}

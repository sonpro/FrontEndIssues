package kr.go.rcms.web.util;

public class StringUtil 
{
    /**
     * �Է°��� null �� ��� "" �� ��ȯ�Ѵ�.
     * @param s
     */
    public static String null2void(String s)
    {
    	return (isNull(s)) ?"":s;
    }
    
    /**
     * �Է°��� null �� ��� def �� ��ȯ�Ѵ�.
     * @param s
     */
    public static String null2void(String s, String def)
    {
    	return (isNull(s)) ?def:s;
    }
    
    /**
     * �ش� String �� "", null ���� ��ȯ�Ѵ�.
     * @param s
     * @return
     */
    public static boolean isNull(Object s)
    {
    	return (s == null) || ((s.toString()).length() < 1);
    }
	
	/**
	 * src ������ ��� org �� �ش� tar �� �����Ѵ�.
	 * @param src ������ ���ڿ�
	 * @param org ������ ���ڿ�
	 * @param tar ������ ���ڿ�
	 * @return
	 */
	public static String replace(String src, String org, String tar)
	{
		return replace(src, org, tar, true);
	}
	
	/**
	 * src ������ org �� �ش� tar �� �����Ѵ�.
	 * @param src ������ ���ڿ�
	 * @param org ������ ���ڿ�
	 * @param tar ������ ���ڿ�
	 * @param all ��ü�� �� �����Ұ����� (true �ϰ�� ��ü, false �ϰ�� ù��°)
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
     * �������ڷ� �����Ѵ�.
     * @param src �����Ұ�
     * @return String ����Ȱ�
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
	 * �ݰ����ڸ� ���� ���ڷ� ��ȯ�Ѵ�.
	 */
	public static String toFullChar(String src)
	{
		return toFullChar(src, 0);
	}
	
	/**
	 * �Էµ� String �� �ش� ���̸�ŭ(���ڼ�) ���� ���ڷ� �����Ͽ� �ش�.
	 * @param s
	 * @param size
	 * @return
	 */
	public static String toFullChar(String src, int size)
	{
		// �Էµ� ��Ʈ���� null �̸� null �� ����
		if (src == null)  return null;
		// ��ȯ�� ���ڵ��� �׾Ƴ��� StringBuffer �� �����Ѵ�
		StringBuffer strBuf = new StringBuffer();
		char c = 0;
		int nSize = src.length();
		for (int i = 0; i < nSize; i++) 
		{
			c = src.charAt(i);

			//�����̰ų� Ư�� ���� �ϰ��.
			if (c >= 0x21 && c <= 0x7e) 
			{
				c += 0xfee0;
			} 
			else if (c == 0x20) 
			{
				c = 0x3000;
			}

			// ���ڿ� ���ۿ� ��ȯ�� ���ڸ� �״´�
			strBuf.append(c);
		}
		//���ڶ�� ���̸� ü�� �ִ´�.
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
	 * �������ڸ� �ݰ� ���ڷ� �����Ѵ�.
	 */
	public static String toHalfChar(String src) 
	{
		// �Էµ� ��Ʈ���� null �̸� null �� ����
		if (src == null)  return null;

		StringBuffer strBuf = new StringBuffer();
		char c = 0;

		for (int i = 0; i < src.length(); i++) 
		{
			c = src.charAt(i);

			//�����̰ų� Ư�� ���� �ϰ��.
			if (c >= 0xff01 && c <= 0xff5e) 
			{
				c -= 0xfee0;
			} 
			else if (c == 0x3000) 
			{
				c = 0x20;
			}

			// ���ڿ� ���ۿ� ��ȯ�� ���ڸ� �״´�
			strBuf.append(c);
		}
		return strBuf.toString();
	}	
	
	/**
     * �Է��� String value �� �ش���̿� �°� ���� ����� �°� ������ �ش�.
     * @param value     �Է°�
     * @param length    ����
     * @param padding   ���̺��� ª���� ü�� ����
     * @param aligntype ���� ��� 'R','L','C'
     * @return String   ���ĵ� ���ڿ�
     */
	public static String setMaskString(String v, int length, char padding, char aligntype) 
    {
    	return new String(setMaskString(v.getBytes(), length, (byte)padding, aligntype));
    }  
    
    /**
     * �Է��� byte[] value �� �ش���̿� �°� ���� ����� �°� ������ �ش�.
     * @param input     �Է°�
     * @param length    ����
     * @param padding   ���̺��� ª���� ü�� ����
     * @param aligntype ���� ��� 'R','L','C'
     * @return String   ���ĵ� ���ڿ�
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
    	//�߾� ����
    	if (aligntype == 'C')
    	{
    		int nCount = buffPadding.length / 2;
    		System.arraycopy(buffPadding, 0, buffResult, 0, nCount);
    		System.arraycopy(buffInput, 0, buffResult, nCount, buffInput.length);
    		System.arraycopy(buffPadding, 0,  buffResult, nCount + buffInput.length, buffPadding.length - nCount);
    	}
    	//���� ����
    	else if (aligntype == 'L')
    	{
    		
    		System.arraycopy(buffInput,   0, buffResult,                0, buffInput.length);
    		System.arraycopy(buffPadding, 0, buffResult, buffInput.length, buffPadding.length);
    	}
    	//���� ����
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
	 * ������ ����
	 * @param str 		��ü����
	 * @param delim 	������ ������
	 * @return String 	�����ڰ� ���ŵ� ����
	 */
	public static String delDelim(String str, String delim)
	{
		if(str==null || delim==null)
			return null;
		else
			return replace(str,delim,"");
	}
	
    /**
     * Ư���� ���ڸ� �������� ���� ���ڸ� ��ȯ�ϴ� ����� ����
     * @param str ���ڿ�
     * @param delim Ư������
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
     * Ư���� ���ڸ� �������� ������ ���ڸ� ��ȯ�ϴ� ����� ����
     * @param str ���ڿ�
     * @param delim Ư������
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
     * ���ڿ��� Ư�� ���̰� �Ѿ�� (...) ���� ġȯ
     * @param str ���ڿ�
     * @param cnt ���ѹ��ڱ���
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
     * ���ڿ��� Ư�� ���̰� �Ѿ�� (...) ���� ġȯ
     * @param str ���ڿ�
     * @param cnt ���ѹ��ڱ���
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
     * ���ڿ��� Ư�� ���̰� �Ѿ�� (...) ���� ġȯ
     * @param str ���ڿ�
     * @param cnt ���ѹ��ڱ���
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
     * ���ڿ��� Ư�����̰� �ɶ����� ���ʿ� �����ֱ�
     * @param str ���ڿ�
     * @param cnt �����ϰ���� ���ڱ���
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

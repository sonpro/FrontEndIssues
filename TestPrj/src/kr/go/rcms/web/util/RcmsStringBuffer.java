package kr.go.rcms.web.util;

/**
 * <pre>
 * StringBuffer클래스와 동일하게 사용
 * append(null) 을 빈문자로  
 * </pre>
 */
public class RcmsStringBuffer
{

    char value[];
    int count;

    public RcmsStringBuffer() {
    	value = new char[16];
    }    
    
    public RcmsStringBuffer(int capacity) {
    	value = new char[capacity];
    }

    public RcmsStringBuffer append(Object obj) {
    	return append(String.valueOf(obj));
    }	

	public RcmsStringBuffer append(String str) {
		if (str == null || str.equals("null")) str = ""; 
		    int len = str.length();
		if (len == 0) return this;
		int newCount = count + len;
		if (newCount > value.length)
		    expandCapacity(newCount);
		str.getChars(0, len, value, count);
		count = newCount;
		return this;
	}
	
	public RcmsStringBuffer append(StringBuffer sb) {
		if (sb == null)
		        return append("");
		int len = sb.length();
		int newCount = count + len;
		if (newCount > value.length)
		    expandCapacity(newCount);
		sb.getChars(0, len, value, count);
		count = newCount;
		return this;
	}
	
	public RcmsStringBuffer append(char c) {
	    int newCount = count + 1;
		if (newCount > value.length)
		    expandCapacity(newCount);
		value[count++] = c;
		return this;
	}
	
    public RcmsStringBuffer append(CharSequence s) {
        if (s == null)
            s = "null";
        if (s instanceof String)
            return this.append((String)s);
        if (s instanceof StringBuffer)
            return this.append((StringBuffer)s);
        return this.append(s, 0, s.length());
    }
    
    public RcmsStringBuffer append(CharSequence s, int start, int end) {
		if (s == null)
		    s = "null";
		if ((start < 0) || (end < 0) || (start > end) || (end > s.length()))
		    throw new IndexOutOfBoundsException(
		            "start " + start + ", end " + end + ", s.length() " 
		            + s.length());
		int len = end - start;
		if (len == 0)
		        return this;
		int newCount = count + len;
		if (newCount > value.length)
		    expandCapacity(newCount);
		    for (int i=start; i<end; i++)
		        value[count++] = s.charAt(i);
		    count = newCount;
		return this;
    }        
    
    @Override
	public String toString() {
    	return new String(value, 0, count);
    }    
    
    public int length() {
    	return count;
    }

    void expandCapacity(int minimumCapacity) {
		int newCapacity = (value.length + 1) * 2;
		if (newCapacity < 0) {
			newCapacity = Integer.MAX_VALUE;
		} else if (minimumCapacity > newCapacity) {
		    newCapacity = minimumCapacity;
		}	
		char newValue[] = new char[newCapacity];
		System.arraycopy(value, 0, newValue, 0, count);
		value = newValue;
   } 
    
    public RcmsStringBuffer delete(int start, int end) {
    	if (start < 0)
    	    throw new StringIndexOutOfBoundsException(start);
    	if (end > count)
    	    end = count;
    	if (start > end)
    	    throw new StringIndexOutOfBoundsException();
            int len = end - start;
            
        if (len > 0) {
        	System.arraycopy(value, start+len, value, start, count-end);
        	count -= len;
        }
        return this;
    }    
    
    public RcmsStringBuffer deleteCharAt(int index) {
        if ((index < 0) || (index >= count))
	    throw new StringIndexOutOfBoundsException(index);
        System.arraycopy(value, index+1, value, index, count-index-1);
        count--;
        return this;
    }    
}

package kr.go.rcms.pt.impl;

import jex.data.IJexDataChecker;
import jex.data.JexData;
import jex.data.JexDataList;
import jex.log.JexLogFactory;
import jex.log.JexLogger;
import jex.util.JexDomainUtil;
import kr.go.rcms.pt.impl.RCMS_COMMON;

/**
 * <pre>
 * ����� RCMS���߱��� ������Ʈ
 * @COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 * @File Name    : RCMSPTDataChecker.java
 * @Package Name : kr.go.rcms.pt.impl
 * @author       : ��ȫ��
 * @Description  : 
 * @History      : 2012. 3. 26., ��ȫ��, �����ۼ�
 *                 2012. 7. 16., �����, JexFrame ���� �̵�
 * </pre>
 **/
public class RCMSPTDataChecker implements IJexDataChecker
{

	private static final JexLogger LOG = JexLogFactory.getLogger(RCMSPTDataChecker.class);
	
	/**
	 * 
	 */
	public RCMSPTDataChecker()
	{
	}
	
	/* (non-Javadoc)
	 * @see com.webcash.itms.data.JexDataChecker#getErrorCode(com.webcash.itms.data.JexData)
	 */
	@Override
	public String getErrorCode(JexData data) {
		
		if (data == null ) return "";
		
		//���� �����ڵ����� Ȯ�� 
		if (JexDomainUtil.hasField(data, "RCMS_COMMON", false)) {
			
			RCMS_COMMON common = (RCMS_COMMON)JexDomainUtil.getValue(data, "RCMS_COMMON");
			if(common != null) {
				return common.getRspsCd();
			}
			
		}
		return "";		
	}
	
	/* (non-Javadoc)
	 * @see com.webcash.itms.data.JexDataChecker#getErrorCode(com.webcash.itms.data.JexDataList)
	 */
	@Override
	public String getErrorCode(JexDataList data)
	{
		return null;
	}
	
	/* (non-Javadoc)
	 * @see com.webcash.itms.data.JexDataChecker#getErrorMessage(com.webcash.itms.data.JexData)
	 */
	@Override
	public String getErrorMessage(JexData data)
	{
		if (LOG.isDebug()) {
			LOG.debug("getErrorMessage(JexData data)");
		}
		
		if (data == null ) return "";
		
		//���� �����ڵ����� Ȯ�� 
		if (JexDomainUtil.hasField(data, "RCMS_COMMON", false)) {
			
			RCMS_COMMON common = (RCMS_COMMON)JexDomainUtil.getValue(data, "RCMS_COMMON");
			if(common != null) {
				return common.getRspsCd();
			}
			
		}
		return "";		
	}
	
	/* (non-Javadoc)
	 * @see com.webcash.itms.data.JexDataChecker#getErrorMessage(com.webcash.itms.data.JexDataList)
	 */
	@Override
	public String getErrorMessage(JexDataList data)
	{
		return null;
	}
	
	/* (non-Javadoc)
	 * @see com.webcash.itms.data.JexDataChecker#isError(com.webcash.itms.data.JexData)
	 */
	@Override
	public boolean isError(JexData data)
	{
		//���� �����ڵ����� Ȯ�� 
		return !"000000000".equals(getErrorCode(data));
	}
	
	/* (non-Javadoc)
	 * @see com.webcash.itms.data.JexDataChecker#isError(com.webcash.itms.data.JexDataList)
	 */
	@Override
	public boolean isError(JexDataList data)
	{
		//���� �����ڵ����� Ȯ�� 
		return !"000000000".equals(getErrorCode(data));
	}
	
}

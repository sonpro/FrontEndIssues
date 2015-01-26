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
 * 지경부 RCMS개발구축 프로젝트
 * @COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 * @File Name    : RCMSPTDataChecker.java
 * @Package Name : kr.go.rcms.pt.impl
 * @author       : 김홍구
 * @Description  : 
 * @History      : 2012. 3. 26., 김홍구, 최초작성
 *                 2012. 7. 16., 이재원, JexFrame 최초 이동
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
		
		//정상 오류코드인지 확인 
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
		
		//정상 오류코드인지 확인 
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
		//정상 오류코드인지 확인 
		return !"000000000".equals(getErrorCode(data));
	}
	
	/* (non-Javadoc)
	 * @see com.webcash.itms.data.JexDataChecker#isError(com.webcash.itms.data.JexDataList)
	 */
	@Override
	public boolean isError(JexDataList data)
	{
		//정상 오류코드인지 확인 
		return !"000000000".equals(getErrorCode(data));
	}
	
}

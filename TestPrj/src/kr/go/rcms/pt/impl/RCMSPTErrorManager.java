package kr.go.rcms.pt.impl;

import java.util.Map;

import jex.data.JexData;
import jex.exception.IJexExceptionInfo;
import jex.exception.JexException;
import jex.log.JexLogFactory;
import jex.log.JexLogger;
import jex.sys.JexDefaultErrorManager;
import jex.sys.JexSystem;
import jex.sys.excepiton.JexExceptionManager;
import jex.util.JexDomainUtil;
import jex.util.StringUtil;
import kr.go.rcms.pt.impl.RCMS_COMMON;

/**
 * <pre>
 * 지경부 RCMS개발구축 프로젝트
 * @COPYRIGHT (c) 2009-2012 WebCash, Inc. All Right Reserved.
 *
 * @File Name    : RCMSPTErrorManager.java
 * @Package Name : kr.go.rcms.pt.impl
 * @author       : 김홍구
 * @Description  : 
 * @History      : 2012. 3. 2., 김홍구, 최초작성
 *                 2012. 7.16., 이재원, JexFrame 최초 이동
 * </pre>
 **/
public class RCMSPTErrorManager extends JexDefaultErrorManager
{
	private static final JexLogger LOG = JexLogFactory.getLogger(RCMSPTErrorManager.class);
	private static final String DEFAULT_ERROR= "EBT00001";
	
	/* (non-Javadoc)
	 * @see com.webcash.Jex.sys.JexErrorManager#makeErrorResult(com.webcash.Jex.data.JexData, java.lang.Throwable)
	 */
	@Override
	public JexData makeErrorResultImpl(JexData request, Throwable t)
	{
		JexData result = JexSystem.createJexData(request.get_ReverseClass().getName());
		
		RCMS_COMMON common = null;
		if (JexDomainUtil.hasField(request, "RCMS_COMMON", false))
		{
			common = (RCMS_COMMON)JexDomainUtil.getValue(request, "RCMS_COMMON");
		}
		else
		{
			common = new RCMS_COMMON();
		}
		Throwable e = getOriginalException(t);
		if (e == null)
		{
			common.setRspsCd(DEFAULT_ERROR);
		}
		else if (e instanceof IJexExceptionInfo)
		{
			
			IJexExceptionInfo ie = (IJexExceptionInfo)e;
			if (StringUtil.isBlank(ie.getCode()))
			{
				common.setRspsCd(DEFAULT_ERROR);
			}
			else
			{
				common.setRspsCd(ie.getCode());
			}
		}
		else
		{
			common.setRspsCd(DEFAULT_ERROR);
		}
		if (JexDomainUtil.hasField(result, "RCMS_COMMON", true))
		{
			JexDomainUtil.setValue(result, "RCMS_COMMON", common);
		}
		
		return result;
	}


	/* (non-Javadoc)
     * @see com.webcash.Jex.sys.JexErrorManager#makeBCSErrorResultImpl(com.webcash.Jex.data.JexData, java.lang.Throwable)
     */
    @Override
    public JexData makeBCSErrorResultImpl(JexData request, Throwable e)
    {
    	JexData result = JexSystem.createJexData(request.get_ReverseClass().getName());
    	if (e instanceof IJexExceptionInfo)
    	{
    		IJexExceptionInfo ie = (IJexExceptionInfo)e;
    		JexDomainUtil.setErrorData(result, StringUtil.null2void(ie.getCode()), StringUtil.null2void(ie.getMessage()), e);
    	}
    	else
    	{
    		JexException ie = JexExceptionManager.toJexException(e);
    		JexDomainUtil.setErrorData(result, StringUtil.null2void(ie.getCode()), StringUtil.null2void(ie.getMessage()), e);
    		
    	}
	    return result;
    }

	/* (non-Javadoc)
     * @see com.webcash.Jex.sys.JexErrorManager#makeCCSErrorResultImpl(com.webcash.Jex.data.JexData, java.lang.Throwable)
     */
    @Override
    public JexData makeCCSErrorResultImpl(JexData request, Throwable e)
    {
    	JexData result = JexSystem.createJexData(request.get_ReverseClass().getName());
    	if (e instanceof IJexExceptionInfo)
    	{
    		IJexExceptionInfo ie = (IJexExceptionInfo)e;
    		JexDomainUtil.setErrorData(result, StringUtil.null2void(ie.getCode()), StringUtil.null2void(ie.getMessage()), e);
    	}
    	else
    	{
    		JexException ie = JexExceptionManager.toJexException(e);
    		JexDomainUtil.setErrorData(result, StringUtil.null2void(ie.getCode()), StringUtil.null2void(ie.getMessage()), e);
    		
    	}
	    return result;
    }


	@Override
	public Map<String, Object> makeErrorResultImpl(Map<String, Object> arg0, Throwable arg1) 
	{
		return null;
	}

	
}
